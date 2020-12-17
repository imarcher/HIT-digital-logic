//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Tue May 28 13:45:59 2019
//Host        : LAPTOP-JM8CLPIU running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clear,
    clk,
    l1,
    l2,
    l3,
    l4,
    l5,
    l6,
    l7,
    l8,
    led_g,
    led_g_1,
    led_g_2,
    led_g_3,
    led_r,
    led_r_1,
    led_r_2,
    led_r_3,
    lock,
    num0_1,
    num0_1_1,
    num0_2,
    num0_2_1,
    num0_3,
    num0_3_1,
    num0_4,
    num0_4_1,
    num0_5,
    num0_5_1,
    num0_6,
    num0_6_1,
    num0_7,
    num0_7_1,
    number,
    number2,
    pw_1,
    pw_10,
    pw_2,
    pw_3,
    pw_4,
    pw_5,
    pw_6,
    pw_7,
    pw_8,
    pw_9,
    start,
    xiugai);
  input clear;
  input clk;
  output l1;
  output l2;
  output l3;
  output l4;
  output l5;
  output l6;
  output l7;
  output l8;
  output led_g;
  output led_g_1;
  output led_g_2;
  output led_g_3;
  output led_r;
  output led_r_1;
  output led_r_2;
  output led_r_3;
  input lock;
  output num0_1;
  output num0_1_1;
  output num0_2;
  output num0_2_1;
  output num0_3;
  output num0_3_1;
  output num0_4;
  output num0_4_1;
  output num0_5;
  output num0_5_1;
  output num0_6;
  output num0_6_1;
  output num0_7;
  output num0_7_1;
  output [3:0]number;
  output [3:0]number2;
  input pw_1;
  input pw_10;
  input pw_2;
  input pw_3;
  input pw_4;
  input pw_5;
  input pw_6;
  input pw_7;
  input pw_8;
  input pw_9;
  input start;
  input xiugai;

  wire clear;
  wire clk;
  wire l1;
  wire l2;
  wire l3;
  wire l4;
  wire l5;
  wire l6;
  wire l7;
  wire l8;
  wire led_g;
  wire led_g_1;
  wire led_g_2;
  wire led_g_3;
  wire led_r;
  wire led_r_1;
  wire led_r_2;
  wire led_r_3;
  wire lock;
  wire num0_1;
  wire num0_1_1;
  wire num0_2;
  wire num0_2_1;
  wire num0_3;
  wire num0_3_1;
  wire num0_4;
  wire num0_4_1;
  wire num0_5;
  wire num0_5_1;
  wire num0_6;
  wire num0_6_1;
  wire num0_7;
  wire num0_7_1;
  wire [3:0]number;
  wire [3:0]number2;
  wire pw_1;
  wire pw_10;
  wire pw_2;
  wire pw_3;
  wire pw_4;
  wire pw_5;
  wire pw_6;
  wire pw_7;
  wire pw_8;
  wire pw_9;
  wire start;
  wire xiugai;

  design_1 design_1_i
       (.clear(clear),
        .clk(clk),
        .l1(l1),
        .l2(l2),
        .l3(l3),
        .l4(l4),
        .l5(l5),
        .l6(l6),
        .l7(l7),
        .l8(l8),
        .led_g(led_g),
        .led_g_1(led_g_1),
        .led_g_2(led_g_2),
        .led_g_3(led_g_3),
        .led_r(led_r),
        .led_r_1(led_r_1),
        .led_r_2(led_r_2),
        .led_r_3(led_r_3),
        .lock(lock),
        .num0_1(num0_1),
        .num0_1_1(num0_1_1),
        .num0_2(num0_2),
        .num0_2_1(num0_2_1),
        .num0_3(num0_3),
        .num0_3_1(num0_3_1),
        .num0_4(num0_4),
        .num0_4_1(num0_4_1),
        .num0_5(num0_5),
        .num0_5_1(num0_5_1),
        .num0_6(num0_6),
        .num0_6_1(num0_6_1),
        .num0_7(num0_7),
        .num0_7_1(num0_7_1),
        .number(number),
        .number2(number2),
        .pw_1(pw_1),
        .pw_10(pw_10),
        .pw_2(pw_2),
        .pw_3(pw_3),
        .pw_4(pw_4),
        .pw_5(pw_5),
        .pw_6(pw_6),
        .pw_7(pw_7),
        .pw_8(pw_8),
        .pw_9(pw_9),
        .start(start),
        .xiugai(xiugai));
endmodule
