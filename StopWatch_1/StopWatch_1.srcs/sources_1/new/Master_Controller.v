`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2019 01:42:34 PM
// Design Name: 
// Module Name: Master_Controller
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

//------------------------------------------------------------  
module Master_Controller(
   input clk,
   input mode,
   input reset,
   input start,
   input stop,
   output reg ready,
   output reg [7:0] seg,
   output reg [7:0] an
   
   );
//------------------------------------------------------------ 

    //States
    reg [2:0] state, nextstate;
    parameter upWait=0, downWait=1, up=2, down=3, resetState=4;
    // Counter Control
    reg load;
    reg enable;
    reg updn;
    initial begin
        load = 0;
        enable = 0;
    end
    // Display Control
    integer display;
    initial display = 0;
    // Master Controller Value Registers
    reg [3:0] v_f1;
    reg [3:0] v_f2;
    reg [3:0] v_f3;
    reg [3:0] v_f4;
    reg [3:0] v_s1;
    reg [2:0] v_s2;
    reg [3:0] v_m1;
    reg [3:0] v_m2;
    initial begin
        v_f1 = 4'b0;
        v_f2 = 4'b0;
        v_f3 = 4'b0;
        v_f4 = 4'b0;
        v_s1 = 4'b0;
        v_s2 = 4'b0;
        v_m1 = 4'b0;
        v_m2 = 4'b0;
    end
    // Up/Down Counter Value Registers
    wire [3:0] vUpDown_f1;
    wire [3:0] vUpDown_f2;
    wire [3:0] vUpDown_f3;
    wire [3:0] vUpDown_f4;
    wire [3:0] vUpDown_s1;
    wire [2:0] vUpDown_s2;
    wire [3:0] vUpDown_m1;
    wire [3:0] vUpDown_m2;
    // Clock Divider
    wire ten_khz_clk;
    wire refresh_clk;
    clk_divider clk_div(
        .clk            (clk),
        .ten_khz_clk    (ten_khz_clk),
        .refresh_clk    (refresh_clk)
    );
    
    always @(posedge refresh_clk or posedge reset) begin
        if(reset) begin
            state <= resetState;
        end
        else begin
            state <= nextstate;
        end
    end
    
    always @(state or start or mode or stop) begin
        case(state)
            upWait: begin
                if(start & mode) nextstate = up;
                else if(!mode) nextstate = downWait;
                else nextstate = upWait;
            end
            downWait: begin
                if(start & !mode) nextstate = down;
                else if (mode) nextstate = upWait;
                else nextstate = downWait;
            end
            up: begin
                if(stop) nextstate = upWait;
                else nextstate = up;
            end
            down: begin
                if(stop) nextstate = upWait;
                else nextstate = down;
            end
            resetState: begin
                if(mode) nextstate = upWait;
                else if(!mode) nextstate = downWait;
                else nextstate = resetState;
            end
            default nextstate = upWait;
        endcase
    end
    
    always @(*) begin
        case(state)
            upWait: begin
                load = 1'b1;
                ready = 1'b1;
                enable = 'b0;
                updn = 1'b1;
                v_f1 = vUpDown_f1;
                v_f2 = vUpDown_f2;
                v_f3 = vUpDown_f3;
                v_f4 = vUpDown_f4;
                v_s1 = vUpDown_s1;
                v_s2 = vUpDown_s2;
                v_m1 = vUpDown_m1;
                v_m2 = vUpDown_m2;
            end
            downWait: begin
                load = 1'b1;
                ready = 1'b1;
                enable = 'b0;
                updn = 'b0;
                v_f1 = vUpDown_f1;
                v_f2 = vUpDown_f2;
                v_f3 = vUpDown_f3;
                v_f4 = vUpDown_f4;
                v_s1 = vUpDown_s1;
                v_s2 = vUpDown_s2;
                v_m1 = vUpDown_m1;
                v_m2 = vUpDown_m2;
            end
            up: begin
                load = 'b0;
                ready = 'b0;
                enable = 1'b1;
                updn = 1'b1;
                v_f1 = vUpDown_f1;
                v_f2 = vUpDown_f2;
                v_f3 = vUpDown_f3;
                v_f4 = vUpDown_f4;
                v_s1 = vUpDown_s1;
                v_s2 = vUpDown_s2;
                v_m1 = vUpDown_m1;
                v_m2 = vUpDown_m2;
            end
            down: begin
                load = 'b0;
                ready = 'b0;
                enable = 1'b1;
                updn = 'b0;
                v_f1 = vUpDown_f1;
                v_f2 = vUpDown_f2;
                v_f3 = vUpDown_f3;
                v_f4 = vUpDown_f4;
                v_s1 = vUpDown_s1;
                v_s2 = vUpDown_s2;
                v_m1 = vUpDown_m1;
                v_m2 = vUpDown_m2;
            end
            resetState: begin
                load = 'b0;
                ready = 'b0;
                enable = 'b0;
                updn = 'b0;
                v_f1 = 4'b0;
                v_f2 = 4'b0;
                v_f3 = 4'b0;
                v_f4 = 4'b0;
                v_s1 = 4'b0;
                v_s2 = 4'b0;
                v_m1 = 4'b0;
                v_m2 = 4'b0;
            end
            default: begin
            load = 'b0;
            ready = 'b0;
            enable = 'b0;
            updn = 'b0;
            v_f1 = 4'b0;
            v_f2 = 4'b0;
            v_f3 = 4'b0;
            v_f4 = 4'b0;
            v_s1 = 4'b0;
            v_s2 = 4'b0;
            v_m1 = 4'b0;
            v_m2 = 4'b0;
            end
        endcase
    end
    
    up_down_counter upDownCount(
        // Input Clocks
        .ten_khz_clk (ten_khz_clk),
        // Control inputs
        .updn (updn),
        .load (load),
        .enable (enable),
        .reset (reset),
        // Load values
        .l_f1 (v_f1),
        .l_f2 (v_f2),
        .l_f3 (v_f3),
        .l_f4 (v_f4),
        .l_s1 (v_s1),
        .l_s2 (v_s2),
        .l_m1 (v_m1),
        .l_m2 (v_m2),  
        // Output values
        .v_f1 (vUpDown_f1),
        .v_f2 (vUpDown_f2),
        .v_f3 (vUpDown_f3),
        .v_f4 (vUpDown_f4),
        .v_s1 (vUpDown_s1),
        .v_s2 (vUpDown_s2),
        .v_m1 (vUpDown_m1),
        .v_m2 (vUpDown_m2)
        );
    // Segment & Annode
    /////////////////////////////////////// f1
    wire [7:0] seg_f1;
    wire [7:0] an_f1;
    BCD_Decoder f1_bcd(
        .v      (v_f1),
        .anum   (3'd0),
        .seg    (seg_f1),
        .an     (an_f1)
    );
    /////////////////////////////////////// f2
    wire [7:0] seg_f2;
    wire [7:0] an_f2;
    BCD_Decoder f2_bcd(
        .v      (v_f2),
        .anum   (3'd1),
        .seg    (seg_f2),
        .an     (an_f2)
    );
    /////////////////////////////////////// f3
    wire [7:0] seg_f3;
    wire [7:0] an_f3;
    BCD_Decoder f3_bcd(
        .v      (v_f3),
        .anum   (3'd2),
        .seg    (seg_f3),
        .an     (an_f3)
    );
    /////////////////////////////////////// f4
    wire [7:0] seg_f4;
    wire [7:0] an_f4;
    BCD_Decoder f4_bcd(
        .v      (v_f4),
        .anum   (3'd3),
        .seg    (seg_f4),
        .an     (an_f4)
    );
    /////////////////////////////////////// s1
    wire [7:0] seg_s1;
    wire [7:0] an_s1;
    BCD_Decoder s1_bcd(
        .v      (v_s1),
        .anum   (3'd4),
        .seg    (seg_s1),
        .an     (an_s1)
    );
    /////////////////////////////////////// s2
    wire [7:0] seg_s2;
    wire [7:0] an_s2;
    BCD_Decoder s2_bcd(
        .v      (v_s2),
        .anum   (3'd5),
        .seg    (seg_s2),
        .an     (an_s2)
    );
    /////////////////////////////////////// m1
    wire [7:0] seg_m1;
    wire [7:0] an_m1;
    BCD_Decoder m1_bcd(
        .v      (v_m1),
        .anum   (3'd6),
        .seg    (seg_m1),
        .an     (an_m1)
    );
  /////////////////////////////////////// m2
    wire [7:0] seg_m2;
    wire [7:0] an_m2;
    BCD_Decoder m2_bcd(
        .v      (v_m2),
        .anum   (3'd7),
        .seg    (seg_m2),
        .an     (an_m2)
    );

    always @(posedge refresh_clk) begin
      case(display)
        9: display = 0;
        8: begin
          an[7:0] <= an_m2[7:0]; 
          seg[7:0] <= seg_m2[7:0];
        end
        7: begin
          an[7:0] <= an_m1[7:0]; 
          seg[7:0] <= seg_m1[7:0];
        end
        6: begin
          an[7:0] <= an_s2[7:0]; 
          seg[7:0] <= seg_s2[7:0];
        end
        5: begin
          an[7:0] <= an_s1[7:0]; 
          seg[7:0] <= seg_s1[7:0];
        end
        4: begin
          an[7:0] <= an_f4[7:0]; 
          seg[7:0] <= seg_f4[7:0];
        end
        3: begin
          an[7:0] <= an_f3[7:0]; 
          seg[7:0] <= seg_f3[7:0];
        end
        2: begin
          an[7:0] <= an_f2[7:0]; 
          seg[7:0] <= seg_f2[7:0];
        end
        1: begin
          an[7:0] <= an_f1[7:0]; 
          seg[7:0] <= seg_f1[7:0];
        end
        endcase
        display = display + 1;
    end

endmodule