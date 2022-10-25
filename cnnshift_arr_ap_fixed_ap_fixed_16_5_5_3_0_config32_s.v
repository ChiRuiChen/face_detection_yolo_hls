// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cnnshift_arr_ap_fixed_ap_fixed_16_5_5_3_0_config32_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        data_V_address0,
        data_V_ce0,
        data_V_q0,
        output_V_address0,
        output_V_ce0,
        output_V_we0,
        output_V_d0,
        output_V_q0
);

parameter    ap_ST_fsm_state1 = 14'd1;
parameter    ap_ST_fsm_state2 = 14'd2;
parameter    ap_ST_fsm_state3 = 14'd4;
parameter    ap_ST_fsm_state4 = 14'd8;
parameter    ap_ST_fsm_state5 = 14'd16;
parameter    ap_ST_fsm_state6 = 14'd32;
parameter    ap_ST_fsm_state7 = 14'd64;
parameter    ap_ST_fsm_state8 = 14'd128;
parameter    ap_ST_fsm_state9 = 14'd256;
parameter    ap_ST_fsm_state10 = 14'd512;
parameter    ap_ST_fsm_state11 = 14'd1024;
parameter    ap_ST_fsm_state12 = 14'd2048;
parameter    ap_ST_fsm_state13 = 14'd4096;
parameter    ap_ST_fsm_state14 = 14'd8192;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] data_V_address0;
output   data_V_ce0;
input  [15:0] data_V_q0;
output  [7:0] output_V_address0;
output   output_V_ce0;
output   output_V_we0;
output  [15:0] output_V_d0;
input  [15:0] output_V_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg data_V_ce0;
reg[7:0] output_V_address0;
reg output_V_ce0;
reg output_V_we0;
reg[15:0] output_V_d0;

