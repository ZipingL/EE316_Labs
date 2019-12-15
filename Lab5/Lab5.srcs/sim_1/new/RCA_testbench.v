`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2019 02:49:05 PM
// Design Name: 
// Module Name: RCA_testbench
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


module RCA_testbench;

reg clk;
reg enable;
reg [3:0] A;
reg [3:0] B;
reg Cin;
wire [4:0] Q;

CLA_4bits u1 (
    .clk(clk),
    .enable(enable),
    .A(A),
    .B(B),
    .Cin(Cin),
    .Q(Q)
    );


    
    initial
    begin
    A = 0;
    B = 0;
    Cin = 0;
    //Q = 0;
    #100

    clk = 0;
    enable = 1;
    A = 4'b0001;
    B = 4'b0101;
    Cin = 0;
    end

always begin
    #5 clk = ~clk;
    end
    
    initial begin
    $monitor("time=", $time,, "A=%b B=%b Cin=%b : Sum=%b ", A, B, Cin, Q);
    end
endmodule
