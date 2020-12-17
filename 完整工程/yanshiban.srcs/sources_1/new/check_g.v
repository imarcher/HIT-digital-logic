`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/27 00:17:56
// Design Name: 
// Module Name: check_g
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


module check_g(input bijiao_g, jishi_g,
               output reg led_g);
initial
begin
    led_g = 0;
end

always@(*)
begin
    if(bijiao_g && jishi_g) led_g = 1;
    else led_g = 0;
end
endmodule
