`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2019 08:33:39 PM
// Design Name: 
// Module Name: rising_edge_detector_tb
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


module rising_edge_detector_tb;
reg clk;
wire outedge;
reg reset;
reg signal;
rising_edge_detector t1(
 .clk(clk),
 .signal(signal),
 .reset(reset),
 .outedge(outedge)
 );

always #1 clk = ~clk;

initial begin

clk = 0;
signal = 0;
reset = 0;

#20
signal = 1;

#20
signal = 1;

#20
signal = 0;

#20
signal = 0;

#20
signal = 1;

#20
signal = 0;

#20
signal = 1;

#20
signal = 1;

#20
signal = 0;

#20
reset = 1;

#20
signal = 1;

#20
reset = 0;

#20
signal = 1;


end



endmodule
