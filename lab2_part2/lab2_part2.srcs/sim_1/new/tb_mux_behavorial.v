`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/16/2019 05:26:15 PM
// Design Name: 
// Module Name: tb_mux_structural
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


module tb_Mux_behavorial;

// inputs as registers
reg s1, s0, i3, i2, i1, i0;

// the output as a wire
wire bigD;

// UUT
Mux_behavorial uut (
    .s1(s1),
    .s0(s0),
    .i3(i3),
    .i2(i2),
    .i1(i1),
    .i0(i0),
    .bigD(bigD)
    
    );
    
    
initial begin
    // Init the inputs
    s1 = 0;
    s0 = 0;
    i3 = 0;
    i2 = 0;
    i1 = 0;
    i0 = 0;
    
    #50
    
    
    s1 = 0;
    s0 = 0;
    i3 = 0;
    i2 = 0;
    i1 = 0;
    i0 = 0;
    #50;
    $display ("TC01");
    if (bigD != 0) $display ("Result is wrong");
    
    
    s1 = 0;
    s0 = 0;
    i3 = 0;
    i2 = 0;
    i1 = 0;
    i0 = 1;
    #50;
    $display ("TC02");
    if (bigD != 1) $display ("Result is wrong");
    
    
    s1 = 0;
    s0 = 1;
    i3 = 0;
    i2 = 0;
    i1 = 0;
    i0 = 0;
    #50;
    $display ("TC03");
    if (bigD != 0) $display ("Result is wrong");
    
    
    s1 = 0;
    s0 = 1;
    i3 = 0;
    i2 = 0;
    i1 = 1;
    i0 = 0;
    #50;
    $display ("TC04");
    if (bigD != 1) $display ("Result is wrong");
    
 
    s1 = 1;
    s0 = 0;
    i3 = 0;
    i2 = 0;
    i1 = 0;
    i0 = 0;
    #50;
    $display ("TC05");
    if (bigD != 0) $display ("Result is wrong");
    
    
    
    s1 = 1;
    s0 = 0;
    i3 = 0;
    i2 = 1;
    i1 = 0;
    i0 = 0;
    #50;
    $display ("TC06");
    if (bigD != 1) $display ("Result is wrong");
    
    
    s1 = 1;
    s0 = 1;
    i3 = 0;
    i2 = 0;
    i1 = 0;
    i0 = 0;
    #50;
    $display ("TC07");
    if (bigD != 0) $display ("Result is wrong");
    
    
    
    s1 = 1;
    s0 = 1;
    i3 = 1;
    i2 = 0;
    i1 = 0;
    i0 = 0;
    #50;
    $display ("TC08");
    if (bigD != 1) $display ("Result is wrong");
    
    end

endmodule
