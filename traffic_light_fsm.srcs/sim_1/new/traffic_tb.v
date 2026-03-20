`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2026 22:35:53
// Design Name: 
// Module Name: traffic_tb
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


`timescale 1ns/1ps

module traffic_tb;

reg clk;
reg rst;

wire red;
wire yellow;
wire green;

traffic_light_top uut(
.clk(clk),
.rst(rst),
.red(red),
.yellow(yellow),
.green(green)
);

always #5 clk = ~clk;

initial
begin

clk = 0;
rst = 1;

#20 rst = 0;

#5000 $finish;

end

endmodule