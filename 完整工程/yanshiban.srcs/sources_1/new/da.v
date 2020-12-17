`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/27 00:12:22
// Design Name: 
// Module Name: da
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

module da(
input shuru,shuru1,shuru2,shuru3,shuru4,shuru5,shuru6,shuru7,shuru8,shuru9,shuru10,

output reg [3:0] shuchu
    );
    initial
    begin
    shuchu=0;
    end
    always @(posedge shuru)
    begin
    if(shuru1==1) shuchu=4'b0000;
   else if(shuru2==1)shuchu=4'b0001;
    else if(shuru3==1)shuchu=4'b0010;
    else if(shuru4==1)shuchu=4'b0011;
    else if(shuru5==1)shuchu=4'b0100;
    else if(shuru6==1)shuchu=4'b0101;
    else if(shuru7==1)shuchu=4'b0110;
    else if(shuru8==1)shuchu=4'b0111;
    else if(shuru9==1)shuchu=4'b1000;
    else if(shuru10==1)shuchu=4'b1001;
    end
endmodule
