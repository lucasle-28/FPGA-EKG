# Usage Guide

## 1. VHDL Simulation
We provide a macro script to easily compile and run testbenches in QuestaSim/ModelSim:
1. Open QuestaSim/ModelSim.
2. In the console, navigate to the project root: `cd <path_to_project>`
3. Run the setup script: `do scripts/simulate.do`
4. Follow the interactive console output to start the ADC driver or Top-level testbenches.

## 2. FPGA Synthesis & Programming
1. Open `quartus/quartus.qpf` in Quartus Prime.
2. Compile the design (`Processing -> Start Compilation`).
3. Open the Quartus Programmer.
   > **Note:** The DE1-SoC has both an HPS (ARM) and FPGA in the JTAG chain. Use "Auto Detect" to find the `SOCVHPS` device, then attach the `.sof` file exclusively to the FPGA device (`5CSEMA5F31`).
4. Flash the board.

## 3. EKG Visualizer (Python)
Once the FPGA is programmed and running, you can stream real-time EKG data over the USB-Blaster connection.
1. Ensure the FPGA is programmed and connected via USB-Blaster.
2. Run the visualizer:
   ```bash
   python scripts/ekg_visualizer.py
   ```
