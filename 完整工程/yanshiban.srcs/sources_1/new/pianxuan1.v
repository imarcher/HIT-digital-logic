`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/27 00:18:46
// Design Name: 
// Module Name: pianxuan1
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

module pianxuan1(
        input  shu01,input  shu02,input  shu03,input  shu04,input  shu05,input  shu06,input shu07,
        input  shu11,input  shu12,input  shu13,input  shu14,input  shu15,input  shu16,input  shu17,
        input  shu21,input  shu22,input  shu23,input  shu24,input  shu25,input  shu26,input  shu27,
        input  shu31,input  shu32,input  shu33,input  shu34,input  shu35,input  shu36,input  shu37,
        input clk,
        output reg [3:0] number,
        output reg num0_1, output reg num0_2, output reg num0_3, output reg num0_4, 
                    output reg num0_5, output reg num0_6, output reg num0_7 
    );
    reg [31:0]cnt;
    reg jishiclk;
    initial
    begin
    number=4'b0001;
    jishiclk=0;
    cnt=0;
    end
    
    always @(posedge clk)
    begin
        cnt=cnt+1;
        if(cnt == 100000)
        begin
            cnt=0;
            jishiclk=~jishiclk;
        end
        
    end
    
    always@(posedge jishiclk)
    begin
    //if(clk)begin
    if(number==4'b0001) number=4'b1000;
    else if(number==4'b1000) number=4'b0100;
    else if(number==4'b0100) number=4'b0010;
    else if(number==4'b0010) number=4'b0001;
    
    case(number)
    4'b1000:begin
    num0_1 = shu01; 
    num0_2 = shu02;
    num0_3 = shu03;
    num0_4 = shu04;
    num0_5 = shu05;
    num0_6 = shu06;
    num0_7 = shu07;
    end
    4'b0100:begin
        num0_1 = shu11; 
        num0_2 = shu12;
        num0_3 = shu13;
        num0_4 = shu14;
        num0_5 = shu15;
        num0_6 = shu16;
        num0_7 = shu17;
        end
    4'b0010:begin
            num0_1 = shu21; 
            num0_2 = shu22;
            num0_3 = shu23;
            num0_4 = shu24;
            num0_5 = shu25;
            num0_6 = shu26;
            num0_7 = shu27;
            end
    4'b0001:begin
                num0_1 = shu31; 
                num0_2 = shu32;
                num0_3 = shu33;
                num0_4 = shu34;
                num0_5 = shu35;
                num0_6 = shu36;
                num0_7 = shu37;
                end
                endcase
    end
   // end
    
endmodule
