`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/27 00:19:54
// Design Name: 
// Module Name: pianxuan2
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

module pianxuan2(
        input  shu01,input  shu02,input  shu03,input  shu04,input  shu05,input  shu06,input shu07,
        input  shu11,input  shu12,input  shu13,input  shu14,input  shu15,input  shu16,input  shu17,
        input clk,input red,
        output reg [3:0] number2,
                output reg num0_1, output reg num0_2, output reg num0_3, output reg num0_4, 
                            output reg num0_5, output reg num0_6, output reg num0_7 
    );
    reg [31:0]cnt;
    reg jishiclk;
    initial
    begin
    number2=4'b0001;
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
    
    always @(posedge jishiclk)
    begin
    if(number2==4'b0001) number2=4'b0100;
    else if(number2==4'b0100) number2=4'b0001;
    if(!red)begin
    case(number2)
        4'b0100:begin
        num0_1 = shu01; 
        num0_2 = shu02;
        num0_3 = shu03;
        num0_4 = shu04;
        num0_5 = shu05;
        num0_6 = shu06;
        num0_7 = shu07;
        end
        4'b0001:begin
        num0_1 = shu11; 
        num0_2 = shu12;
        num0_3 = shu13;
        num0_4 = shu14;
        num0_5 = shu15;
        num0_6 = shu16;
        num0_7 = shu17;
        end
                endcase
                end
                else begin
                case(number2)
                        4'b0100:begin
                        num0_1 = 1; 
                        num0_2 = 1;
                        num0_3 = 1;
                        num0_4 = 1;
                        num0_5 = 1;
                        num0_6 = 1;
                        num0_7 = 1;
                        end
                        4'b0001:begin
                        num0_1 = shu11; 
                        num0_2 = shu12;
                        num0_3 = shu13;
                        num0_4 = shu14;
                        num0_5 = shu15;
                        num0_6 = shu16;
                        num0_7 = shu17;
                        end
                                endcase
                                end
    end
    
endmodule
