`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/27 00:15:16
// Design Name: 
// Module Name: bijiao
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

module bijiao(input [3:0] in0, in1, in2, in3, mima0, mima1, mima2, mima3,
               input start,lock,clk,
               output reg bijiao_r,
               output reg bijiao_g
);

initial
begin
    bijiao_g = 0;
    bijiao_r = 0;
end

always @(posedge clk)
begin
    
    if(lock) bijiao_g = 0; 
    else if(start)
    begin
        if(in0 == mima0 && in1 == mima1 && in2 == mima2 && in3 == mima3)
        begin
            bijiao_g = 1;
            bijiao_r = 0;
        end
        else
        begin
            bijiao_g = 0;
            bijiao_r = 1;
        end
    end
    
end
endmodule
