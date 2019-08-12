`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2019 01:58:24 PM
// Design Name: 
// Module Name: set_counter
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


module set_counter(
    input clk,
    input resetn,
    input usb_uart_rxd,
    output ja_pin1_io,
    output ja_pin2_io,
    output ja_pin3_io,
    output ja_pin4_io,
    output ja_pin5_io,
    output ja_pin6_io,
    output ja_pin7_io,
    output ja_pin8_io,
    output ja_pin9_io,
    output ja_pin10_io
    );
    wire sys_clock;
    clk_wiz_0 clk_wiz (
    // Clock out ports  
    .clk_out1(sys_clock),
    // Status and control signals               
    .resetn(resetn), 
   // Clock in ports
    .clk_in1(clk)
    );

    rotary_encoder_0(
    .reset  (resetn),
    .sys_clock (sys_clock),
    .ja_pin1_io (ja_pin1_io),
    .ja_pin2_io (ja_pin2_io),
    .ja_pin3_io (ja_pin3_io),
    .ja_pin4_io (ja_pin4_io),
    .ja_pin5_io (ja_pin5_io),
    .ja_pin6_io (ja_pin6_io),
    .ja_pin7_io (ja_pin7_io),
    .ja_pin8_io (ja_pin8_io),
    .ja_pin9_io (ja_pin9_io),
    .ja_pin10_io (ja_pin10_io)
    );
endmodule
