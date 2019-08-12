-makelib ies/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies/xpm \
  "C:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../StopWatch_1.srcs/sources_1/ip/twentyFive_mhz_clk/twentyFive_mhz_clk_clk_wiz.v" \
  "../../../../StopWatch_1.srcs/sources_1/ip/twentyFive_mhz_clk/twentyFive_mhz_clk.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

