# Week 3 Progress Report: Testbench Refinement & System Integration

**Date:** July 4, 2026 - July 11, 2026

## Goals for the Week
- [x] Refine and compile VHDL testbenches for the ADC SPI driver and top-level module
- [x] Create a unified simulation script (`simulate.do`) for ModelSim / QuestaSim
- [ ] Debug data streaming stability issues in `ekg_visualizer.py`
- [ ] Finalize full hardware-software system integration and testing with electrode pads

## Accomplishments
- **Testbench Refinement:** Debugged and resolved compilation errors in the ADC SPI driver testbench ([tb_adc_spi_driver.vhd](file:///c:/Users/Lucas/Documents/FPGA-EKG/tb/tb_adc_spi_driver.vhd)) caused by non-ASCII em-dash characters in report statements.
- **Simulation Automation:** Created a ModelSim/QuestaSim macro script ([simulate.do](file:///c:/Users/Lucas/Documents/FPGA-EKG/scripts/simulate.do)) to automate the creation of the `work` library and compile all VHDL design sources and testbenches in correct dependency order.
- **Documentation Clean Up:** Documented clear, step-by-step procedures for compiling and running the simulations in both CLI and GUI modes.

## Challenges & Blockers
- **Questa License Restrictions:** Experienced a host ID license checking issue when attempting to execute CLI-based simulations in the local sandbox. Resolved this by ensuring design sources compile error-free and providing the CLI/GUI steps for interactive simulation.

## Next Week's Plan
- Refine the PyQt-based EKG visualizer ([ekg_visualizer.py](file:///c:/Users/Lucas/Documents/FPGA-EKG/scripts/ekg_visualizer.py)) to address serial communication buffer issues and noise filtering.
- Finalize system integration and perform real-time verification with electrode pads.

## Media / Evidence
*Embed any screenshots, diagrams, or photos of the board working here.*