`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2026 22:33:30
// Design Name: 
// Module Name: traffic_light_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module traffic_light_top(
input clk,
input rst,
output red,
output yellow,
output green
);

wire slow_clk;

clock_divider cd(
.clk(clk),
.rst(rst),
.slow_clk(slow_clk)
);

traffic_fsm fsm(
.clk(slow_clk),
.rst(rst),
.red(red),
.yellow(yellow),
.green(green)
);

endmodule
