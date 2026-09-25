# Traffic Light FSM — share copy

## Title (50 chars)
RED-GREEN-YELLOW: a Moore FSM traffic sequencer on PYNQ-Z2

## Description (for YouTube / LinkedIn / X)
A classic Moore machine in 50 seconds. `traffic_fsm` cycles RED (00) → GREEN (01) → YELLOW (10) → repeat, with outputs depending on state only. A `clock_divider` prescales the 125 MHz board clock (÷22 stepping path) so the sequence is visible. Testbench `traffic_tb`: 100 MHz clock, 20 ns reset, 5000 ns run — reset lands on red, then green, then yellow, cycling. Pins: clk H16, BTN0 reset D19, red R14, yellow P14, green N16. On hardware the R/Y/G LEDs sequence continuously. Planned: true 1 Hz timing, pedestrian request input, and state assertions.

## Chapters
00:00 Moore traffic sequencer
00:10 Red, green, yellow (00 / 01 / 10)
00:20 Divider makes it visible
00:30 Pins + files (H16 / D19 / R14 / P14 / N16)
00:40 Sim, then hardware

## Hashtags
#FPGA #Verilog #FSM #PYNQZ2 #DigitalDesign

## Assets
- Video: `assets/demo/traffic-demo.mp4` (1920x1080, 50.0s, h264)
- Poster: `assets/demo/traffic-poster.png`
- Source: `traffic_light_fsm.srcs/sources_1/new/traffic_fsm.v`, `clock_divider.v`, `traffic_light_top.v`, `sim_1/new/traffic_tb.v`, `constrs_1/new/constraints.xdc`
