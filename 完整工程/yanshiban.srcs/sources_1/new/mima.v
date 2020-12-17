`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/27 00:37:45
// Design Name: 
// Module Name: mima
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
module mima(
        input clk,input [3:0] shuru,jishu,
        output reg [3:0] n1,n2,n3,n4
    );
    initial
    begin
    n1=4'b0011;
    n2=4'b0010;
    n3=4'b0001;
    n4=0;
    end
    
    always @(posedge clk)
    begin
    if(jishu==2'b01) n1=shuru;
    else if(jishu==2'b10) n2=shuru;
    else if(jishu==2'b11) n3=shuru;
    else if(jishu==2'b00) n4=shuru;
    end
endmodule
