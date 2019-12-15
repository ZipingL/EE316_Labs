`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/16/2019 05:54:47 PM
// Design Name: 
// Module Name: Mux_behavorial
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


module Mux_behavorial(
        input s1,
        input s0,
        input i3,
        input i2,
        input i1,
        input i0,
        output reg bigD
    );
    // sensitivity, react to it whenever it changes
    // specifies beahvior as response to input
    // which inputs are sensitive
    always @(s1, s0, i3, i2, i1, i0)
    begin
    
    bigD = 1;
    
    case({s1,s0, i3, i2, i1, i0})
    6'b000000 : bigD = 0;
    6'b000001 : bigD = 1;
    6'b010000 : bigD = 0;
    6'b010010 : bigD = 1;
    6'b100000 : bigD = 0;
    6'b100100 : bigD = 1;
    6'b110000 : bigD = 0;
    6'b111000 : bigD = 1;
    default : begin
                bigD = 1;
                end
    endcase
    end
        
endmodule
