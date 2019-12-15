`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: Mux_structural
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


module Mux_structural(
    input s1,
    input s0,
    input i3,
    input i2,
    input i1,
    input i0,
    output bigD
    );
    
    // Defining wires for the s1 s0 signals 
    wire s1_not, s0_not;
    // Define wires for those and outputs 
    wire d3, d2, d1, d0;
    // Let us make some not gates for them s1 s0 signals
    not n1 (s1_not, s1);
    not n0 (s0_not, s0);
    
    // Make some of them AND gates as per my schema
    and g3 (d3, s1, s0, i3);
    and g2 (d2, s1, s0_not, i2);
    and g1 (d1, s1_not, s0, i1);
    and g0 (d0, s1_not, s0_not, i0);
    
    // Make all the and gates output to the OR gate as per my SCHEM
    or bigG (bigD, d3, d2, d1, d0);
    
    
endmodule
