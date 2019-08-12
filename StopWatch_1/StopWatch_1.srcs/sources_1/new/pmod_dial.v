`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2019 04:13:25 PM
// Design Name: 
// Module Name: pmod_dial
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


module pmod_dial
#(
  parameter default_ms_limit = 100000,
  parameter ms_limit = default_ms_limit
) (
   input clk,
   input [7:0] switch,
   input [4:0] btn,
   output reg [7:0] led,
   output [7:0] ssd,
   output ssdcat,
   output ssdcat,

   input enc_a,
   input enc_b,
   input enc_sw,
   input enc_btn
   );
   
   wire [7:0] switch_db;
   wire [4:0] btn_db;
   wire enc_a_db;
   wire enc_b_db;
   wire enc_sw_db;
   wire enc_btn_db;
   
   wire [7:0] switch_rise;
   wire [4:0] btn_rise;
   wire enc_a_rise;
   wire enc_b_rise;
   wire enc_sw_rise;
   wire enc_btn_rise;
 
   wire [7:0] switch_fall;
   wire [4:0] btn_fall;
   wire enc_a_fall;
   wire enc_b_fall;
   wire enc_sw_fall;
   wire enc_btn_fall;
     debounce
     #(
       .width(17),
       .bounce_limit(ms_limit*3)
       )
   debounce
     (
      .clk(clk),
      .switch_in({enc_a,enc_b,enc_sw,enc_btn,
          btn,switch}),
      .switch_out({enc_a_db,enc_b_db,enc_sw_db,enc_btn_db,
           btn_db,switch_db}),
      .switch_rise({enc_a_rise,enc_b_rise,enc_sw_rise,enc_btn_rise,
            btn_rise,switch_rise}),
      .switch_fall({enc_a_fall,enc_b_fall,enc_sw_fall,enc_btn_fall,
            btn_fall,switch_fall})
      );
      
      
      reg [7:0] enc_byte = 0;
      always @(posedge clk)
        if (enc_a_rise)
          if (!enc_b_db)
        enc_byte <= enc_byte-1;
          else
        enc_byte <= enc_byte+1;
        
        
      
/*        ssd
          #(ms_limit)
        sse
          (
           .clk(clk),
           .value(enc_byte),
           .ssd(ssd),
           .ssdcat(ssdcat)
           );
           */
           
           reg [3:0] v_f1;
           wire [7:0] an_f1;
           segment_anode_set sse(
            .bcd(v_f1),
            .anum(3'd0),
            .seg(ssd),
            .an(an_f1)
           );
           
        always @(posedge clk)
        led <= {switch_db[7:2],enc_b_db,enc_a_db};

endmodule

