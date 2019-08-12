`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/19/2019 01:00:05 PM
// Design Name: 
// Module Name: clk_divider
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


module clk_divider(
    input clk,
    input reset,
    output reg ten_khz_clk,
    output reg refresh_clk
    );
    wire ten_mhz_clk;
    integer ten_khz_count, refresh_count;
    
    initial begin
        ten_khz_count = 0;
        refresh_count = 0;
    end
    
    
    twentyFive_mhz_clk clkwiz(
          // Clock out ports
          .clk_out1 (ten_mhz_clk),
          // Status and control signals
          //.reset,
          //.locked,
         // Clock in ports
          .clk_in1  (clk)
     );
    always @ (posedge ten_mhz_clk) begin
        if(reset) begin
            ten_khz_count = 0;
            refresh_count = 0;
        end
        else begin
            if(ten_khz_count == 1250) begin
                ten_khz_count = 0;
                ten_khz_clk = !ten_khz_clk;
            end
            if(refresh_count == 30000) begin
                refresh_count = 0;
                refresh_clk = !refresh_clk;
            end
            refresh_count = refresh_count + 1;
            ten_khz_count = ten_khz_count + 1;
       end
    end
    
endmodule
