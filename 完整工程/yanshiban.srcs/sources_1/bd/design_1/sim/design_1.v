//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Tue May 28 13:45:59 2019
//Host        : LAPTOP-JM8CLPIU running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=26,numReposBlks=26,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=26,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN design_1_clk, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
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

  wire bijiao_0_bijiao_g;
  wire bijiao_0_bijiao_r;
  wire check_g_0_led_g;
  wire check_r_0_led_r;
  wire clear_1;
  wire clk_1;
  wire [3:0]da_0_shuchu;
  wire [3:0]da_1_shuchu;
  wire erxuanyi_0_m1;
  wire erxuanyi_0_m10;
  wire erxuanyi_0_m2;
  wire erxuanyi_0_m3;
  wire erxuanyi_0_m4;
  wire erxuanyi_0_m5;
  wire erxuanyi_0_m6;
  wire erxuanyi_0_m7;
  wire erxuanyi_0_m8;
  wire erxuanyi_0_m9;
  wire erxuanyi_0_n1;
  wire erxuanyi_0_n10;
  wire erxuanyi_0_n2;
  wire erxuanyi_0_n3;
  wire erxuanyi_0_n4;
  wire erxuanyi_0_n5;
  wire erxuanyi_0_n6;
  wire erxuanyi_0_n7;
  wire erxuanyi_0_n8;
  wire erxuanyi_0_n9;
  wire huofei_0_p_out;
  wire huofei_1_p_out;
  wire [3:0]jicun_0_n1;
  wire [3:0]jicun_0_n2;
  wire [3:0]jicun_0_n3;
  wire [3:0]jicun_0_n4;
  wire jicun_0_shu01;
  wire jicun_0_shu02;
  wire jicun_0_shu03;
  wire jicun_0_shu04;
  wire jicun_0_shu05;
  wire jicun_0_shu06;
  wire jicun_0_shu07;
  wire jicun_0_shu11;
  wire jicun_0_shu12;
  wire jicun_0_shu13;
  wire jicun_0_shu14;
  wire jicun_0_shu15;
  wire jicun_0_shu16;
  wire jicun_0_shu17;
  wire jicun_0_shu21;
  wire jicun_0_shu22;
  wire jicun_0_shu23;
  wire jicun_0_shu24;
  wire jicun_0_shu25;
  wire jicun_0_shu26;
  wire jicun_0_shu27;
  wire jicun_0_shu31;
  wire jicun_0_shu32;
  wire jicun_0_shu33;
  wire jicun_0_shu34;
  wire jicun_0_shu35;
  wire jicun_0_shu36;
  wire jicun_0_shu37;
  wire jishi_0_jishi_g;
  wire jishi_0_jishi_r;
  wire jishi_0_num_0;
  wire jishi_0_num_1;
  wire jishi_0_num_2;
  wire jishi_0_num_3;
  wire jishi_0_num_4;
  wire jishi_0_num_5;
  wire jishi_0_num_6;
  wire [1:0]jishu_0_count;
  wire jishu_0_kaishi;
  wire jishu_0_shu01;
  wire jishu_0_shu02;
  wire jishu_0_shu03;
  wire jishu_0_shu04;
  wire jishu_0_shu05;
  wire jishu_0_shu06;
  wire jishu_0_shu07;
  wire [1:0]jishum_0_count;
  wire led_0_l1;
  wire led_0_l2;
  wire led_0_l3;
  wire led_0_l4;
  wire led_0_l5;
  wire led_0_l6;
  wire led_0_l7;
  wire led_0_l8;
  wire lock_1;
  wire [3:0]mima_0_n1;
  wire [3:0]mima_0_n2;
  wire [3:0]mima_0_n3;
  wire [3:0]mima_0_n4;
  wire pianxuan1_0_num0_1;
  wire pianxuan1_0_num0_2;
  wire pianxuan1_0_num0_3;
  wire pianxuan1_0_num0_4;
  wire pianxuan1_0_num0_5;
  wire pianxuan1_0_num0_6;
  wire pianxuan1_0_num0_7;
  wire [3:0]pianxuan1_0_number;
  wire pianxuan2_0_num0_1;
  wire pianxuan2_0_num0_2;
  wire pianxuan2_0_num0_3;
  wire pianxuan2_0_num0_4;
  wire pianxuan2_0_num0_5;
  wire pianxuan2_0_num0_6;
  wire pianxuan2_0_num0_7;
  wire [3:0]pianxuan2_0_number2;
  wire pw_10_1;
  wire pw_1_1;
  wire pw_2_1;
  wire pw_3_1;
  wire pw_4_1;
  wire pw_5_1;
  wire pw_6_1;
  wire pw_7_1;
  wire pw_8_1;
  wire pw_9_1;
  wire start_1;
  wire xiaodou_0_key_out;
  wire xiaodou_1_key_out;
  wire xiaodou_2_key_out;
  wire xiaodou_3_key_out;
  wire xiaodou_4_key_out;
  wire xiaodou_5_key_out;
  wire xiaodou_6_key_out;
  wire xiaodou_7_key_out;
  wire xiaodou_8_key_out;
  wire xiaodou_9_key_out;
  wire xiugai_1;

  assign clear_1 = clear;
  assign clk_1 = clk;
  assign l1 = led_0_l1;
  assign l2 = led_0_l2;
  assign l3 = led_0_l3;
  assign l4 = led_0_l4;
  assign l5 = led_0_l5;
  assign l6 = led_0_l6;
  assign l7 = led_0_l7;
  assign l8 = led_0_l8;
  assign led_g = check_g_0_led_g;
  assign led_g_1 = check_g_0_led_g;
  assign led_g_2 = check_g_0_led_g;
  assign led_g_3 = check_g_0_led_g;
  assign led_r = check_r_0_led_r;
  assign led_r_1 = check_r_0_led_r;
  assign led_r_2 = check_r_0_led_r;
  assign led_r_3 = check_r_0_led_r;
  assign lock_1 = lock;
  assign num0_1 = pianxuan1_0_num0_1;
  assign num0_1_1 = pianxuan2_0_num0_1;
  assign num0_2 = pianxuan1_0_num0_2;
  assign num0_2_1 = pianxuan2_0_num0_2;
  assign num0_3 = pianxuan1_0_num0_3;
  assign num0_3_1 = pianxuan2_0_num0_3;
  assign num0_4 = pianxuan1_0_num0_4;
  assign num0_4_1 = pianxuan2_0_num0_4;
  assign num0_5 = pianxuan1_0_num0_5;
  assign num0_5_1 = pianxuan2_0_num0_5;
  assign num0_6 = pianxuan1_0_num0_6;
  assign num0_6_1 = pianxuan2_0_num0_6;
  assign num0_7 = pianxuan1_0_num0_7;
  assign num0_7_1 = pianxuan2_0_num0_7;
  assign number[3:0] = pianxuan1_0_number;
  assign number2[3:0] = pianxuan2_0_number2;
  assign pw_10_1 = pw_10;
  assign pw_1_1 = pw_1;
  assign pw_2_1 = pw_2;
  assign pw_3_1 = pw_3;
  assign pw_4_1 = pw_4;
  assign pw_5_1 = pw_5;
  assign pw_6_1 = pw_6;
  assign pw_7_1 = pw_7;
  assign pw_8_1 = pw_8;
  assign pw_9_1 = pw_9;
  assign start_1 = start;
  assign xiugai_1 = xiugai;
  design_1_bijiao_0_0 bijiao_0
       (.bijiao_g(bijiao_0_bijiao_g),
        .bijiao_r(bijiao_0_bijiao_r),
        .clk(clk_1),
        .in0(jicun_0_n1),
        .in1(jicun_0_n2),
        .in2(jicun_0_n3),
        .in3(jicun_0_n4),
        .lock(lock_1),
        .mima0(mima_0_n1),
        .mima1(mima_0_n2),
        .mima2(mima_0_n3),
        .mima3(mima_0_n4),
        .start(start_1));
  design_1_check_g_0_0 check_g_0
       (.bijiao_g(bijiao_0_bijiao_g),
        .jishi_g(jishi_0_jishi_g),
        .led_g(check_g_0_led_g));
  design_1_check_r_0_0 check_r_0
       (.bijiao_r(bijiao_0_bijiao_r),
        .jishi_r(jishi_0_jishi_r),
        .led_r(check_r_0_led_r));
  design_1_da_0_0 da_0
       (.shuchu(da_0_shuchu),
        .shuru(clk_1),
        .shuru1(erxuanyi_0_m1),
        .shuru10(erxuanyi_0_m10),
        .shuru2(erxuanyi_0_m2),
        .shuru3(erxuanyi_0_m3),
        .shuru4(erxuanyi_0_m4),
        .shuru5(erxuanyi_0_m5),
        .shuru6(erxuanyi_0_m6),
        .shuru7(erxuanyi_0_m7),
        .shuru8(erxuanyi_0_m8),
        .shuru9(erxuanyi_0_m9));
  design_1_da_0_1 da_1
       (.shuchu(da_1_shuchu),
        .shuru(clk_1),
        .shuru1(erxuanyi_0_n1),
        .shuru10(erxuanyi_0_n10),
        .shuru2(erxuanyi_0_n2),
        .shuru3(erxuanyi_0_n3),
        .shuru4(erxuanyi_0_n4),
        .shuru5(erxuanyi_0_n5),
        .shuru6(erxuanyi_0_n6),
        .shuru7(erxuanyi_0_n7),
        .shuru8(erxuanyi_0_n8),
        .shuru9(erxuanyi_0_n9));
  design_1_erxuanyi_0_0 erxuanyi_0
       (.green1(check_g_0_led_g),
        .m1(erxuanyi_0_m1),
        .m10(erxuanyi_0_m10),
        .m2(erxuanyi_0_m2),
        .m3(erxuanyi_0_m3),
        .m4(erxuanyi_0_m4),
        .m5(erxuanyi_0_m5),
        .m6(erxuanyi_0_m6),
        .m7(erxuanyi_0_m7),
        .m8(erxuanyi_0_m8),
        .m9(erxuanyi_0_m9),
        .n1(erxuanyi_0_n1),
        .n10(erxuanyi_0_n10),
        .n2(erxuanyi_0_n2),
        .n3(erxuanyi_0_n3),
        .n4(erxuanyi_0_n4),
        .n5(erxuanyi_0_n5),
        .n6(erxuanyi_0_n6),
        .n7(erxuanyi_0_n7),
        .n8(erxuanyi_0_n8),
        .n9(erxuanyi_0_n9),
        .pw_1(xiaodou_6_key_out),
        .pw_10(xiaodou_5_key_out),
        .pw_2(xiaodou_7_key_out),
        .pw_3(xiaodou_8_key_out),
        .pw_4(xiaodou_9_key_out),
        .pw_5(xiaodou_0_key_out),
        .pw_6(xiaodou_1_key_out),
        .pw_7(xiaodou_2_key_out),
        .pw_8(xiaodou_3_key_out),
        .pw_9(xiaodou_4_key_out),
        .xiugai(xiugai_1));
  design_1_huofei_0_0 huofei_0
       (.p_out(huofei_0_p_out),
        .pw1(erxuanyi_0_m1),
        .pw10(erxuanyi_0_m10),
        .pw2(erxuanyi_0_m2),
        .pw3(erxuanyi_0_m3),
        .pw4(erxuanyi_0_m4),
        .pw5(erxuanyi_0_m5),
        .pw6(erxuanyi_0_m6),
        .pw7(erxuanyi_0_m7),
        .pw8(erxuanyi_0_m8),
        .pw9(erxuanyi_0_m9));
  design_1_huofei_0_1 huofei_1
       (.p_out(huofei_1_p_out),
        .pw1(erxuanyi_0_n1),
        .pw10(erxuanyi_0_n10),
        .pw2(erxuanyi_0_n2),
        .pw3(erxuanyi_0_n3),
        .pw4(erxuanyi_0_n4),
        .pw5(erxuanyi_0_n5),
        .pw6(erxuanyi_0_n6),
        .pw7(erxuanyi_0_n7),
        .pw8(erxuanyi_0_n8),
        .pw9(erxuanyi_0_n9));
  design_1_jicun_0_0 jicun_0
       (.clk(clk_1),
        .jishu(jishu_0_count),
        .kaishi(jishu_0_kaishi),
        .lock(lock_1),
        .n1(jicun_0_n1),
        .n2(jicun_0_n2),
        .n3(jicun_0_n3),
        .n4(jicun_0_n4),
        .red(check_r_0_led_r),
        .shu01(jicun_0_shu01),
        .shu02(jicun_0_shu02),
        .shu03(jicun_0_shu03),
        .shu04(jicun_0_shu04),
        .shu05(jicun_0_shu05),
        .shu06(jicun_0_shu06),
        .shu07(jicun_0_shu07),
        .shu11(jicun_0_shu11),
        .shu12(jicun_0_shu12),
        .shu13(jicun_0_shu13),
        .shu14(jicun_0_shu14),
        .shu15(jicun_0_shu15),
        .shu16(jicun_0_shu16),
        .shu17(jicun_0_shu17),
        .shu21(jicun_0_shu21),
        .shu22(jicun_0_shu22),
        .shu23(jicun_0_shu23),
        .shu24(jicun_0_shu24),
        .shu25(jicun_0_shu25),
        .shu26(jicun_0_shu26),
        .shu27(jicun_0_shu27),
        .shu31(jicun_0_shu31),
        .shu32(jicun_0_shu32),
        .shu33(jicun_0_shu33),
        .shu34(jicun_0_shu34),
        .shu35(jicun_0_shu35),
        .shu36(jicun_0_shu36),
        .shu37(jicun_0_shu37),
        .shuru(da_0_shuchu));
  design_1_jishi_0_0 jishi_0
       (.clk(clk_1),
        .green(check_g_0_led_g),
        .jicun(jishu_0_kaishi),
        .jishi_g(jishi_0_jishi_g),
        .jishi_r(jishi_0_jishi_r),
        .num_0(jishi_0_num_0),
        .num_1(jishi_0_num_1),
        .num_2(jishi_0_num_2),
        .num_3(jishi_0_num_3),
        .num_4(jishi_0_num_4),
        .num_5(jishi_0_num_5),
        .num_6(jishi_0_num_6),
        .red(check_r_0_led_r));
  design_1_jishu_0_0 jishu_0
       (.clear(clear_1),
        .count(jishu_0_count),
        .green(check_g_0_led_g),
        .key_in(huofei_0_p_out),
        .shu01(jishu_0_shu01),
        .shu02(jishu_0_shu02),
        .shu03(jishu_0_shu03),
        .shu04(jishu_0_shu04),
        .shu05(jishu_0_shu05),
        .shu06(jishu_0_shu06),
        .shu07(jishu_0_shu07));
  design_1_jishum_0_0 jishum_0
       (.clear(clear_1),
        .count(jishum_0_count),
        .key_in(huofei_1_p_out));
  design_1_led_0_0 led_0
       (.clk(clk_1),
        .l1(led_0_l1),
        .l2(led_0_l2),
        .l3(led_0_l3),
        .l4(led_0_l4),
        .l5(led_0_l5),
        .l6(led_0_l6),
        .l7(led_0_l7),
        .l8(led_0_l8),
        .red(check_r_0_led_r));
  design_1_mima_0_0 mima_0
       (.clk(clk_1),
        .jishu(jishum_0_count),
        .n1(mima_0_n1),
        .n2(mima_0_n2),
        .n3(mima_0_n3),
        .n4(mima_0_n4),
        .shuru(da_1_shuchu));
  design_1_pianxuan1_0_0 pianxuan1_0
       (.clk(clk_1),
        .num0_1(pianxuan1_0_num0_1),
        .num0_2(pianxuan1_0_num0_2),
        .num0_3(pianxuan1_0_num0_3),
        .num0_4(pianxuan1_0_num0_4),
        .num0_5(pianxuan1_0_num0_5),
        .num0_6(pianxuan1_0_num0_6),
        .num0_7(pianxuan1_0_num0_7),
        .number(pianxuan1_0_number),
        .shu01(jicun_0_shu01),
        .shu02(jicun_0_shu02),
        .shu03(jicun_0_shu03),
        .shu04(jicun_0_shu04),
        .shu05(jicun_0_shu05),
        .shu06(jicun_0_shu06),
        .shu07(jicun_0_shu07),
        .shu11(jicun_0_shu11),
        .shu12(jicun_0_shu12),
        .shu13(jicun_0_shu13),
        .shu14(jicun_0_shu14),
        .shu15(jicun_0_shu15),
        .shu16(jicun_0_shu16),
        .shu17(jicun_0_shu17),
        .shu21(jicun_0_shu21),
        .shu22(jicun_0_shu22),
        .shu23(jicun_0_shu23),
        .shu24(jicun_0_shu24),
        .shu25(jicun_0_shu25),
        .shu26(jicun_0_shu26),
        .shu27(jicun_0_shu27),
        .shu31(jicun_0_shu31),
        .shu32(jicun_0_shu32),
        .shu33(jicun_0_shu33),
        .shu34(jicun_0_shu34),
        .shu35(jicun_0_shu35),
        .shu36(jicun_0_shu36),
        .shu37(jicun_0_shu37));
  design_1_pianxuan2_0_0 pianxuan2_0
       (.clk(clk_1),
        .num0_1(pianxuan2_0_num0_1),
        .num0_2(pianxuan2_0_num0_2),
        .num0_3(pianxuan2_0_num0_3),
        .num0_4(pianxuan2_0_num0_4),
        .num0_5(pianxuan2_0_num0_5),
        .num0_6(pianxuan2_0_num0_6),
        .num0_7(pianxuan2_0_num0_7),
        .number2(pianxuan2_0_number2),
        .red(check_r_0_led_r),
        .shu01(jishu_0_shu01),
        .shu02(jishu_0_shu02),
        .shu03(jishu_0_shu03),
        .shu04(jishu_0_shu04),
        .shu05(jishu_0_shu05),
        .shu06(jishu_0_shu06),
        .shu07(jishu_0_shu07),
        .shu11(jishi_0_num_0),
        .shu12(jishi_0_num_1),
        .shu13(jishi_0_num_2),
        .shu14(jishi_0_num_3),
        .shu15(jishi_0_num_4),
        .shu16(jishi_0_num_5),
        .shu17(jishi_0_num_6));
  design_1_xiaodou_0_0 xiaodou_0
       (.clk(clk_1),
        .key_in(pw_5_1),
        .key_out(xiaodou_0_key_out));
  design_1_xiaodou_0_1 xiaodou_1
       (.clk(clk_1),
        .key_in(pw_6_1),
        .key_out(xiaodou_1_key_out));
  design_1_xiaodou_0_2 xiaodou_2
       (.clk(clk_1),
        .key_in(pw_7_1),
        .key_out(xiaodou_2_key_out));
  design_1_xiaodou_2_0 xiaodou_3
       (.clk(clk_1),
        .key_in(pw_8_1),
        .key_out(xiaodou_3_key_out));
  design_1_xiaodou_2_1 xiaodou_4
       (.clk(clk_1),
        .key_in(pw_9_1),
        .key_out(xiaodou_4_key_out));
  design_1_xiaodou_4_0 xiaodou_5
       (.clk(clk_1),
        .key_in(pw_10_1),
        .key_out(xiaodou_5_key_out));
  design_1_xiaodou_0_3 xiaodou_6
       (.clk(clk_1),
        .key_in(pw_1_1),
        .key_out(xiaodou_6_key_out));
  design_1_xiaodou_0_4 xiaodou_7
       (.clk(clk_1),
        .key_in(pw_2_1),
        .key_out(xiaodou_7_key_out));
  design_1_xiaodou_0_5 xiaodou_8
       (.clk(clk_1),
        .key_in(pw_3_1),
        .key_out(xiaodou_8_key_out));
  design_1_xiaodou_0_6 xiaodou_9
       (.clk(clk_1),
        .key_in(pw_4_1),
        .key_out(xiaodou_9_key_out));
endmodule
