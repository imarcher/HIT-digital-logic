// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:pianxuan1:1.0
// IP Revision: 1

(* X_CORE_INFO = "pianxuan1,Vivado 2017.4" *)
(* CHECK_LICENSE_TYPE = "design_1_pianxuan1_0_0,pianxuan1,{}" *)
(* CORE_GENERATION_INFO = "design_1_pianxuan1_0_0,pianxuan1,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=pianxuan1,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_pianxuan1_0_0 (
  shu01,
  shu02,
  shu03,
  shu04,
  shu05,
  shu06,
  shu07,
  shu11,
  shu12,
  shu13,
  shu14,
  shu15,
  shu16,
  shu17,
  shu21,
  shu22,
  shu23,
  shu24,
  shu25,
  shu26,
  shu27,
  shu31,
  shu32,
  shu33,
  shu34,
  shu35,
  shu36,
  shu37,
  clk,
  number,
  num0_1,
  num0_2,
  num0_3,
  num0_4,
  num0_5,
  num0_6,
  num0_7
);

input wire shu01;
input wire shu02;
input wire shu03;
input wire shu04;
input wire shu05;
input wire shu06;
input wire shu07;
input wire shu11;
input wire shu12;
input wire shu13;
input wire shu14;
input wire shu15;
input wire shu16;
input wire shu17;
input wire shu21;
input wire shu22;
input wire shu23;
input wire shu24;
input wire shu25;
input wire shu26;
input wire shu27;
input wire shu31;
input wire shu32;
input wire shu33;
input wire shu34;
input wire shu35;
input wire shu36;
input wire shu37;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
output wire [3 : 0] number;
output wire num0_1;
output wire num0_2;
output wire num0_3;
output wire num0_4;
output wire num0_5;
output wire num0_6;
output wire num0_7;

  pianxuan1 inst (
    .shu01(shu01),
    .shu02(shu02),
    .shu03(shu03),
    .shu04(shu04),
    .shu05(shu05),
    .shu06(shu06),
    .shu07(shu07),
    .shu11(shu11),
    .shu12(shu12),
    .shu13(shu13),
    .shu14(shu14),
    .shu15(shu15),
    .shu16(shu16),
    .shu17(shu17),
    .shu21(shu21),
    .shu22(shu22),
    .shu23(shu23),
    .shu24(shu24),
    .shu25(shu25),
    .shu26(shu26),
    .shu27(shu27),
    .shu31(shu31),
    .shu32(shu32),
    .shu33(shu33),
    .shu34(shu34),
    .shu35(shu35),
    .shu36(shu36),
    .shu37(shu37),
    .clk(clk),
    .number(number),
    .num0_1(num0_1),
    .num0_2(num0_2),
    .num0_3(num0_3),
    .num0_4(num0_4),
    .num0_5(num0_5),
    .num0_6(num0_6),
    .num0_7(num0_7)
  );
endmodule
