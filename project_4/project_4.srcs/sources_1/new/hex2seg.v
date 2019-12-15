`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: Hex2Seg
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


module hex2seg(
   
    input [3:0] num,

    output reg [6:0] segs
    /*
    output reg AN0,
    output reg AN1,
    output reg AN2,
    output reg AN3,
    output reg dp*/
    );
    
    reg segA;
    reg segB;
    reg segC;
    reg segD;
    reg segE;
    reg segF;
    reg segG;


    
     always @(num)
    begin
    //AN0 = 0; AN1 = 1; AN2 = 1; AN3 = 1; dp = 1;
    segA=1'b0; segB=1'b0; segC=1'b0; segD=1'b0; segE=1'b0; segF=1'b0; segG=1'b0;
    segs[0] = segA; segs[1] = segB; segs[2] = segC; segs[3] = segD; segs[4] = segE; segs[5] = segF; segs[6] = segG;
    /* 7 Seg Display
        A
       F B
        G
       E C
        D
    */
    
        case({num[3], num[2], num[1], num[0]})
        3'b0000 : begin //0
        segA=1'b0; segB=1'b0; segC=1'b0; segD=1'b0; segE=1'b0; segF=1'b0; segG=1'b1;
        segs[0] = segA; segs[1] = segB; segs[2] = segC; segs[3] = segD; segs[4] = segE; segs[5] = segF; segs[6] = segG;
            end
        3'b0001 : begin //1
        segA=1'b1; segB=1'b0; segC=1'b0; segD=1'b1; segE=1'b1; segF=1'b1; segG=1'b1;
        segs[0] = segA; segs[1] = segB; segs[2] = segC; segs[3] = segD; segs[4] = segE; segs[5] = segF; segs[6] = segG;
            end
        3'b0010 : begin //2
        segA=1'b0; segB=1'b0; segC=1'b1; segD=1'b0; segE=1'b0; segF=1'b1; segG=1'b0;
        segs[0] = segA; segs[1] = segB; segs[2] = segC; segs[3] = segD; segs[4] = segE; segs[5] = segF; segs[6] = segG;       
            end
        3'b0011 : begin //3
        segA=1'b0; segB=1'b0; segC=1'b0; segD=1'b0; segE=1'b1; segF=1'b1; segG=1'b0;
        segs[0] = segA; segs[1] = segB; segs[2] = segC; segs[3] = segD; segs[4] = segE; segs[5] = segF; segs[6] = segG;           
            end
        3'b0100 : begin //4
        segA=1'b1; segB=1'b0; segC=1'b0; segD=1'b1; segE=1'b1; segF=1'b0; segG=1'b0;      
        segs[0] = segA; segs[1] = segB; segs[2] = segC; segs[3] = segD; segs[4] = segE; segs[5] = segF; segs[6] = segG;  
            end
        3'b0101 : begin //5
        segA=1'b0; segB=1'b1; segC=1'b0; segD=1'b0; segE=1'b1; segF=1'b0; segG=1'b0;       
        segs[0] = segA; segs[1] = segB; segs[2] = segC; segs[3] = segD; segs[4] = segE; segs[5] = segF; segs[6] = segG; 
            end
        3'b0110 : begin //6
        segA=1'b0; segB=1'b1; segC=1'b0; segD=1'b0; segE=1'b0; segF=1'b0; segG=1'b0;   
        segs[0] = segA; segs[1] = segB; segs[2] = segC; segs[3] = segD; segs[4] = segE; segs[5] = segF; segs[6] = segG;     
            end
            
        3'b0111 : begin //7
        segA=1'b0; segB=1'b0; segC=1'b0; segD=1'b1; segE=1'b1; segF=1'b1; segG=1'b1;     
        segs[0] = segA; segs[1] = segB; segs[2] = segC; segs[3] = segD; segs[4] = segE; segs[5] = segF; segs[6] = segG;   
            end   
            
        4'b1000 : begin //8
            segA=1'b0; segB=1'b0; segC=1'b0; segD=1'b0; segE=1'b0; segF=1'b0; segG=1'b0;   
            segs[0] = segA; segs[1] = segB; segs[2] = segC; segs[3] = segD; segs[4] = segE; segs[5] = segF; segs[6] = segG;     
                end  
                
        4'b1001 : begin //9
                segA=1'b0; segB=1'b0; segC=1'b0; segD=1'b1; segE=1'b1; segF=1'b0; segG=1'b0;    
                segs[0] = segA; segs[1] = segB; segs[2] = segC; segs[3] = segD; segs[4] = segE; segs[5] = segF; segs[6] = segG;    
                    end  
                    
        4'b1010 : begin // A
                segA=1'b0; segB=1'b0; segC=1'b0; segD=1'b1; segE=1'b0; segF=1'b0; segG=1'b0;    
                segs[0] = segA; segs[1] = segB; segs[2] = segC; segs[3] = segD; segs[4] = segE; segs[5] = segF; segs[6] = segG;    
                        end    
        4'b1011 : begin // B
                segA=1'b1; segB=1'b1; segC=1'b0; segD=1'b0; segE=1'b0; segF=1'b0; segG=1'b0;     
                segs[0] = segA; segs[1] = segB; segs[2] = segC; segs[3] = segD; segs[4] = segE; segs[5] = segF; segs[6] = segG;   
                        end
        4'b1100 : begin // C
                segA=1'b0; segB=1'b1; segC=1'b1; segD=1'b0; segE=1'b0; segF=1'b0; segG=1'b1;  
                segs[0] = segA; segs[1] = segB; segs[2] = segC; segs[3] = segD; segs[4] = segE; segs[5] = segF; segs[6] = segG;      
                        end 
        4'b1101 : begin // D
                segA=1'b1; segB=1'b0; segC=1'b0; segD=1'b0; segE=1'b0; segF=1'b1; segG=1'b0;   
                segs[0] = segA; segs[1] = segB; segs[2] = segC; segs[3] = segD; segs[4] = segE; segs[5] = segF; segs[6] = segG;     
                        end 
        4'b1110 : begin // E
                segA=1'b0; segB=1'b1; segC=1'b1; segD=1'b0; segE=1'b0; segF=1'b0; segG=1'b0;    
                segs[0] = segA; segs[1] = segB; segs[2] = segC; segs[3] = segD; segs[4] = segE; segs[5] = segF; segs[6] = segG;    
                 end    
       4'b1111 : begin // F
                segA=1'b0; segB=1'b1; segC=1'b1; segD=1'b1; segE=1'b0; segF=1'b0; segG=1'b0; 
                segs[0] = segA; segs[1] = segB; segs[2] = segC; segs[3] = segD; segs[4] = segE; segs[5] = segF; segs[6] = segG;       
                 end      
        endcase
    
        end          
        
                    
        
    

   
endmodule
