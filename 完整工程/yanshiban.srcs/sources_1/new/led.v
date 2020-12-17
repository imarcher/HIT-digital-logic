`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/27 13:52:07
// Design Name: 
// Module Name: led
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


module led(
            input clk ,red,
            output reg l1,l2,l3,l4,l5,l6,l7,l8
    );
    reg [31:0] cnt;
    reg jishiclk;
    initial
    begin
    l1=0;
    l2=0;
    l3=0;
    l4=0;
    l5=0;
    l6=0;
    l7=0;
    l8=0;
    cnt=0;
    jishiclk=0;
    end
    always @(posedge clk)
        begin
            cnt=cnt+1;
            if(cnt == 50000000)
            begin
                cnt=0;
                jishiclk=~jishiclk;
            end
            
        end
        always @(posedge jishiclk)
        begin
        if(red==1)
        begin
        l1=~l1;
        l2=~l2;
        l3=~l3;
        l4=~l4;
        l5=~l5;
        l6=~l6;
        l7=~l7;
        l8=~l8;
        end
        end
        
endmodule
