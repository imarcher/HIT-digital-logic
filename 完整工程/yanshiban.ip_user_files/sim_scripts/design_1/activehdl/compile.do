vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_jicun_0_0/sim/design_1_jicun_0_0.v" \
"../../../bd/design_1/ip/design_1_erxuanyi_0_0/sim/design_1_erxuanyi_0_0.v" \
"../../../bd/design_1/ip/design_1_huofei_0_0/sim/design_1_huofei_0_0.v" \
"../../../bd/design_1/ip/design_1_jishu_0_0/sim/design_1_jishu_0_0.v" \
"../../../bd/design_1/ip/design_1_da_0_0/sim/design_1_da_0_0.v" \
"../../../bd/design_1/ip/design_1_huofei_0_1/sim/design_1_huofei_0_1.v" \
"../../../bd/design_1/ip/design_1_da_0_1/sim/design_1_da_0_1.v" \
"../../../bd/design_1/sim/design_1.v" \
"../../../bd/design_1/ip/design_1_jishi_0_0/sim/design_1_jishi_0_0.v" \
"../../../bd/design_1/ip/design_1_bijiao_0_0/sim/design_1_bijiao_0_0.v" \
"../../../bd/design_1/ip/design_1_check_g_0_0/sim/design_1_check_g_0_0.v" \
"../../../bd/design_1/ip/design_1_check_r_0_0/sim/design_1_check_r_0_0.v" \
"../../../bd/design_1/ip/design_1_pianxuan1_0_0/sim/design_1_pianxuan1_0_0.v" \
"../../../bd/design_1/ip/design_1_pianxuan2_0_0/sim/design_1_pianxuan2_0_0.v" \
"../../../bd/design_1/ip/design_1_led_0_0/sim/design_1_led_0_0.v" \
"../../../bd/design_1/ip/design_1_mima_0_0/sim/design_1_mima_0_0.v" \
"../../../bd/design_1/ip/design_1_jishum_0_0/sim/design_1_jishum_0_0.v" \
"../../../bd/design_1/ip/design_1_xiaodou_0_0/sim/design_1_xiaodou_0_0.v" \
"../../../bd/design_1/ip/design_1_xiaodou_0_1/sim/design_1_xiaodou_0_1.v" \
"../../../bd/design_1/ip/design_1_xiaodou_0_2/sim/design_1_xiaodou_0_2.v" \
"../../../bd/design_1/ip/design_1_xiaodou_2_0/sim/design_1_xiaodou_2_0.v" \
"../../../bd/design_1/ip/design_1_xiaodou_2_1/sim/design_1_xiaodou_2_1.v" \
"../../../bd/design_1/ip/design_1_xiaodou_4_0/sim/design_1_xiaodou_4_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

