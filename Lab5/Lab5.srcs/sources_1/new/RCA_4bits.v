`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2019 02:42:14 PM
// Design Name: 
// Module Name: RCA_4bits
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


module RCA_4bits(
    input clk,
    input enable,
    input [3:0] A,B,
    input Cin,
    output [4:0] Q
    );
    wire carry1, carry2, carry3;
    full_adder FA0(A[0], B[0], Cin, Q[0], carry1);
    full_adder FA1(A[1], B[1], carry1, Q[1], carry2);
    full_adder FA2(A[2], B[2], carry2, Q[2], carry3);
    full_adder FA3(A[3], B[3], carry3, Q[3], Q[4]);
    
endmodule
/* 
module register_logic (
    input clk,
    input enable,
    input [4:0] Data,
    output reg [4:0] Q
    );
    
    always @(posedge clk)
        Q <= Data;
endmodule*/

module full_adder(
    input A,B, Cin,
    output S,Cout
    );
    wire w1, w2, w3;
    xor (w1 ,A,B);
    xor (S, w1, Cin);
    and (w2, w1, Cin);
    and (w3, A, B);
    or G5(Cout, w2, w3);
endmodule




