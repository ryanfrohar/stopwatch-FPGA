`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2019 04:20:51 PM
// Design Name: 
// Module Name: ssd
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


module ssd
  #(
    parameter cat_period = 1000
    )
  (
   input clk,
   input [7:0] value,
   output reg [6:0] ssd,
   output reg ssdcat
   );

  wire [3:0]  digit;
  always @(posedge clk)
    case (digit)
	0 : ssd = 8'b11000000;
    1 : ssd = 8'b11111001;
    2 : ssd = 8'b10100100;
    3 : ssd = 8'b10110000;
    4 : ssd = 8'b10011001;
    5 : ssd = 8'b10010010;
    6 : ssd = 8'b10000010;
    7 : ssd = 8'b11111000;
    8 : ssd = 8'b10000000;
    9 : ssd = 8'b10010000;
    default : ssd = 8'b10000000; 
    endcase

  reg [0:$clog2(cat_period)-1] count = 0;
  always @(posedge clk) count <= count+1;
  always @(posedge clk) ssdcat <= count[0];
  assign digit = count[0] ? value[7:4] : value[3:0];
endmodule
