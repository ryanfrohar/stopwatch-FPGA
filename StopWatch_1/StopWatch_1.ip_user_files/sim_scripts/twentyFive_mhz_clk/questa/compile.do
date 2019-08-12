vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm

vlog -work xil_defaultlib -64 -sv "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"C:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"../../../../StopWatch_1.srcs/sources_1/ip/twentyFive_mhz_clk/twentyFive_mhz_clk_clk_wiz.v" \
"../../../../StopWatch_1.srcs/sources_1/ip/twentyFive_mhz_clk/twentyFive_mhz_clk.v" \

vlog -work xil_defaultlib "glbl.v"

