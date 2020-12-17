`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/27 00:08:41
// Design Name: 
// Module Name: erxuanyi
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

module erxuanyi(
	input pw_1, input pw_2, input pw_3, input pw_4, 
	input pw_5, input pw_6, input pw_7, input pw_8,
	input pw_9, input pw_10, 
	
	
	input xiugai, input green1,
	
    output reg n1, output reg n2, output reg n3, output reg n4, 
    output reg n5, output reg n6, output reg n7, output reg n8,
    output reg n9, output reg n10, 
    output reg m1, output reg m2, output reg m3, output reg m4,
    output reg m5, output reg m6, output reg m7, output reg m8,
    output reg m9, output reg m10
    
    
	);
	always @(*)
	begin
	//if(pw_1==1||pw_2==1||pw_3==1||pw_4==1)begin
	if(green1==1&&xiugai==1)begin
	n1=pw_1;
	n2=pw_2;
	n3=pw_3;
	n4=pw_4;
	n5=pw_5;
    n6=pw_6;
    n7=pw_7;
    n8=pw_8;
    n9=pw_9;
    n10=pw_10;
	end
	else begin
	m1=pw_1;
    m2=pw_2;
    m3=pw_3;
    m4=pw_4;
    m5=pw_5;
    m6=pw_6;
    m7=pw_7;
    m8=pw_8;
    m9=pw_9;
    m10=pw_10;
	end
	end
	//end
	
endmodule
