# ============================================================================
# simulate.do
# Questa/ModelSim compilation and simulation script for FPGA-EKG project.
#
# Run this from the project root directory inside ModelSim/QuestaSim:
#   do scripts/simulate.do
# ============================================================================

# Create work library if it does not exist, or refresh it
if {[file exists work]} {
    vdel -lib work -all
}
vlib work
vmap work work

# Compile source files
echo "Compiling design sources..."
vcom -work work src/sample_clock.vhd
vcom -work work src/adc_spi_driver.vhd
vcom -work work src/jtag_streamer.vhd
vcom -work work src/dc_block.vhd
vcom -work work src/notch_5060.vhd
vcom -work work src/bandpass_fir.vhd
vcom -work work src/qrs_detect.vhd
vcom -work work src/beat_segmenter.vhd
vcom -work work src/nn_accel.vhd
vcom -work work src/result_fifo.vhd
vcom -work work src/view_sig.vhd
vcom -work work src/fpga_ekg_top.vhd

# Compile testbenches
echo "Compiling testbenches..."
vcom -work work tb/tb_adc_spi_driver.vhd
vcom -work work tb/tb_fpga_ekg_top.vhd

echo "===================================================================="
echo " Compilation Successful!"
echo "===================================================================="
echo " To run the ADC SPI Driver testbench (GUI mode):"
echo "   vsim work.tb_adc_spi_driver"
echo "   add wave -r /*"
echo "   run -all"
echo ""
echo " To run the Top-Level testbench (GUI mode):"
echo "   vsim work.tb_fpga_ekg_top"
echo "   add wave -r /*"
echo "   run -all"
echo "===================================================================="
