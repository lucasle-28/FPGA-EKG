# Week 3 Progress Report: Testbench Refinement & System Integration

**Date:** July 4, 2026 - July 11, 2026

## Goals for the Week
- [x] Refine and compile VHDL testbenches for the ADC SPI driver and top-level module
- [x] Create a unified simulation script (`simulate.do`) for ModelSim / QuestaSim
- [x] Debug data streaming stability issues in `ekg_visualizer.py`
- [x] Finalize full hardware-software system integration and testing with electrode pads
- [x] Integrate and tune digital signal processing (DSP) filters in VHDL
- [x] Draft final project documentation and create a showcase website

## Accomplishments
- **FPGA DSP Pipeline:** Refined digital signal processing modules in VHDL, including the FIR bandpass filter ([bandpass_fir.vhd](file:///c:/Users/Lucas/Documents/FPGA-EKG/src/bandpass_fir.vhd)), 50/60Hz notch filter ([notch_5060.vhd](file:///c:/Users/Lucas/Documents/FPGA-EKG/src/notch_5060.vhd)), and DC blocking filter ([dc_block.vhd](file:///c:/Users/Lucas/Documents/FPGA-EKG/src/dc_block.vhd)).
- **Testbench Refinement:** Debugged and resolved compilation errors in the ADC SPI driver testbench ([tb_adc_spi_driver.vhd](file:///c:/Users/Lucas/Documents/FPGA-EKG/tb/tb_adc_spi_driver.vhd)) caused by non-ASCII em-dash characters in report statements.
- **Simulation Automation:** Created a ModelSim/QuestaSim macro script ([simulate.do](file:///c:/Users/Lucas/Documents/FPGA-EKG/scripts/simulate.do)) to automate the creation of the `work` library and compile all VHDL design sources and testbenches in correct dependency order.
- **Data Streaming & Visualizer:** Refined the PyQt-based EKG visualizer ([ekg_visualizer.py](file:///c:/Users/Lucas/Documents/FPGA-EKG/scripts/ekg_visualizer.py)), resolving data streaming stability issues and noise filtering. Iterated through visualizer v2 to achieve a fully working v3 interface.
- **System Integration:** Finalized full hardware-software system integration. Created an ECG Lead Placement Guide and configured FPGA pin assignments (PIN_3) for real-time verification with electrode pads.
- **Comprehensive Documentation:** Authored extensive documentation including the [final_report.md](file:///c:/Users/Lucas/Documents/FPGA-EKG/docs/final_report.md), [installation.md](file:///c:/Users/Lucas/Documents/FPGA-EKG/docs/installation.md), and [usage.md](file:///c:/Users/Lucas/Documents/FPGA-EKG/docs/usage.md).
- **Project Website:** Built the initial version of a project portfolio website ([index.html](file:///c:/Users/Lucas/Documents/FPGA-EKG/index.html)) to showcase the FPGA EKG system.

## Challenges & Blockers
- **Questa License Restrictions:** Experienced a host ID license checking issue when attempting to execute CLI-based simulations in the local sandbox. Resolved this by ensuring design sources compile error-free and providing the CLI/GUI steps for interactive simulation.
- **Visualizer Stability & Filtering:** Addressed noise filtering and serial buffer problems on the Python side, coupled with the FPGA DSP tuning, to achieve stable plotting.

## Next Week's Plan
- Record a full video demonstration of the working EKG system.
- Prepare project presentation and review overall system performance for final submission.
- Polish the project website and codebase for public release.

## Media / Evidence
![EKG Visualizer v3](file:///c:/Users/Lucas/Documents/FPGA-EKG/media/ekg-visualizer-v3.png)