`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2019 07:12:05 PM
// Design Name: 
// Module Name: CLA_4bits
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


module CLA_4bits(
    input clk,
    input enable,
    input [3:0] A,B,
    input Cin,
    output [4:0] Q
    );
    
    wire [4:0] Data;

    wire [3:0] G,P;
    wire [4:0] C;
    wire [3:0] Sum;
    wire Cout;
    assign P = A^B;
    assign G = A&B;    
    
    
    assign C[0] = Cin;
    assign C[1] = G[0] | (P[0] & C[0]);
    assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & C[0]);
    assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) |             (P[2] & P[1] & P[0] & C[0]);
    assign Q[4] = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) |(P[3] & P[2] & P[1] & P[0] & C[0]);
   
    assign Sum = P ^ C;
    
    assign Q[0] = Sum[0];
    assign Q[1] = Sum[1];
    assign Q[2] = Sum[2];
    assign Q[3] = Sum[3];
    
    
    
  
    
endmodule


module register_logic (
    input clk,
    input enable,
    input [4:0] Data,
    output reg [4:0] Q
    );
    
    always @(posedge clk)
    if(enable)
        Q <= Data;
endmodule

