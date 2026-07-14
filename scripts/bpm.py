#!/usr/bin/env python3
"""
bpm.py — Pan-Tompkins-style heart-rate detector for the FPGA-EKG visualizer.

Kept in its own module (numpy-only, no Qt) so the detection logic can be unit
tested without a display. See test_bpm.py.
"""

import collections
import numpy as np

# 12-bit ADC mid-scale. Incoming samples are unsigned and centred here; the
# FIR front-end works on the zero-centred signal, matching the FPGA which
# subtracts 2048 before filtering (see fpga_ekg_top.vhd, p_adc_to_q15).
ADC_MID = 2048.0

# 8-22 Hz bandpass FIR — the SAME 65-tap Q1.15 filter the FPGA computes in
# bandpass_fir.vhd (coefficients from scripts/golden_model.py). Running it here
# keeps the software detector and the on-chip QRS front-end in agreement and,
# critically, band-limits the signal *before* the derivative stage below.
#
# This replaces the previous 33-tap "5-15 Hz" design, which — at fs=360 Hz —
# could not realise its high-pass edge and was effectively a ~0-18 Hz low-pass
# with DC gain ~1.0. That let baseline wander and (worse) the T-wave through at
# nearly full gain while *attenuating* the QRS core, which biases QRS detection.
# 65 taps give a real 8-22 Hz passband: DC/T-wave (3 Hz) drop to ~0.11, the QRS
# core (12-20 Hz) passes at ~1.0, and 50/60 Hz mains sit at ~0. The longer delay
# line costs a few more MAC cycles but is trivial at 50 MHz / 360 Hz.
_FIR_HALF = [   19,     9,     0,    -8,   -13,   -12,    -4,    14,    42,    76,
               110,   132,   131,    90,     0,  -147,  -350,  -595,  -862, -1118,
             -1326, -1447, -1446, -1301, -1002,  -558,     0,   627,  1265,  1850,
              2320,  2624,  2729]
BANDPASS_FIR = np.array(_FIR_HALF + _FIR_HALF[-2::-1], dtype=float) / (1 << 15)


