vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/microblaze_v10_0_0
vlib riviera/lmb_v10_v3_0_9
vlib riviera/lmb_bram_if_cntlr_v4_0_10
vlib riviera/blk_mem_gen_v8_3_4
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/mdm_v3_2_7
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_10
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_uartlite_v2_0_14
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_10
vlib riviera/fifo_generator_v13_1_2
vlib riviera/axi_data_fifo_v2_1_9
vlib riviera/axi_crossbar_v2_1_11

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap microblaze_v10_0_0 riviera/microblaze_v10_0_0
vmap lmb_v10_v3_0_9 riviera/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_10 riviera/lmb_bram_if_cntlr_v4_0_10
vmap blk_mem_gen_v8_3_4 riviera/blk_mem_gen_v8_3_4
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_7 riviera/mdm_v3_2_7
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_10 riviera/proc_sys_reset_v5_0_10
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_14 riviera/axi_uartlite_v2_0_14
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_10 riviera/axi_register_slice_v2_1_10
vmap fifo_generator_v13_1_2 riviera/fifo_generator_v13_1_2
vmap axi_data_fifo_v2_1_9 riviera/axi_data_fifo_v2_1_9
vmap axi_crossbar_v2_1_11 riviera/axi_crossbar_v2_1_11

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" \
"C:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" \
"../../../../StopWatch_1.srcs/sources_1/ip/rotary_encoder_0/PMOD_tutorial/PMOD_tutorial/PMOD_tutorial.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../../StopWatch_1.srcs/sources_1/ip/rotary_encoder_0/PMOD_tutorial/PMOD_tutorial/PMOD_tutorial.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vcom -work microblaze_v10_0_0 -93 \
"../../../ipstatic/ipshared/7262/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../StopWatch_1.srcs/sources_1/ip/rotary_encoder_0/PMOD_tutorial/PMOD_tutorial/PMOD_tutorial.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/sim/design_1_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../ipstatic/ipshared/162e/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../StopWatch_1.srcs/sources_1/ip/rotary_encoder_0/PMOD_tutorial/PMOD_tutorial/PMOD_tutorial.srcs/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
"../../../../StopWatch_1.srcs/sources_1/ip/rotary_encoder_0/PMOD_tutorial/PMOD_tutorial/PMOD_tutorial.srcs/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_10 -93 \
"../../../ipstatic/ipshared/f4d9/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../StopWatch_1.srcs/sources_1/ip/rotary_encoder_0/PMOD_tutorial/PMOD_tutorial/PMOD_tutorial.srcs/sources_1/bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../../StopWatch_1.srcs/sources_1/ip/rotary_encoder_0/PMOD_tutorial/PMOD_tutorial/PMOD_tutorial.srcs/sources_1/bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_3_4  -v2k5 "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" \
"../../../ipstatic/ipshared/59b0/simulation/blk_mem_gen_v8_3.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" \
"../../../../StopWatch_1.srcs/sources_1/ip/rotary_encoder_0/PMOD_tutorial/PMOD_tutorial/PMOD_tutorial.srcs/sources_1/bd/design_1/ip/design_1_lmb_bram_0/sim/design_1_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../ipstatic/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_7 -93 \
"../../../ipstatic/ipshared/911b/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../StopWatch_1.srcs/sources_1/ip/rotary_encoder_0/PMOD_tutorial/PMOD_tutorial/PMOD_tutorial.srcs/sources_1/bd/design_1/ip/design_1_mdm_1_0/sim/design_1_mdm_1_0.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../ipstatic/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -93 \
"../../../ipstatic/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../StopWatch_1.srcs/sources_1/ip/rotary_encoder_0/PMOD_tutorial/PMOD_tutorial/PMOD_tutorial.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_0_25M_0/sim/design_1_rst_clk_wiz_0_25M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../ipstatic/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../ipstatic/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_14 -93 \
"../../../ipstatic/ipshared/8df9/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../StopWatch_1.srcs/sources_1/ip/rotary_encoder_0/PMOD_tutorial/PMOD_tutorial/PMOD_tutorial.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/sim/design_1_axi_uartlite_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" \
"../../../ipstatic/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" \
"../../../ipstatic/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_10  -v2k5 "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" \
"../../../ipstatic/ipshared/7efe/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_2  -v2k5 "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" \
"../../../ipstatic/ipshared/a807/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_2 -93 \
"../../../ipstatic/ipshared/a807/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_2  -v2k5 "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" \
"../../../ipstatic/ipshared/a807/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_9  -v2k5 "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" \
"../../../ipstatic/ipshared/10b8/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_11  -v2k5 "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" \
"../../../ipstatic/ipshared/d552/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" "+incdir+../../../ipstatic/ipshared/db52" "+incdir+../../../ipstatic/ipshared/7e3a/hdl" \
"../../../../StopWatch_1.srcs/sources_1/ip/rotary_encoder_0/PMOD_tutorial/PMOD_tutorial/PMOD_tutorial.srcs/sources_1/bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
"../../../../StopWatch_1.srcs/sources_1/ip/rotary_encoder_0/PMOD_tutorial/PMOD_tutorial/PMOD_tutorial.srcs/sources_1/bd/design_1/hdl/design_1.v" \
"../../../../StopWatch_1.srcs/sources_1/ip/rotary_encoder_0/PMOD_tutorial/PMOD_tutorial/PMOD_tutorial.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v" \
"../../../../StopWatch_1.srcs/sources_1/ip/rotary_encoder_0/sim/rotary_encoder_0.v" \

vlog -work xil_defaultlib "glbl.v"

