`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2019 08:05:02 PM
// Design Name: 
// Module Name: clkdiv
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


module clkdiv(
    input clk,
    input reset,
    output slow_clk
    );
    
    
    wire div2, div4, div8;
    reg out;
    initial out = 0;
    reg [31:0] count = 0;
    assign slow_clk = out;
    
    always @(posedge clk) begin   
        if(count == 5000000)//5000000) // 5000000 for 100ms light
        begin
            out = ~out;
            count = 0;
        end 
        else
            count = count + 1;
       
    end
endmodule
