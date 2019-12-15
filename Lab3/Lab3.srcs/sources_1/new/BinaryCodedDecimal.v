`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2019 03:03:01 PM
// Design Name: 
// Module Name: BinaryCodedDecimal
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


module BinaryCodedDecimal(
    input e,
    input a,
    input b,
    input c,
    output reg segA,
    output reg segB,
    output reg segC,
    output reg segD,
    output reg segE,
    output reg segF,
    output reg segG,
    output reg AN0,
    output reg AN1,
    output reg AN2,
    output reg AN3,
    output reg dp
    );
    
    
     always @(e,a,b,c)
    begin
    AN0 = 0; AN1 = 1; AN2 = 1; AN3 = 1; dp = 1;
    segA=1'b0; segB=1'b0; segC=1'b0; segD=1'b0; segE=1'b0; segF=1'b0; segG=1'b0;
    
/*
module seg_A (e,a,b,c, segA)
    wire eb, ea, e_a_b, e_b_c, not_b, not_a, not_e, not_c;
    not (not_a, a); not (not_b, b); not (not_e, e); not(not_c, c);
    and (eb, e, b);
    and (ea, e a);
    and (e_a_b, not_a, not_b, not_e);
    and (e_b_c, not_e, not_b, _not_c);
    out (segA, eb, ea, e_a_b, e_bc);
endmodule

module seg_B (e,a,b,c, segB)
    wire eb, ea, abc, eabc, not_b, not_a, not_e, not_c;
    not (not_a, a); not (not_b, b); not (not_e, e); not(not_c, c);
    and (eb, e, b);
    and (ea, e a);
    and (abc, a, not_b, c);
    and (eabc, not_e, not_a, not_b, not_c);
    out (segB, eb, ea, abc, eabc);
endmodule

module seg_C (e,a,b,c, segC)
    wire eb, ea, eabc, not_b, not_a, not_e, not_c;
    not (not_a, a); not (not_b, b); not (not_e, e); not(not_c, c);
    and (eb, e, b);
    and (ea, e a);
    and (eabc, not_a, not_b, not_c, not_e);
    out (segB, eb, ea, eabc);
endmodule

module seg_D (e,a,b,c, segD)
    wire eb, ec, abc, eab, abc_not, not_b, not_a, not_e, not_c;
    not (not_a, a); not (not_b, b); not (not_e, e); not(not_c, c);
    and (eb, e, b);
    and (ec, e, c);
    and (abc, a, b, c);
    and (eab, not_e, not_a, not_b);
    and (abc_not, a, not_b, not_c);
    out (segB, eb, ec, abc, eab, abc_not);
endmodule

module seg_E (e,a,b,c, segE)
    wire c, eb_not, ab, eb, not_b, not_a, not_e, not_c;
    not (not_a, a); not (not_b, b); not (not_e, e); not(not_c, c);
    and (eb_not, not_e, not_b);
    and (ab, a,not_b);
    and (eb, e,b);
    out (seg_E, eb_not, ab, eb);
endmodule

module seg_F (e,a,b,c, segF)
    wire ea_not, ab, bc, ea, not_b, not_a, not_e, not_c;
    not (not_a, a); not (not_b, b); not (not_e, e); not(not_c, c);
    and (ea_not, not_e, not_b);
    and (ab, not_a, b);
    and (bc, b,c);
    and (ea, e, a);
    out (segF, ea_not, ab, bc, ea);
endmodule

module seg_G (e,a,b,c, seg_G)
    wire eb, ea, abc, eabc, not_b, not_a, not_e, not_c;
    not (not_a, a); not (not_b, b); not (not_e, e); not(not_c, c);
    and (eb, e, b);
    and (ea, e a);
    and (abc, a, b, c);
    and (eabc, not_e, not_a, not_b, not_c);
    out (segB, eb, ea, abc, eabc);
endmodule

*/

    
        case ({e,a,b,c})
        3'b0000 : begin //0
        segA=1'b0; segB=1'b0; segC=1'b0; segD=1'b0; segE=1'b0; segF=1'b0; segG=1'b1;
            end
        3'b0001 : begin //1
        segA=1'b1; segB=1'b0; segC=1'b0; segD=1'b1; segE=1'b1; segF=1'b1; segG=1'b1;
            end
        3'b0010 : begin //2
        segA=1'b0; segB=1'b0; segC=1'b1; segD=1'b0; segE=1'b0; segF=1'b1; segG=1'b0;       
            end
        3'b0011 : begin //3
        segA=1'b0; segB=1'b0; segC=1'b0; segD=1'b0; segE=1'b1; segF=1'b1; segG=1'b0;           
            end
        3'b0100 : begin //4
        segA=1'b1; segB=1'b0; segC=1'b0; segD=1'b1; segE=1'b1; segF=1'b0; segG=1'b0;        
            end
        3'b0101 : begin //5
        segA=1'b0; segB=1'b1; segC=1'b0; segD=1'b0; segE=1'b1; segF=1'b0; segG=1'b0;        
            end
        3'b0110 : begin //6
        segA=1'b0; segB=1'b1; segC=1'b0; segD=1'b0; segE=1'b0; segF=1'b0; segG=1'b0;        
            end
            
        3'b0111 : begin //7
        segA=1'b0; segB=1'b0; segC=1'b0; segD=1'b1; segE=1'b1; segF=1'b1; segG=1'b1;        
            end   
            
        4'b1000 : begin //8
            segA=1'b0; segB=1'b0; segC=1'b0; segD=1'b0; segE=1'b0; segF=1'b0; segG=1'b0;        
                end  
                
        4'b1001 : begin //9
                segA=1'b0; segB=1'b0; segC=1'b0; segD=1'b1; segE=1'b1; segF=1'b0; segG=1'b0;        
                    end  
                    
        4'b1010 : begin // A
                segA=1'b0; segB=1'b0; segC=1'b0; segD=1'b1; segE=1'b0; segF=1'b0; segG=1'b0;        
                        end    
        4'b1011 : begin // B
                segA=1'b0; segB=1'b0; segC=1'b0; segD=1'b0; segE=1'b0; segF=1'b0; segG=1'b0;        
                        end
        4'b1100 : begin // C
                segA=1'b0; segB=1'b1; segC=1'b1; segD=1'b0; segE=1'b0; segF=1'b0; segG=1'b1;        
                        end 
        4'b1101 : begin // D
                segA=1'b0; segB=1'b0; segC=1'b0; segD=1'b0; segE=1'b0; segF=1'b0; segG=1'b1;        
                                        end 
        4'b1110 : begin // E
                segA=1'b0; segB=1'b1; segC=1'b1; segD=1'b0; segE=1'b0; segF=1'b0; segG=1'b0;        
                                        end    
       4'b1111 : begin // F
                segA=1'b0; segB=1'b1; segC=1'b1; segD=1'b1; segE=1'b0; segF=1'b0; segG=1'b0;        
                 end      
        endcase
    
        end          
        
                    
        
    

   
endmodule
