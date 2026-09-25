# Traffic Light Controller FSM on PYNQ-Z2

Moore FSM traffic sequencer (RED → GREEN → YELLOW) with clock divider, testbench, and PYNQ-Z2 mapping.

## What it does
- States: `RED (00)` → `GREEN (01)` → `YELLOW (10)` → repeat, one-hot-style outputs.
- `clock_divider` divides 125 MHz by 22 for visible stepping on board (sim prescaler; retune counter for true 1 Hz timing).
- BTN0 async reset to RED.

## Files
| File | Purpose |
|---|---|
| `sources_1/new/traffic_fsm.v` | Moore FSM |
| `sources_1/new/clock_divider.v` | Prescaler |
| `sources_1/new/traffic_light_top.v` | Top |
| `sim_1/new/traffic_tb.v` | Testbench: 100 MHz clk, 20 ns reset, 5000 ns run |
| `constrs_1/new/constraints.xdc` | PYNQ-Z2 pins |
| `traffic_light_fsm.xpr` | Vivado project |

## Pin map (LVCMOS33)
| Signal | Pin |
|---|---|
| clk 125 MHz | H16 |
| rst (BTN0) | D19 |
| red LED0 | R14 |
| yellow LED1 | P14 |
| green LED2 | N16 |

## Test → expected result
1. Vivado → Run Behavioral Simulation on `traffic_tb`.
2. Expected: reset → red on, then green, then yellow, cycling. No assertions in TB — verify by waveform (planned: add state assertions).
3. Hardware: program → R/Y/G LEDs sequence continuously.

## Build
Vivado → open `.xpr` → Generate Bitstream → program.

## Status
- Completed: FSM, divider, TB, XDC, on-board sequence verified.
- Planned: true 1 Hz timing + pedestrian request input + self-checking TB.
