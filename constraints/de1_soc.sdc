# ============================================================================
# de1_soc.sdc — Timing constraints for the FPGA-EKG project
# Target: Terasic DE1-SoC (Cyclone V 5CSEMA5F31C6N)
# ============================================================================

# ----------------------------------------------------------------------------
# 50 MHz main clock (active oscillator Y1 on DE1-SoC)
# Pin: PIN_AF14
# Period: 20.000 ns
# ----------------------------------------------------------------------------
create_clock -name CLOCK_50 -period 20.000 [get_ports {CLOCK_50}]

# ----------------------------------------------------------------------------
# Derive PLL clocks automatically (if PLLs are added later)
# ----------------------------------------------------------------------------
derive_pll_clocks

# ----------------------------------------------------------------------------
# Derive clock uncertainty (jitter) for all clocks
# ----------------------------------------------------------------------------
derive_clock_uncertainty

# ----------------------------------------------------------------------------
# ADC SPI interface — constrain as slow I/O
# The LTC2308 supports up to 40 MHz SCLK, but we will run it much slower.
# Treat ADC signals as asynchronous to the main clock for now.
# ----------------------------------------------------------------------------
set_false_path -from [get_ports {ADC_DOUT}]
set_false_path -to   [get_ports {ADC_CS_N ADC_DIN ADC_SCLK}]

# ----------------------------------------------------------------------------
# Asynchronous inputs — buttons, switches, GPIO (AD8232 leads-off)
# These are metastability sources; synchronize in RTL, false-path in timing.
# ----------------------------------------------------------------------------
set_false_path -from [get_ports {KEY[*] SW[*]}]
set_false_path -from [get_ports {GPIO_0[*]}]
