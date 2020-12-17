`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/27 10:16:58
// Design Name: 
// Module Name: text
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


module text(

    );

  reg clear;
  reg clk;
  wire [2:0]count;
  wire led_g;
  wire led_r;
  reg lock;
  reg pw_1;
  reg pw_2;
  reg pw_3;
  reg pw_4;
  reg start;
  reg xiugai;
  wire [1:0] n1,n2,n3,n4;

  design_1_wrapper unit
       (
       .count(count),
               .led_g(led_g),
               .led_r(led_r),.clear(clear),
        .clk(clk),
       
        .lock(lock),
        .pw_1(pw_1),
        .pw_2(pw_2),
        .pw_3(pw_3),
        .pw_4(pw_4),
        .n1(n1),
                .n2(n2),
                .n3(n3),
                .n4(n4),
        .start(start),
        .xiugai(xiugai));
        initial
        begin
        xiugai=0;
        lock=0;
        start=0;
        pw_1=0;
        pw_2=0;
        pw_3=0;
        pw_4=0;
        clear=0;
        clk=0;
        end
        always
        begin
        # 0.1 clk=~clk;
        end
        always
        begin
        #10 pw_2=1;
        #10 pw_2=0;
        #10 clear=1;
        #10 clear=0;
        #10 pw_1=1;
        #10 pw_1=0;
        #10 pw_1=1;
        #10 pw_1=0;
        #10 pw_1=1;
        #10 pw_1=0;
        #10 pw_1=1;
        #10 pw_1=0;
        #10 start=1;
        #10 start=0;
        #10 xiugai=1;
        #10 pw_4=1;
        #10 pw_4=0;
        #10 pw_2=1;
        #10 pw_2=0;
        #10 pw_3=1;
        #10 pw_3=0;
        #10 pw_1=1;
        #10 pw_1=0;
        #10 xiugai=0;
        #10 lock=1;
        #10 lock=0;
        #10 pw_4=1;
        #10 pw_4=0;
        #10 pw_2=1;
        #10 pw_2=0;
        #10 pw_3=1;
        #10 pw_3=0;
        #10 pw_1=1;
        #10 pw_1=0;
        #10 start=1;
        #10 start=0;
       
        end
        
endmodule
