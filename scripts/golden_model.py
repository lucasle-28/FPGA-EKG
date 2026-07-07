#!/usr/bin/env python3
"""
golden_model.py — Python reference for the FPGA-EKG DSP chain.

Evaluates the frequency response of the EXACT quantized coefficients used in
the VHDL (notch_5060.vhd, dc_block.vhd, bandpass_fir.vhd) and prints gains at
the frequencies asserted by the testbenches. Use this to sanity-check
testbench thresholds and to regenerate coefficients if the design changes.

Only numpy is required:
    python scripts/golden_model.py
"""

import numpy as np

FS = 360.0  # Hz

# =============================================================================
# Quantized coefficients — MUST match the VHDL sources
# =============================================================================

# notch_5060.vhd — Q2.14 (divide by 2**14)
NOTCH_60 = dict(b=[16103, -16103, 16103], a=[16384, -16103, 15822])
NOTCH_50 = dict(b=[16149, -20761, 16149], a=[16384, -20761, 15914])
Q14 = float(1 << 14)

# dc_block.vhd — alpha in Q15:  y[n] = x[n] - x[n-1] + alpha*y[n-1]
ALPHA = 32604 / 32768.0

# bandpass_fir.vhd — Q1.15, symmetric 33 taps (first half + center listed)
FIR_HALF = [-200, -214, -255, -305, -335, -313, -209, 0, 325, 762,
            1288, 1866, 2447, 2976, 3400, 3673, 3768]
FIR = np.array(FIR_HALF + FIR_HALF[-2::-1], dtype=float) / (1 << 15)
assert len(FIR) == 33


def gain(b, a, f_hz):
    """|H(e^jw)| for polynomial coefficients b, a at frequency f_hz."""
    w = 2 * np.pi * f_hz / FS
    z = np.exp(-1j * w)
    num = sum(bk * z**k for k, bk in enumerate(b))
    den = sum(ak * z**k for k, ak in enumerate(a))
    return abs(num / den)


def db(x):
    return 20 * np.log10(max(x, 1e-12))


def main():
    print(f"FPGA-EKG golden model (fs = {FS:.0f} Hz)\n")

    # -------------------------------------------------------------------------
    print("notch_5060 (Q2.14 quantized):")
    for name, c, freqs in [("60 Hz mode", NOTCH_60, [0, 10, 55, 60, 65]),
                           ("50 Hz mode", NOTCH_50, [0, 10, 45, 50, 55])]:
        b = [x / Q14 for x in c["b"]]
        a = [x / Q14 for x in c["a"]]
        gains = ", ".join(f"{f:g} Hz: {db(gain(b, a, f)):+6.1f} dB"
                          for f in freqs)
        print(f"  {name}:  {gains}")
    print("  TB expects: DC gain 1.0 (exact), tone at notch freq < -20 dB,")
    print("              10 Hz within [0.85, 1.10].\n")

    # -------------------------------------------------------------------------
    print("dc_block (alpha = 32604/32768 = {:.6f}):".format(ALPHA))
    b, a = [1.0, -1.0], [1.0, -ALPHA]
    fc = FS * (1 - ALPHA) / (2 * np.pi)
    for f in [0.1, 0.3, 0.5, 1, 5, 20]:
        print(f"  {f:5g} Hz: {db(gain(b, a, f)):+6.1f} dB")
    print(f"  -3 dB cutoff ~ {fc:.2f} Hz")
    print("  TB expects: step decays to < 2% in 1500 samples, "
          "20 Hz within [0.90, 1.10].\n")

    # -------------------------------------------------------------------------
    print("bandpass_fir (33-tap Q1.15 quantized):")
    for f in [0, 2, 5, 10, 15, 25, 40, 60]:
        w = 2 * np.pi * f / FS
        h = abs(np.sum(FIR * np.exp(-1j * w * np.arange(33))))
        print(f"  {f:5g} Hz: {db(h):+6.1f} dB")
    dc = np.sum(FIR)
    print(f"  DC gain = {dc:.3f}  <-- NOTE: not ~0!")
    print("  A 33-tap Hamming FIR at fs=360 has ~18 Hz transition width, so")
    print("  the 5 Hz high-pass edge cannot be realized. Acceptable in-system")
    print("  (dc_block precedes it), but the filter is effectively a ~15-20 Hz")
    print("  low-pass. Use >= 128 taps if true 5 Hz rejection is ever needed.")
    print("  TB expects: 10 Hz within [0.70, 1.20], 60 Hz < 0.20, DC info-only.")

    # -------------------------------------------------------------------------
    # Optional: compare against a fresh scipy design
    try:
        from scipy import signal as sps
        print("\nscipy cross-check:")
        b60, a60 = sps.iirnotch(60, 30, fs=FS)
        print("  iirnotch(60, Q=30) b*2^14 =",
              np.round(b60 / a60[0] * Q14).astype(int).tolist())
        h = sps.firwin(33, [5, 15], pass_zero=False, fs=FS)
        print("  firwin(33,[5,15])  h*2^15 (first 5) =",
              np.round(h[:5] * (1 << 15)).astype(int).tolist())
    except ImportError:
        print("\n(scipy not installed - skipping design cross-check)")


if __name__ == "__main__":
    main()
