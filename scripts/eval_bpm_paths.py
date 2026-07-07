#!/usr/bin/env python3
"""
eval_bpm_paths.py — Empirically evaluate BPM fix options (scratch evaluation).

Simulates the FPGA filter chain with the EXACT quantized coefficients from
golden_model.py, then runs BPMCalculator on:

  A) Current hardware stream: notch -> dc_block           (what bpm.py sees now)
  B) Rerouted hardware:       notch -> dc_block -> 33-tap FIR bandpass
  C) Current stream + software moving-average pre-filter in Python

Noise model includes EMG bursts and motion artifacts — the stuff that makes
the live reading run high but is absent from test_bpm.py's gentler noise.
"""

import numpy as np
from bpm import BPMCalculator

FS = 360
ADC_MID = 2048

# Quantized coefficients (must match golden_model.py / VHDL)
Q14 = float(1 << 14)
NOTCH_60_B = np.array([16103, -16103, 16103]) / Q14
NOTCH_60_A = np.array([16384, -16103, 15822]) / Q14
ALPHA = 32604 / 32768.0
FIR_HALF = [-200, -214, -255, -305, -335, -313, -209, 0, 325, 762,
            1288, 1866, 2447, 2976, 3400, 3673, 3768]
FIR = np.array(FIR_HALF + FIR_HALF[-2::-1], dtype=float) / (1 << 15)


def iir2(x, b, a):
    """Direct-form II transposed biquad, float."""
    y = np.zeros_like(x)
    w1 = w2 = 0.0
    b0, b1, b2 = b / a[0]
    a1, a2 = a[1] / a[0], a[2] / a[0]
    for i, xi in enumerate(x):
        yi = b0 * xi + w1
        w1 = b1 * xi - a1 * yi + w2
        w2 = b2 * xi - a2 * yi
        y[i] = yi
    return y


def dc_block(x):
    y = np.zeros_like(x)
    prev_x = prev_y = 0.0
    for i, xi in enumerate(x):
        y[i] = xi - prev_x + ALPHA * prev_y
        prev_x, prev_y = xi, y[i]
    return y


def synth_ecg_nasty(bpm, seconds, seed=0):
    """ECG with EMG bursts + motion artifacts (harsher than test_bpm.py)."""
    rng = np.random.default_rng(seed)
    n = int(FS * seconds)
    t = np.arange(n) / FS
    sig = np.zeros(n)

    rr = 60.0 / bpm
    beat_times = np.arange(rr * 0.5, seconds, rr)
    for bt in beat_times:
        sig += 900.0 * np.exp(-((t - bt) **