(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [9:0] linebuffer_V_8_address0;
reg    linebuffer_V_8_ce0;
reg    linebuffer_V_8_we0;
reg   [15:0] linebuffer_V_8_d0;
wire   [15:0] linebuffer_V_8_q0;
wire   [4:0] i0_fu_289_p2;
reg   [4:0] i0_reg_745;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln246_fu_283_p2;
wire   [10:0] zext_ln203_52_fu_300_p1;
reg   [10:0] zext_ln203_52_reg_755;
wire    ap_CS_fsm_state3;
wire   [6:0] zext_ln203_53_fu_304_p1;
reg   [6:0] zext_ln203_53_reg_762;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln250_fu_317_p2;
wire   [1:0] add_ln255_fu_351_p2;
reg   [1:0] add_ln255_reg_777;
wire   [15:0] tmpinput_V_q0;
reg   [15:0] tmp1_V_reg_788;
wire    ap_CS_fsm_state5;
wire   [6:0] zext_ln255_fu_379_p1;
reg   [6:0] zext_ln255_reg_793;
reg   [9:0] linebuffer_V_8_addr_1_reg_799;
reg   [15:0] tmp_V_reg_804;
wire   [4:0] i2_fu_407_p2;
reg   [4:0] i2_reg_812;
wire    ap_CS_fsm_state6;
wire   [10:0] add_ln203_34_fu_438_p2;
reg   [10:0] add_ln203_34_reg_817;
wire   [0:0] icmp_ln258_fu_401_p2;
wire   [1:0] i1_fu_506_p2;
wire   [1:0] i0_5_fu_522_p2;
reg   [1:0] i0_5_reg_835;
wire    ap_CS_fsm_state8;
wire   [5:0] zext_ln192_20_fu_540_p1;
reg   [5:0] zext_ln192_20_reg_840;
wire   [0:0] icmp_ln188_fu_516_p2;
wire   [5:0] add_ln192_fu_544_p2;
reg   [5:0] add_ln192_reg_845;
wire   [1:0] i1_9_fu_556_p2;
reg   [1:0] i1_9_reg_853;
wire    ap_CS_fsm_state9;
wire   [8:0] sub_ln192_fu_586_p2;
reg   [8:0] sub_ln192_reg_858;
wire   [0:0] icmp_ln190_fu_550_p2;
wire   [4:0] i2_10_fu_602_p2;
reg   [4:0] i2_10_reg_867;
wire    ap_CS_fsm_state10;
wire   [8:0] add_ln192_17_fu_617_p2;
reg   [8:0] add_ln192_17_reg_872;
wire   [0:0] icmp_ln191_fu_596_p2;
wire   [1:0] i1_10_fu_659_p2;
reg   [1:0] i1_10_reg_885;
wire    ap_CS_fsm_state12;
wire   [7:0] sub_ln203_fu_685_p2;
reg   [7:0] sub_ln203_reg_890;
wire   [0:0] icmp_ln200_fu_653_p2;
wire   [6:0] zext_ln202_fu_691_p1;
reg   [6:0] zext_ln202_reg_895;
wire   [4:0] i2_9_fu_701_p2;
reg   [4:0] i2_9_reg_903;
wire    ap_CS_fsm_state13;
wire   [7:0] add_ln203_fu_719_p2;
reg   [7:0] add_ln203_reg_908;
wire   [0:0] icmp_ln202_fu_695_p2;
reg   [5:0] tmpinput_V_address0;
reg    tmpinput_V_ce0;
reg    tmpinput_V_we0;
reg   [15:0] tmpinput_V_d0;
reg   [4:0] i0_0_reg_193;
reg   [1:0] i1_0_reg_205;
reg   [4:0] i2_0_reg_217;
wire    ap_CS_fsm_state7;
reg   [1:0] i0_0_i_reg_228;
reg   [1:0] i1_0_i_reg_239;
reg   [4:0] i2_0_i_reg_250;
wire    ap_CS_fsm_state11;
reg   [1:0] i11_0_i_reg_261;
reg   [4:0] i22_0_i_reg_272;
wire    ap_CS_fsm_state14;
wire   [63:0] zext_ln248_fu_295_p1;
wire   [63:0] tmp_69_fu_308_p3;
wire   [63:0] zext_ln252_4_fu_346_p1;
wire   [63:0] zext_ln255_12_fu_374_p1;
wire   [63:0] zext_ln203_54_fu_396_p1;
wire   [63:0] zext_ln203_60_fu_473_p1;
wire   [63:0] zext_ln203_56_fu_501_p1;
wire   [63:0] zext_ln203_58_fu_512_p1;
wire   [63:0] zext_ln192_5_fu_640_p1;
wire   [63:0] zext_ln192_fu_648_p1;
wire   [63:0] zext_ln203_62_fu_733_p1;
wire   [63:0] zext_ln203_fu_738_p1;
wire   [1:0] xor_ln252_fu_323_p2;
wire   [5:0] tmp_71_fu_329_p3;
wire   [6:0] zext_ln252_fu_337_p1;
wire   [6:0] add_ln252_fu_341_p2;
wire   [5:0] tmp_72_fu_357_p3;
wire   [6:0] zext_ln255_11_fu_365_p1;
wire   [6:0] add_ln255_5_fu_369_p2;
wire   [10:0] tmp_73_cast_fu_382_p4;
wire   [10:0] add_ln203_31_fu_391_p2;
wire   [5:0] tmp_76_fu_413_p3;
wire   [6:0] zext_ln203_57_fu_421_p1;
wire   [6:0] add_ln203_33_fu_425_p2;
wire   [10:0] tmp_78_cast_fu_430_p3;
wire   [5:0] tmp_79_fu_443_p3;
wire   [6:0] zext_ln203_59_fu_451_p1;
wire   [6:0] add_ln203_35_fu_455_p2;
wire   [10:0] tmp_81_cast_fu_460_p3;
wire   [10:0] add_ln203_36_fu_468_p2;
wire   [1:0] sub_ln265_fu_478_p2;
wire   [5:0] tmp_75_fu_484_p3;
wire   [6:0] zext_ln203_55_fu_492_p1;
wire   [6:0] add_ln203_32_fu_496_p2;
wire   [0:0] trunc_ln192_fu_528_p1;
wire   [4:0] shl_ln_fu_532_p3;
wire   [7:0] shl_ln192_8_fu_562_p3;
wire   [5:0] shl_ln192_9_fu_574_p3;
wire   [8:0] zext_ln192_21_fu_570_p1;
wire   [8:0] zext_ln192_22_fu_582_p1;
wire   [5:0] zext_ln191_fu_592_p1;
wire   [5:0] add_ln192_18_fu_608_p2;
wire   [8:0] zext_ln192_23_fu_613_p1;
wire   [5:0] add_ln192_19_fu_622_p2;
wire   [8:0] zext_ln192_24_fu_627_p1;
wire   [8:0] add_ln192_20_fu_631_p2;
wire  signed [31:0] sext_ln192_6_fu_636_p1;
wire  signed [31:0] sext_ln192_fu_645_p1;
wire   [5:0] shl_ln203_4_fu_673_p3;
wire   [7:0] shl_ln5_fu_665_p3;
wire   [7:0] zext_ln203_13_fu_681_p1;
wire   [5:0] or_ln_fu_707_p3;
wire   [7:0] zext_ln203_14_fu_715_p1;
wire   [6:0] zext_ln203_61_fu_724_p1;
wire   [6:0] add_ln203_37_fu_728_p2;
reg   [13:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 14'd1;
end

cnnshift_arr_ap_fixed_ap_fixed_16_5_5_3_0_config32_s_linetde #(
    .DataWidth( 16 ),
    .AddressRange( 544 ),
    .AddressWidth( 10 ))
linebuffer_V_8_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(linebuffer_V_8_address0),
    .ce0(linebuffer_V_8_ce0),
    .we0(linebuffer_V_8_we0),
    .d0(linebuffer_V_8_d0),
    .q0(linebuffer_V_8_q0)
);

