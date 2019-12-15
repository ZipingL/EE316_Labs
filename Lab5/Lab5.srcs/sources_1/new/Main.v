`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2019 04:09:41 PM
// Design Name: 
// Module Name: Main
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


module Main(
    input clk,
    input enable,
    input Cin,
    input sw9,
    input [3:0] A,B,
    output  [4:0] led1,
    output  [4:0] led2
    );
    
    wire [4:0] D1;
    wire [4:0] D2;
    wire [4:0] Q1;
    wire [4:0] Q2;

    
RCA_4bits rca(
    clk,
    enable,
    A,B,
    Cin,
    D1
    ); 
 
CLA_4bits cla(
    clk,
    enable,
    A,B,
    Cin,
    D2
);

register_logic cla_reg(
    clk,
    enable,
    D1,
    Q1
);

register_logic rca_reg(
    clk,
    enable,
    D2,
    Q2
);

multiplexor mult(
    sw9,
    Q1, Q2,
    led1, led2);

    
    endmodule
    
module multiplexor(
    input sw9,
    input [4:0] Q1, 
    Q2,
    output reg [4:0] led1,
    output reg [4:0] led2);
    
    always @(sw9 or Q1 or Q2)
    begin
    
    if(sw9 == 1)
    begin
    led1 <= Q1;
    led2 <= 5'b00000;
    end
    else
    begin
    led1 <= 5'b00000;
    led2 <= Q2;
    end
    
    end
    
    endmodule
    