class BPMCalculator:
    """Pan-Tompkins-style QRS detector for robust heart-rate estimation.

    Per-sample pipeline:
        5-15 Hz bandpass -> derivative -> square -> moving-window integration
        -> adaptive dual-threshold peak detection (refractory-limited)

    The bandpass front-end matters: the 5-point derivative has gain that rises
    with frequency, so without it high-frequency EMG / muscle-noise bursts get
    amplified into spurious peaks and the reported BPM runs high. The clean
    synthetic self-test does not expose this (its noise is stationary and
    modest); real AD8232 data does. See test_bpm.py for the EMG-burst case.

    RR intervals are median-filtered, so a single missed or doubled beat no
    longer halves/doubles the displayed BPM.
    """

    def __init__(self, sample_rate=360):
        self.fs = sample_rate

        # Moving-window integrator width: ~150 ms spans one QRS complex.
        self.win = max(1, int(0.150 * sample_rate))
        # Refractory period: 250 ms -> caps detection at 240 BPM.
        self.refractory = int(0.250 * sample_rate)
        # Ignore the FIR fill + settling time before bootstrapping thresholds,
        # so the filter's startup transient cannot poison the estimate.
        self.warmup = len(BANDPASS_FIR) + int(0.30 * sample_rate)

        # Bandpass FIR delay line.
        self.fir_buf = collections.deque([0.0] * len(BANDPASS_FIR),
                                         maxlen=len(BANDPASS_FIR))

        # Derivative history (causal 5-point difference).
        self.deriv_hist = collections.deque([0.0] * 5, maxlen=5)

        # Moving-window integration buffer + running sum.
        self.integ_buf = collections.deque([0.0] * self.win, maxlen=self.win)
        self.integ_sum = 0.0

        # Local-peak tracking on the integrated waveform.
        self.prev_mwi = 0.0
        self.rising = False

        # Adaptive thresholds (Pan-Tompkins SPKI / NPKI running estimates).
        self.spki = 0.0          # signal (QRS) peak estimate
        self.npki = 0.0          # noise peak estimate
        self.threshold = 0.0
        self.initialized = False
        self.boot_mwi = []       # MWI samples gathered during bootstrap
        self.samples_seen = 0

        # RR interval history and output.
        self.since_last_peak = self.refractory
        self.first_beat_done = False   # first beat only anchors timing, no RR
        self.rr_intervals = collections.deque(maxlen=8)
        self.bpm = 0.0
        self.beat_detected = False   # True for one process() call after a beat

        # Signal-quality gate. On a clean trace the beat-to-beat RR interval is
        # regular (coefficient of variation ~0.05); on a poorly-contacted lead
        # the detector fires on impulse/T-wave artefacts and RR becomes wildly
        # irregular (~0.4+). When that happens the BPM is not trustworthy, so we
        # raise `noisy` and the UI shows "--" instead of a confidently-wrong
        # number. This does NOT alter detection — it only labels reliability.
        self.noisy = False
        self.RR_CV_LIMIT = 0.20

    def _mwi(self, x: float) -> float:
        """Push one raw sample; return its moving-window-integrated value."""
        # 5-15 Hz bandpass on the zero-centred sample (rejects EMG / drift).
        self.fir_buf.append(float(x) - ADC_MID)
        y = float(np.dot(BANDPASS_FIR, self.fir_buf))
        self.deriv_hist.append(y)
        h = self.deriv_hist
        # Causal 5-point derivative (Pan-Tompkins), emphasises QRS slope.
        d = (2.0 * h[4] + h[3] - h[1] - 2.0 * h[0]) / 8.0
        sq = d * d
        # Slide the integration window: add newest, drop oldest.
        self.integ_sum += sq - self.integ_buf[0]
        self.integ_buf.append(sq)
        return self.integ_sum / self.win

    def _register_beat(self, rr: int):
        """Record an RR interval and update BPM from the median."""
        rr_bpm = 60.0 * self.fs / rr
        if rr_bpm < 25.0 or rr_bpm > 240.0:
            return  # physiologically impossible, ignore
        self.rr_intervals.append(rr)
        if len(self.rr_intervals) >= 3:
            median_rr = float(np.median(self.rr_intervals))
            self.bpm = 60.0 * self.fs / median_rr
        # Flag an unreliable (noisy / poorly-contacted) signal from RR spread.
        if len(self.rr_intervals) >= 4:
            rr_arr = np.asarray(self.rr_intervals, dtype=float)
            self.noisy = (rr_arr.std() / rr_arr.mean()) > self.RR_CV_LIMIT

    def process(self, samples: list):
        """Feed new samples and return the current BPM estimate."""
        self.beat_detected = False

        for s in samples:
            self.samples_seen += 1
            self.since_last_peak += 1
            mwi = self._mwi(s)

            # Drop BPM if the signal has gone quiet (e.g. leads off).
            if self.since_last_peak > 3 * self.fs:
                self.bpm = 0.0
                self.rr_intervals.clear()
                self.first_beat_done = False   # re-anchor on the next beat
                self.noisy = False

            # Bootstrap the thresholds from the first ~2 s of data. Skip the
            # FIR warm-up, and seed from the 95th percentile rather than the
            # raw max so a lone startup/motion transient cannot inflate the
            # threshold and blind the detector.
            if not self.initialized:
                if self.samples_seen > self.warmup:
                    self.boot_mwi.append(mwi)
                if self.samples_seen >= 2 * self.fs and len(self.boot_mwi) > 10:
                    ref = float(np.percentile(self.boot_mwi, 95))
                    self.spki = 0.5 * ref
                    self.npki = 0.125 * ref
                    self.threshold = self.npki + 0.25 * (self.spki - self.npki)
                    self.initialized = True
                    self.boot_mwi = []
                self.prev_mwi = mwi
                continue

            # Detect a local maximum on the integrated waveform.
            if mwi > self.prev_mwi:
                self.rising = True
            elif self.rising and mwi < self.prev_mwi:
                peak = self.prev_mwi  # prev sample was the local peak
                if peak > self.threshold and \
                        self.since_last_peak > self.refractory:
                    # Confirmed QRS: adapt signal estimate, log the beat.
                    self.spki = 0.125 * peak + 0.875 * self.spki
                    # The first beat only anchors timing; the interval since
                    # the bootstrap phase is meaningless, so don't record it.
                    if self.first_beat_done:
                        self._register_beat(self.since_last_peak)
                    else:
                        self.first_beat_done = True
                    self.since_last_peak = 0
                    self.beat_detected = True
                else:
                    # Below threshold or within refractory -> treat as noise.
                    self.npki = 0.125 * peak + 0.875 * self.npki
                self.threshold = self.npki + 0.25 * (self.spki - self.npki)
                self.rising = False

            self.prev_mwi = mwi

        return self.bpm
