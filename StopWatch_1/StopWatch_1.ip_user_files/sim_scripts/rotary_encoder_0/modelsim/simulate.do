onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L microblaze_v10_0_0 -L lmb_v10_v3_0_9 -L lmb_bram_if_cntlr_v4_0_10 -L blk_mem_gen_v8_3_4 -L axi_lite_ipif_v3_0_4 -L mdm_v3_2_7 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_10 -L lib_pkg_v1_0_2 -L lib_srl_fifo_v1_0_2 -L axi_uartlite_v2_0_14 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_10 -L fifo_generator_v13_1_2 -L axi_data_fifo_v2_1_9 -L axi_crossbar_v2_1_11 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.rotary_encoder_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {rotary_encoder_0.udo}

run -all

quit -force
