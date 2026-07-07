#!/usr/bin/env python3
"""
test_bpm.py — Synthetic self-test for the BPMCalculator.

Generates a 12-bit ECG-like waveform (QRS + a deliberately tall T-wave +
mains noise + baseline wander) at known heart rates and checks the detector
recovers the rate within tolerance. The tall T-wave is exactly what made the
old level-threshold detector double-count.

Run:  python scripts/test_bpm.py     (needs only numpy)
"""

import numpy as np
from bpm import BPMCalculator

FS = 360
ADC_MID = 2048


def synth_ecg(bpm, seconds, noise=30.0, seed=0, emg=False, startup_spike=False):
    """Build a crude but realistic single-lead ECG at a fixed BPM.

    emg           -- inject periodic high-frequency muscle-noise bursts,
                     offset from the R-peaks. These are what the derivative
                     stage amplifies into false beats without a bandpass
                     front-end (the "BPM reads too high" failure on real
                     hardware).
    startup_spike -- add a large transient in the first second, mimicking a
                     motion artefact as the electrodes are attached. A
                     non-robust threshold bootstrap latches onto it and then
                     never detects the (much smaller) real beats.
    """
    rng = np.random.default_rng(seed)
    n = int(FS * seconds)
    t = np.arange(n) / FS
    sig = np.zeros(n)

    rr = 60.0 / bpm
    beat_times = np.arange(rr * 0.5, seconds, rr)
    for bt in beat_times:
        # QRS: sharp positive spike
        sig += 900.0 * np.exp(-((t - bt) ** 2) / (2 * 0.010 ** 2))
        # Q and S small deflections
        sig -= 150.0 * np.exp(-((t - bt + 0.025) ** 2) / (2 * 0.010 ** 2))
        sig -= 200.0 * np.exp(-((t - bt - 0.025) ** 2) / (2 * 0.012 ** 2))
        # Tall T-wave ~300 ms after R (the classic double-count trap)
        sig += 400.0 * np.exp(-((t - bt - 0.30) ** 2) / (2 * 0.040 ** 2))
        # P-wave
        sig += 120.0 * np.exp(-((t - bt + 0.18) ** 2) / (2 * 0.020 ** 2))

    sig += 60.0 * np.sin(2 * np.pi * 0.25 * t)          # baseline wander
    sig += 25.0 * np.sin(2 * np.pi * 60.0 * t)          # residual mains
    sig += rng.normal(0, noise, n)                       # broadband noise

    if emg:
        # ~0.4 s bursts of HF muscle noise every ~2.5 s, between the beats.
        for burst_t in np.arange(1.1, seconds, 2.5):
            i0 = int(burst_t * FS)
            i1 = min(n, i0 + int(0.4 * FS))
            hf = rng.normal(0, 120, i1 - i0)
            hf = np.diff(hf, prepend=hf[0]) * 3.0        # bias toward HF
            sig[i0:i1] += hf

    if startup_spike:
        i0 = int(0.4 * FS)
        i1 = i0 + int(0.15 * FS)
        sig[i0:i1] += 4000.0                             # big motion artefact

    samples = np.clip(sig + ADC_MID, 0, 4095).astype(int)
    return samples.tolist()


def run_case(bpm, seconds=20, tol=4.0, **kw):
    samples = synth_ecg(bpm, seconds, **kw)
    calc = BPMCalculator(FS)
    # Feed in ~16 ms chunks to mimic the live queue drain.
    chunk = FS // 60 or 1
    for i in range(0, len(samples), chunk):
        calc.process(samples[i:i + chunk])
    err = abs(calc.bpm - bpm)
    ok = err <= tol
    print(f"  target {bpm:3d} BPM -> measured {calc.bpm:6.1f}  "
          f"(err {err:4.1f})  {'PASS' if ok else 'FAIL'}")
    return ok


def main():
    print("BPMCalculator synthetic self-test\n")
    cases = [45, 60, 75, 100, 140]
    results = [run_case(b) for b in cases]

    print("\n  noisy 75 BPM (heavy noise):")
    results.append(run_case(75, noise=80.0, tol=6.0, seed=3))

    print("\n  EMG bursts (would over-count without the bandpass front-end):")
    results.append(run_case(60, emg=True, seed=1))
    results.append(run_case(75, emg=True, seed=2))

    print("\n  startup motion spike (would blind a max-based bootstrap):")
    results.append(run_case(72, startup_spike=True, seed=4))

    print()
    if all(results):
        print(f"ALL {len(results)} CASES PASSED")
        return 0
    print(f"{results.count(False)} / {len(results)} CASES FAILED")
    return 1


if __name__ == "__main__":
    raise SystemExit(main())
