`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2019 10:01:53 PM
// Design Name: 
// Module Name: time_multiplexing_main
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


module time_multiplexing_main(
    input clk,
    input reset,
    input [15:0] sw,
    output [3:0] an,
    output [6:0] sseg
    );
    
    wire [6:0] in0, in1, in2, in3;
    wire slow_clock;
    hex2seg c1 ( .num(sw[3:0]), .segs(in0));
    hex2seg c2 ( .num(sw[7:4]), .segs(in1));
    hex2seg c3 ( .num(sw[11:8]), .segs(in2));
    hex2seg c4 ( .num(sw[15:12]), .segs(in3));
    clkdiv_display c5(.clk(clk), .reset(reset), .slw_clk(slow_clock));
    
    time_mux_state_machine c6(
        .clk (slow_clock),
        .reset (reset),
        .in0(in0),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .an(an),
        .sseg(sseg)
        );
endmodule