cnnshift_arr_ap_fixed_ap_fixed_16_5_5_3_0_config13_s_tmpikbM #(
    .DataWidth( 16 ),
    .AddressRange( 48 ),
    .AddressWidth( 6 ))
tmpinput_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tmpinput_V_address0),
    .ce0(tmpinput_V_ce0),
    .we0(tmpinput_V_we0),
    .d0(tmpinput_V_d0),
    .q0(tmpinput_V_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln246_fu_283_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i0_0_i_reg_228 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln190_fu_550_p2 == 1'd1))) begin
        i0_0_i_reg_228 <= i0_5_reg_835;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i0_0_reg_193 <= 5'd0;
    end else if (((icmp_ln250_fu_317_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        i0_0_reg_193 <= i0_reg_745;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln188_fu_516_p2 == 1'd1))) begin
        i11_0_i_reg_261 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state13) & (icmp_ln202_fu_695_p2 == 1'd1))) begin
        i11_0_i_reg_261 <= i1_10_reg_885;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln191_fu_596_p2 == 1'd1))) begin
        i1_0_i_reg_239 <= i1_9_reg_853;
    end else if (((icmp_ln188_fu_516_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        i1_0_i_reg_239 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_401_p2 == 1'd1))) begin
        i1_0_reg_205 <= i1_fu_506_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i1_0_reg_205 <= 2'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        i22_0_i_reg_272 <= i2_9_reg_903;
    end else if (((icmp_ln200_fu_653_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        i22_0_i_reg_272 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln190_fu_550_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        i2_0_i_reg_250 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        i2_0_i_reg_250 <= i2_10_reg_867;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i2_0_reg_217 <= i2_reg_812;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i2_0_reg_217 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln191_fu_596_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        add_ln192_17_reg_872 <= add_ln192_17_fu_617_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln188_fu_516_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        add_ln192_reg_845[5 : 4] <= add_ln192_fu_544_p2[5 : 4];
        zext_ln192_20_reg_840[4] <= zext_ln192_20_fu_540_p1[4];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln258_fu_401_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        add_ln203_34_reg_817 <= add_ln203_34_fu_438_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln202_fu_695_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state13))) begin
        add_ln203_reg_908 <= add_ln203_fu_719_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln250_fu_317_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        add_ln255_reg_777 <= add_ln255_fu_351_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i0_5_reg_835 <= i0_5_fu_522_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i0_reg_745 <= i0_fu_289_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        i1_10_reg_885 <= i1_10_fu_659_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        i1_9_reg_853 <= i1_9_fu_556_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        i2_10_reg_867 <= i2_10_fu_602_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        i2_9_reg_903 <= i2_9_fu_701_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i2_reg_812 <= i2_fu_407_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        linebuffer_V_8_addr_1_reg_799 <= zext_ln203_54_fu_396_p1;
        tmp1_V_reg_788 <= tmpinput_V_q0;
        tmp_V_reg_804 <= linebuffer_V_8_q0;
        zext_ln255_reg_793[1 : 0] <= zext_ln255_fu_379_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln190_fu_550_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        sub_ln192_reg_858[8 : 4] <= sub_ln192_fu_586_p2[8 : 4];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln200_fu_653_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        sub_ln203_reg_890[7 : 4] <= sub_ln203_fu_685_p2[7 : 4];
        zext_ln202_reg_895[5 : 4] <= zext_ln202_fu_691_p1[5 : 4];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        zext_ln203_52_reg_755[4 : 0] <= zext_ln203_52_fu_300_p1[4 : 0];
        zext_ln203_53_reg_762[4 : 0] <= zext_ln203_53_fu_304_p1[4 : 0];
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state12) & (icmp_ln200_fu_653_p2 == 1'd1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln200_fu_653_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        data_V_ce0 = 1'b1;
    end else begin
        data_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        linebuffer_V_8_address0 = zext_ln203_58_fu_512_p1;
    end else if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_401_p2 == 1'd1))) begin
        linebuffer_V_8_address0 = linebuffer_V_8_addr_1_reg_799;
    end else if (((icmp_ln258_fu_401_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        linebuffer_V_8_address0 = zext_ln203_60_fu_473_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        linebuffer_V_8_address0 = zext_ln255_12_fu_374_p1;
    end else begin
        linebuffer_V_8_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_401_p2 == 1'd1)) | ((icmp_ln258_fu_401_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6)))) begin
        linebuffer_V_8_ce0 = 1'b1;
    end else begin
        linebuffer_V_8_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        linebuffer_V_8_d0 = linebuffer_V_8_q0;
    end else if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_401_p2 == 1'd1))) begin
        linebuffer_V_8_d0 = tmp1_V_reg_788;
    end else begin
        linebuffer_V_8_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_401_p2 == 1'd1)))) begin
        linebuffer_V_8_we0 = 1'b1;
    end else begin
        linebuffer_V_8_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        output_V_address0 = zext_ln203_fu_738_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        output_V_address0 = zext_ln192_fu_648_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        output_V_address0 = zext_ln192_5_fu_640_p1;
    end else begin
        output_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        output_V_ce0 = 1'b1;
    end else begin
        output_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        output_V_d0 = tmpinput_V_q0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        output_V_d0 = output_V_q0;
    end else begin
        output_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11))) begin
        output_V_we0 = 1'b1;
    end else begin
        output_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmpinput_V_address0 = zext_ln203_62_fu_733_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmpinput_V_address0 = zext_ln203_56_fu_501_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        tmpinput_V_address0 = zext_ln252_4_fu_346_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        tmpinput_V_address0 = tmp_69_fu_308_p3;
    end else begin
        tmpinput_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6))) begin
        tmpinput_V_ce0 = 1'b1;
    end else begin
        tmpinput_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmpinput_V_d0 = tmp_V_reg_804;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        tmpinput_V_d0 = data_V_q0;
    end else begin
        tmpinput_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_401_p2 == 1'd1)))) begin
        tmpinput_V_we0 = 1'b1;
    end else begin
        tmpinput_V_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln246_fu_283_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln250_fu_317_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_401_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln188_fu_516_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln190_fu_550_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln191_fu_596_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln200_fu_653_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & (icmp_ln202_fu_695_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln192_17_fu_617_p2 = (zext_ln192_23_fu_613_p1 + sub_ln192_reg_858);

assign add_ln192_18_fu_608_p2 = (zext_ln192_20_reg_840 + zext_ln191_fu_592_p1);

assign add_ln192_19_fu_622_p2 = (add_ln192_reg_845 + zext_ln191_fu_592_p1);

assign add_ln192_20_fu_631_p2 = (zext_ln192_24_fu_627_p1 + sub_ln192_reg_858);

assign add_ln192_fu_544_p2 = (6'd16 + zext_ln192_20_fu_540_p1);

assign add_ln203_31_fu_391_p2 = (tmp_73_cast_fu_382_p4 + zext_ln203_52_reg_755);

assign add_ln203_32_fu_496_p2 = (zext_ln203_53_reg_762 + zext_ln203_55_fu_492_p1);

assign add_ln203_33_fu_425_p2 = (zext_ln255_reg_793 + zext_ln203_57_fu_421_p1);

assign add_ln203_34_fu_438_p2 = (zext_ln203_52_reg_755 + tmp_78_cast_fu_430_p3);

assign add_ln203_35_fu_455_p2 = (zext_ln255_reg_793 + zext_ln203_59_fu_451_p1);

assign add_ln203_36_fu_468_p2 = (zext_ln203_52_reg_755 + tmp_81_cast_fu_460_p3);

assign add_ln203_37_fu_728_p2 = (zext_ln202_reg_895 + zext_ln203_61_fu_724_p1);

assign add_ln203_fu_719_p2 = (sub_ln203_reg_890 + zext_ln203_14_fu_715_p1);

assign add_ln252_fu_341_p2 = (zext_ln252_fu_337_p1 + zext_ln203_53_reg_762);

assign add_ln255_5_fu_369_p2 = (zext_ln255_11_fu_365_p1 + zext_ln203_53_reg_762);

assign add_ln255_fu_351_p2 = ($signed(i1_0_reg_205) + $signed(2'd3));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign data_V_address0 = zext_ln248_fu_295_p1;

assign i0_5_fu_522_p2 = (i0_0_i_reg_228 + 2'd1);

assign i0_fu_289_p2 = (i0_0_reg_193 + 5'd1);

assign i1_10_fu_659_p2 = (i11_0_i_reg_261 + 2'd1);

assign i1_9_fu_556_p2 = (i1_0_i_reg_239 + 2'd1);

assign i1_fu_506_p2 = (i1_0_reg_205 + 2'd1);

assign i2_10_fu_602_p2 = (i2_0_i_reg_250 + 5'd1);

assign i2_9_fu_701_p2 = (i22_0_i_reg_272 + 5'd1);

assign i2_fu_407_p2 = (i2_0_reg_217 + 5'd1);

assign icmp_ln188_fu_516_p2 = ((i0_0_i_reg_228 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln190_fu_550_p2 = ((i1_0_i_reg_239 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln191_fu_596_p2 = ((i2_0_i_reg_250 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln200_fu_653_p2 = ((i11_0_i_reg_261 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln202_fu_695_p2 = ((i22_0_i_reg_272 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln246_fu_283_p2 = ((i0_0_reg_193 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln250_fu_317_p2 = ((i1_0_reg_205 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln258_fu_401_p2 = ((i2_0_reg_217 == 5'd16) ? 1'b1 : 1'b0);

assign or_ln_fu_707_p3 = {{1'd1}, {i22_0_i_reg_272}};

assign sext_ln192_6_fu_636_p1 = $signed(add_ln192_20_fu_631_p2);

assign sext_ln192_fu_645_p1 = $signed(add_ln192_17_reg_872);

assign shl_ln192_8_fu_562_p3 = {{i1_0_i_reg_239}, {6'd0}};

assign shl_ln192_9_fu_574_p3 = {{i1_0_i_reg_239}, {4'd0}};

assign shl_ln203_4_fu_673_p3 = {{i11_0_i_reg_261}, {4'd0}};

assign shl_ln5_fu_665_p3 = {{i11_0_i_reg_261}, {6'd0}};

assign shl_ln_fu_532_p3 = {{trunc_ln192_fu_528_p1}, {4'd0}};

assign sub_ln192_fu_586_p2 = (zext_ln192_21_fu_570_p1 - zext_ln192_22_fu_582_p1);

assign sub_ln203_fu_685_p2 = (shl_ln5_fu_665_p3 - zext_ln203_13_fu_681_p1);

assign sub_ln265_fu_478_p2 = ($signed(2'd2) - $signed(i1_0_reg_205));

assign tmp_69_fu_308_p3 = {{59'd1}, {i0_0_reg_193}};

assign tmp_71_fu_329_p3 = {{xor_ln252_fu_323_p2}, {4'd0}};

assign tmp_72_fu_357_p3 = {{add_ln255_fu_351_p2}, {4'd0}};

assign tmp_73_cast_fu_382_p4 = {{{{5'd8}, {add_ln255_reg_777}}}, {4'd0}};

assign tmp_75_fu_484_p3 = {{sub_ln265_fu_478_p2}, {4'd0}};

assign tmp_76_fu_413_p3 = {{i2_0_reg_217}, {1'd0}};

assign tmp_78_cast_fu_430_p3 = {{add_ln203_33_fu_425_p2}, {4'd0}};

assign tmp_79_fu_443_p3 = {{i2_fu_407_p2}, {1'd0}};

assign tmp_81_cast_fu_460_p3 = {{add_ln203_35_fu_455_p2}, {4'd0}};

assign trunc_ln192_fu_528_p1 = i0_0_i_reg_228[0:0];

assign xor_ln252_fu_323_p2 = (i1_0_reg_205 ^ 2'd3);

assign zext_ln191_fu_592_p1 = i2_0_i_reg_250;

assign zext_ln192_20_fu_540_p1 = shl_ln_fu_532_p3;

assign zext_ln192_21_fu_570_p1 = shl_ln192_8_fu_562_p3;

assign zext_ln192_22_fu_582_p1 = shl_ln192_9_fu_574_p3;

assign zext_ln192_23_fu_613_p1 = add_ln192_18_fu_608_p2;

assign zext_ln192_24_fu_627_p1 = add_ln192_19_fu_622_p2;

assign zext_ln192_5_fu_640_p1 = $unsigned(sext_ln192_6_fu_636_p1);

assign zext_ln192_fu_648_p1 = $unsigned(sext_ln192_fu_645_p1);

assign zext_ln202_fu_691_p1 = shl_ln203_4_fu_673_p3;

assign zext_ln203_13_fu_681_p1 = shl_ln203_4_fu_673_p3;

assign zext_ln203_14_fu_715_p1 = or_ln_fu_707_p3;

assign zext_ln203_52_fu_300_p1 = i0_0_reg_193;

assign zext_ln203_53_fu_304_p1 = i0_0_reg_193;

assign zext_ln203_54_fu_396_p1 = add_ln203_31_fu_391_p2;

assign zext_ln203_55_fu_492_p1 = tmp_75_fu_484_p3;

assign zext_ln203_56_fu_501_p1 = add_ln203_32_fu_496_p2;

assign zext_ln203_57_fu_421_p1 = tmp_76_fu_413_p3;

assign zext_ln203_58_fu_512_p1 = add_ln203_34_reg_817;

assign zext_ln203_59_fu_451_p1 = tmp_79_fu_443_p3;

assign zext_ln203_60_fu_473_p1 = add_ln203_36_fu_468_p2;

assign zext_ln203_61_fu_724_p1 = i22_0_i_reg_272;

assign zext_ln203_62_fu_733_p1 = add_ln203_37_fu_728_p2;

assign zext_ln203_fu_738_p1 = add_ln203_reg_908;

assign zext_ln248_fu_295_p1 = i0_0_reg_193;

assign zext_ln252_4_fu_346_p1 = add_ln252_fu_341_p2;

assign zext_ln252_fu_337_p1 = tmp_71_fu_329_p3;

assign zext_ln255_11_fu_365_p1 = tmp_72_fu_357_p3;

assign zext_ln255_12_fu_374_p1 = add_ln255_5_fu_369_p2;

assign zext_ln255_fu_379_p1 = add_ln255_reg_777;

always @ (posedge ap_clk) begin
    zext_ln203_52_reg_755[10:5] <= 6'b000000;
    zext_ln203_53_reg_762[6:5] <= 2'b00;
    zext_ln255_reg_793[6:2] <= 5'b00000;
    zext_ln192_20_reg_840[3:0] <= 4'b0000;
    zext_ln192_20_reg_840[5] <= 1'b0;
    add_ln192_reg_845[3:0] <= 4'b0000;
    sub_ln192_reg_858[3:0] <= 4'b0000;
    sub_ln203_reg_890[3:0] <= 4'b0000;
    zext_ln202_reg_895[3:0] <= 4'b0000;
    zext_ln202_reg_895[6] <= 1'b0;
end

endmodule //cnnshift_arr_ap_fixed_ap_fixed_16_5_5_3_0_config32_s
