`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2019 04:20:02 PM
// Design Name: 
// Module Name: time_multiplexing_tb
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


module time_multiplexing_tb;

reg clk;
reg reset;
reg [15:0] sw;
wire [3:0] an;
wire [6:0] sseg;

time_multiplexing_main u1(
    .clk(clk),
    .reset(reset),
    .sw(sw),
    .an(an),
    .sseg(sseg)
);

initial
begin
clk = 0;
sw = 0;
reset = 1;

#200
reset = 0;
sw = 16'b0001000100010001;

#200
sw = 16'b1111111111111111;

#200
sw = 16'b0010001000100010;

#200
sw = 16'b0011001100110011;

#200
sw = 16'b0100010001000100;

#200
reset = 1;

#200
reset = 0;

end

always
#1 clk = ~clk;


endmodule
