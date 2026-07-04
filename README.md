# FPGA-EKG

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Language: VHDL](https://img.shields.io/badge/Language-VHDL-orange.svg)]()
[![Language: Python](https://img.shields.io/badge/Language-Python-blue.svg)]()
[![Hardware: Cyclone V](https://img.shields.io/badge/Hardware-Cyclone_V-green.svg)]()

Using an FPGA to do DSP on electrodes to simulate an EKG's functions.

## Project Structure
- **[src/]** — VHDL source files (ADC driver, DSP filters, main EKG logic)
- **[tb/]** — VHDL testbenches for behavioral simulation
- **[scripts/]** — Python EKG Visualizer and QuestaSim setup scripts (`simulate.do`)
- **[quartus/]** — Quartus Prime project files (`.qpf`, `.qsf`)
- **[constraints/]** — FPGA pin assignments and timing constraints (`.sdc`)
- **[docs/]** — Engineering logs, design decisions, and weekly reports
- **[diagrams/]** — Architecture, data flow, and timing diagrams
- **[media/]** — Screenshots, GIFs, and board photos
- **[results/]** — Accuracy metrics, resource usage, latency, and plots

## Requirements

- **Terasic DE1-SoC Board** (Cyclone V)
- **AD8232** Heart Rate Monitor
- **Quartus Prime Lite** & **QuestaSim/ModelSim**
- **Python 3.8+**

Check the [installation notes](docs/installation.md) for more details on how to set up the hardware and software for the project.

## Usage

Here is a quick overview of how to run the EKG visualizer:
```bash
# Install dependencies
pip install -r scripts/requirements.txt

# Run the visualizer (ensure FPGA is programmed)
python scripts/ekg_visualizer.py
```

For more detailed instructions on synthesizing the FPGA and running VHDL simulations, check the [usage guide](docs/usage.md).

## Useful Resources
- [Weekly Progress Reports](docs/weekly-markdowns/)
- [Project Plan](docs/FPGA_EKG_Project_Plan.docx)
