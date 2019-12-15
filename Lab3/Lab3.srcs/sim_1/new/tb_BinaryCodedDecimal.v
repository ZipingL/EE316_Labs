`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2019 05:33:22 PM
// Design Name: 
// Module Name: tb_decoder_behavorial
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
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2019 04:17:55 PM
// Design Name: 
// Module Name: tb_decoder_structural
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


module tb_BinaryCodedDecimal;

    // Inputs to be defined as registers
    reg e;
    reg a;
    reg b;
    reg c;
    
    // Outputs to be defined as wires
    wire segA;
    wire segB;
    wire segC;
    wire segD;
    wire segE;
    wire segF;
    wire segG;
    
    // Instantiate the Unit Under Test (UUT)
    BinaryCodedDecimal uut (
        .e(e),
        .a(a),
        .b(b),
        .c(c),
        .segA(segA),
        .segB(segB),
        .segC(segC),
        .segD(segD),
        .segE(segE),
        .segF(segF),
        .segG(segG),
        .an0(an0),
        .an1(an1),
        .an2(an2),
        .an3(an3),
        .dp(dp)
        );
        
        initial begin
            // Initialize Inputs
            e = 0;
            a = 0;
            b = 0;
            c = 0;
            AN0 = 0;
            AN1 = 1;
            AN2 = 1;
            AN3 = 1;
            AN4 = 1;
            dp = 1;
            // Wait 50ns for global reset to finish
            #50;
            
            // Stimulus - ALL input combos followed by some wait time to observe the o/p
            e = 0;
            a = 0;
            b = 0;
            c = 0;
            #50;
            $display ("TC01");
            if (segA != 1'b1 ||
                segB != 1'b1 ||
                segC != 1'b1 || 
                segD != 1'b1 ||
                segE != 1'b1 ||
                segF != 1'b1 ||
                segG != 1'b0
            ) $display ("Result is fucking wrong");
            
            e = 0;
            a = 0;
            b = 0;
            c = 1;
            #50;
            $display ("TC02");
            if (segA != 1'b1 ||
                segB != 1'b0 ||
                segC != 1'b0 || 
                segD != 1'b1 ||
                segE != 1'b1 ||
                segF != 1'b1 ||
                segG != 1'b1
            )  $display ("Result is fucking wrong");
            
            e = 0;
            a = 0;
            b = 1;
            c = 0;
            #50;
            $display ("TC03");
            if (segA != 1'b0 ||
                segB != 1'b0 ||
                segC != 1'b1 || 
                segD != 1'b0 ||
                segE != 1'b0 ||
                segF != 1'b1 ||
                segG != 1'b0
            )             
            
            $display ("Result is fucking wrong");
            
            e = 0;
            a = 0;
            b = 1;
            c = 1;
            #50;
            $display ("TC04");
            if (segA != 1'b0 ||
                segB != 1'b0 ||
                segC != 1'b0 || 
                segD != 1'b0 ||
                segE != 1'b1 ||
                segF != 1'b1 ||
                segG != 1'b0
            ) $display ("Result is fucking wrong");
            
            e = 0;
            a = 1;
            b = 0;
            c = 0;
            #50;
            $display ("TC05");
            if (segA != 1'b1 ||
                segB != 1'b0 ||
                segC != 1'b0 || 
                segD != 1'b1 ||
                segE != 1'b1 ||
                segF != 1'b0 ||
                segG != 1'b0
            )  $display ("Result is fucking wrong");
            
            e = 0;
            a = 1;
            b = 0;
            c = 1;
            #50;
            $display ("TC06");
            if (segA != 1'b0 ||
                segB != 1'b1 ||
                segC != 1'b0 || 
                segD != 1'b0 ||
                segE != 1'b1 ||
                segF != 1'b0 ||
                segG != 1'b0
            )  $display ("Result is fucking wrong");
            
            e = 0;
            a = 1;
            b = 1;
            c = 0;
            #50;
            $display ("TC07");
            if (segA != 1'b0 ||
                segB != 1'b1 ||
                segC != 1'b0 || 
                segD != 1'b0 ||
                segE != 1'b0 ||
                segF != 1'b0 ||
                segG != 1'b0
            )  $display ("Result is fucking wrong");
            
            e = 0;
            a = 1;
            b = 1;
            c = 1;
            #50;
            $display ("TC08");
            if (segA != 1'b0 ||
                segB != 1'b0 ||
                segC != 1'b0 || 
                segD != 1'b1 ||
                segE != 1'b1 ||
                segF != 1'b1 ||
                segG != 1'b1
            )  $display ("Result is fucking wrong");
            
            e = 1;
            a = 0;
            b = 0;
            c = 0;
            #50;
            $display ("TC09");
            if (segA != 1'b0 ||
                segB != 1'b0 ||
                segC != 1'b0 || 
                segD != 1'b0 ||
                segE != 1'b0 ||
                segF != 1'b0 ||
                segG != 1'b0
            ) $display ("Result is fucking wrong");
            
            e = 1;
            a = 0;
            b = 0;
            c = 1;
            #50;
            $display ("TC10");
            if (segA != 1'b0 ||
                segB != 1'b0 ||
                segC != 1'b0 || 
                segD != 1'b1 ||
                segE != 1'b1 ||
                segF != 1'b0 ||
                segG != 1'b0
            ) $display ("Result is fucking wrong");
            
            e = 1;
            a = 0;
            b = 1;
            c = 0;
            #50;
            $display ("TC13");
            if (segA != 1'b1 ||
                segB != 1'b1 ||
                segC != 1'b1 || 
                segD != 1'b1 ||
                segE != 1'b1 ||
                segF != 1'b1 ||
                segG != 1'b1
            ) $display ("Result is fucking wrong");
            
            e = 1;
            a = 0;
            b = 1;
            c = 1;
            #50;
            $display ("TC14");
            if (segA != 1'b1 ||
                segB != 1'b1 ||
                segC != 1'b1 || 
                segD != 1'b1 ||
                segE != 1'b1 ||
                segF != 1'b1 ||
                segG != 1'b1
            )  $display ("Result is fucking wrong");
            
            e = 1;
            a = 1;
            b = 0;
            c = 0;
            #50;
            $display ("TC15");
            if (segA != 1'b1 ||
                segB != 1'b1 ||
                segC != 1'b1 || 
                segD != 1'b1 ||
                segE != 1'b1 ||
                segF != 1'b1 ||
                segG != 1'b1
            )  $display ("Result is fucking wrong");
            
            e = 1;
            a = 1;
            b = 0;
            c = 1;
            #50;
            $display ("TC16");
            if (segA != 1'b1 ||
                segB != 1'b1 ||
                segC != 1'b1 || 
                segD != 1'b1 ||
                segE != 1'b1 ||
                segF != 1'b1 ||
                segG != 1'b1
            )  $display ("Result is fucking wrong");
            
            e = 1;
            a = 1;
            b = 1;
            c = 0;
            #50;
            $display ("TC17");
            if (segA != 1'b1 ||
                segB != 1'b1 ||
                segC != 1'b1 || 
                segD != 1'b1 ||
                segE != 1'b1 ||
                segF != 1'b1 ||
                segG != 1'b1
            )  $display ("Result is fucking wrong");
            
            e = 1;
            a = 1;
            b = 1;
            c = 1;
            #50;
            $display ("TC18");
            if (segA != 1'b1 ||
                segB != 1'b1 ||
                segC != 1'b1 || 
                segD != 1'b1 ||
                segE != 1'b1 ||
                segF != 1'b1 ||
                segG != 1'b1
            )  $display ("Result is fucking wrong");
            
        
            end
endmodule
            
            
            
            
            
