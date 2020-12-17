`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/27 00:17:02
// Design Name: 
// Module Name: check_r
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

module check_r(input bijiao_r, jishi_r,
               output reg led_r);
initial
begin
    led_r = 0;
end

always@(*)
begin
    if(bijiao_r || jishi_r) led_r = 1;
    else led_r = 0;
end
endmodule
