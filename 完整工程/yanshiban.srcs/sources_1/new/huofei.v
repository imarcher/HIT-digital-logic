`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/27 00:10:11
// Design Name: 
// Module Name: huofei
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

module huofei(
    input pw1, pw2, pw3, pw4,input pw5, input pw6, input pw7, input pw8,
	input pw9, input pw10, 
    output reg p_out
    );
    
    always@(*)
    begin
        p_out = pw1 | pw2 | pw3 | pw4 | pw5 | pw6 | pw7 | pw8 | pw9 | pw10 ;
    p_out=~p_out;
    end
  
endmodule
