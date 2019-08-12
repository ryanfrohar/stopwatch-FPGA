#----
#set_property IOSTANDARD LVCMOS33 [get_ports clk]
#----
#set_property PACKAGE_PIN Y9 [get_ports clk]
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz

create_clock -period 10.000 [get_ports clk]

#----
#set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {switch[7]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {switch[6]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {switch[5]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {switch[4]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {switch[3]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {switch[2]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {switch[1]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {switch[0]}]
#----

#set_property PACKAGE_PIN T22 [get_ports {led[0]}]
#set_property PACKAGE_PIN T21 [get_ports {led[1]}]
#set_property PACKAGE_PIN U22 [get_ports {led[2]}]
#set_property PACKAGE_PIN U21 [get_ports {led[3]}]
#set_property PACKAGE_PIN V22 [get_ports {led[4]}]
#set_property PACKAGE_PIN W22 [get_ports {led[5]}]
#set_property PACKAGE_PIN U19 [get_ports {led[6]}]
#set_property PACKAGE_PIN U14 [get_ports {led[7]}]
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; #IO_L18P_T2_A24_15 Sch=led[0]
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; #IO_L24P_T3_RS1_15 Sch=led[1]
set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; #IO_L17N_T2_A25_15 Sch=led[2]
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { led[3] }]; #IO_L8P_T1_D11_14 Sch=led[3]
set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { led[4] }]; #IO_L7P_T1_D09_14 Sch=led[4]
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { led[5] }]; #IO_L18N_T2_A11_D27_14 Sch=led[5]
set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { led[6] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { led[7] }]; #IO_L18P_T2_A12_D28_14 Sch=led[7]
#set_property PACKAGE_PIN F22 [get_ports {switch[0]}]
#set_property PACKAGE_PIN G22 [get_ports {switch[1]}]
#set_property PACKAGE_PIN H22 [get_ports {switch[2]}]
#set_property PACKAGE_PIN F21 [get_ports {switch[3]}]
#set_property PACKAGE_PIN H19 [get_ports {switch[4]}]
#set_property PACKAGE_PIN H18 [get_ports {switch[5]}]
#set_property PACKAGE_PIN H17 [get_ports {switch[6]}]
#set_property PACKAGE_PIN M15 [get_ports {switch[7]}]
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { switch[0] }]; #IO_L24N_T3_RS0_15 Sch=sw[0]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { switch[1] }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]
set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { switch[2] }]; #IO_L6N_T0_D08_VREF_14 Sch=sw[2]
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { switch[3] }]; #IO_L13N_T2_MRCC_14 Sch=sw[3]
set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { switch[4] }]; #IO_L12N_T1_MRCC_14 Sch=sw[4]
set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { switch[5] }]; #IO_L7N_T1_D10_14 Sch=sw[5]
set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { switch[6] }]; #IO_L17N_T2_A13_D29_14 Sch=sw[6]
set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { switch[7] }]; #IO_L5N_T0_D07_14 Sch=sw[7]

#----
#set_property IOSTANDARD LVCMOS33 [get_ports {ssd[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ssd[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ssd[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ssd[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ssd[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ssd[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ssd[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports ssdcat]
#----

#set_property PACKAGE_PIN Y11 [get_ports {ssd[6]}]
#set_property PACKAGE_PIN AA11 [get_ports {ssd[5]}]
#set_property PACKAGE_PIN Y10 [get_ports {ssd[4]}]
#set_property PACKAGE_PIN AA9 [get_ports {ssd[3]}]
#set_property PACKAGE_PIN W12 [get_ports {ssd[2]}]
#set_property PACKAGE_PIN W11 [get_ports {ssd[1]}]
#set_property PACKAGE_PIN V10 [get_ports {ssd[0]}]
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { ssd[0] }]; #IO_L24N_T3_A00_D16_14 Sch=ca
set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { ssd[1] }]; #IO_25_14 Sch=cb
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { ssd[2] }]; #IO_25_15 Sch=cc
set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { ssd[3] }]; #IO_L17P_T2_A26_15 Sch=cd
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { ssd[4] }]; #IO_L13P_T2_MRCC_14 Sch=ce
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { ssd[5] }]; #IO_L19P_T3_A10_D26_14 Sch=cf
set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { ssd[6] }]; #IO_L4P_T0_D04_14 Sch=cg
set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { ssdcat }]; #IO_L4P_T0_D04_14 Sch=dp

#NEED TO ADD
#set_property PACKAGE_PIN W8 [get_ports ssdcat]

#----
#set_property IOSTANDARD LVCMOS25 [get_ports {btn[4]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {btn[3]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {btn[2]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {btn[1]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {btn[0]}]
#----

#set_property PACKAGE_PIN P16 [get_ports {btn[4]}]
#set_property PACKAGE_PIN R16 [get_ports {btn[3]}]
#set_property PACKAGE_PIN R18 [get_ports {btn[2]}]
#set_property PACKAGE_PIN T18 [get_ports {btn[1]}]
#set_property PACKAGE_PIN N15 [get_ports {btn[0]}]
set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { btn[4] }]; #IO_L9P_T1_DQS_14 Sch=btnc
set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { btn[3] }]; #IO_L4N_T0_D05_14 Sch=btnu
set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { btn[2] }]; #IO_L12P_T1_MRCC_14 Sch=btnl
set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { btn[1] }]; #IO_L10N_T1_D15_14 Sch=btnr
set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { btn[0] }]; #IO_L9N_T1_DQS_D13_14 Sch=btnd

#----
#set_property IOSTANDARD LVCMOS33 [get_ports enc_a]
#set_property IOSTANDARD LVCMOS33 [get_ports enc_b]
#set_property IOSTANDARD LVCMOS33 [get_ports enc_btn]
#set_property IOSTANDARD LVCMOS33 [get_ports enc_sw]
#----
#set_property PACKAGE_PIN AB7 [get_ports enc_a]
#set_property PACKAGE_PIN AB6 [get_ports enc_b]
#set_property PACKAGE_PIN Y4 [get_ports enc_btn]
#set_property PACKAGE_PIN AA4 [get_ports enc_sw]

set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { enc_a }]; #IO_L20N_T3_A19_15 Sch=ja[1]
set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports {enc_b }]; #IO_L21N_T3_DQS_A18_15 Sch=ja[2]
set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { enc_btn }]; #IO_L21P_T3_DQS_15 Sch=ja[3]
set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { enc_sw }]; #IO_L18N_T2_A23_15 Sch=ja[4]