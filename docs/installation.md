# Installation & Setup

## Hardware Requirements

| Component | Details |
|---|---|
| **FPGA Board** | Terasic DE1-SoC (Rev F) — Cyclone V `5CSEMA5F31C6` |
| **Heart Rate Sensor** | SparkFun AD8232 Single-Lead Heart Rate Monitor Breakout |
| **Electrodes** | 3-lead electrode pad set (RA, LA, RL) |
| **USB Cable** | USB-Blaster connection (included with DE1-SoC) for JTAG programming and data streaming |

### Board Compatibility
This project is designed and tested for the **Terasic DE1-SoC (Rev F)** board. It relies on:
- The onboard **LTC2308** 12-bit SAR ADC (directly accessible via SPI on Rev F boards).
- The **GPIO_0** 40-pin expansion header for AD8232 leads-off detection.
- The **USB-Blaster** JTAG interface for both programming and real-time data streaming to the PC.

> **Warning:** Earlier DE1-SoC revisions (Rev C/D) may use different ADC pin assignments. Verify your board's schematic before programming. The pin assignments in `quartus/quartus.qsf` are specific to Rev F.

## Wiring: AD8232 to DE1-SoC

The AD8232 breakout board connects to the DE1-SoC via the onboard ADC input header and the GPIO_0 expansion header.

### Analog Signal (ADC Input)
The AD8232 **OUTPUT** pin carries the amplified analog EKG signal. Connect it to **ADC Channel 0** on the DE1-SoC ADC input header (active by default in the VHDL design).

| AD8232 Pin | DE1-SoC Connection | Notes |
|---|---|---|
| **OUTPUT** | ADC CH0 input header | Analog EKG signal → LTC2308 Channel 0 |
| **3.3V** | 3.3V supply on GPIO_0 header | Power supply |
| **GND** | GND on GPIO_0 header | Common ground |

### Digital Signals (Leads-Off Detection via GPIO_0)
The AD8232 provides two digital leads-off detection outputs. These are active-high: `1` means the corresponding electrode is disconnected.

| AD8232 Pin | FPGA Signal | GPIO_0 Pin | Quartus Pin | Purpose |
|---|---|---|---|---|
| **LO+** | `GPIO_0[0]` | JP1 Pin 1 | `PIN_AC18` | Leads-off detection (+) |
| **LO-** | `GPIO_0[1]` | JP1 Pin 2 | `PIN_Y17` | Leads-off detection (−) |
| — | `GPIO_0[2]` | JP1 Pin 3 | `PIN_AD17` | 3.3V Power / Output |

> All GPIO pins operate at **3.3V LVTTL** — this is compatible with the AD8232's logic levels.

### Onboard ADC (LTC2308 SPI) Pin Assignments
These are directly wired on the DE1-SoC board and do not need external connections. They are documented here for reference.

| FPGA Signal | Quartus Pin | Direction | Purpose |
|---|---|---|---|
| `ADC_CONVST` | `PIN_AJ4` | Output | Conversion start pulse |
| `ADC_DIN` | `PIN_AK4` | Output | SPI config data to ADC |
| `ADC_DOUT` | `PIN_AK3` | Input | SPI result data from ADC (12-bit) |
| `ADC_SCLK` | `PIN_AK2` | Output | SPI clock (≤40 MHz) |

### LED Indicators

| LED | Function |
|---|---|
| `LEDR[0]` | Heartbeat — blinks at 1 Hz to confirm the clock and design are running |
| `LEDR[1]` | ADC busy — lit while a conversion is in progress |
| `LEDR[8]` | Sample valid — brief flash on each new ADC sample |
| `LEDR[9]` | Leads-off warning — lit if either electrode is disconnected |

### 7-Segment Displays (HEX0–HEX2)
The three rightmost displays show the live 12-bit ADC value as hex digits:
- **HEX2** = upper nibble `[11:8]`
- **HEX1** = middle nibble `[7:4]`
- **HEX0** = lower nibble `[3:0]`

HEX3–HEX5 are blanked.

## Software Requirements
- **Quartus Prime Lite 25.1** (or later) with **QuestaSim / ModelSim Intel FPGA Starter Edition**
- **Python 3.8+** with the packages listed in `scripts/requirements.txt`

## Python Dependencies
Install the Python packages needed for the real-time EKG visualizer:
```bash
pip install -r scripts/requirements.txt
```
