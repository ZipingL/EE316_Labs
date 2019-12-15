`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2019 02:04:55 PM
// Design Name: 
// Module Name: tb_myAND
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


module tb_myAND;

reg a;
reg b;

wire out;

myAND and_gate0(
    .a(a),
    .b(b),
    .out(out)

);

initial
    begin
        
        // Stimulus -- All input combos followed by some wait time to observe
        a = 1'b0;
        b = 1'b0;
        #50;
        
        a=1'b0;
        b=1'b1;
        #50;
        
        a=1'b1;
        b=1'b0;
        #50;
        
        a = 1'b1;
        b = 1'b1;
        
        end
endmodule

