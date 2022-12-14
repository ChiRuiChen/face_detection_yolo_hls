// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cnnshift_arr_ap_fixed_ap_fixed_16_5_5_3_0_config3_s (
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
output  [1:0] data_V_address0;
output   data_V_ce0;
input  [15:0] data_V_q0;
output  [6:0] output_V_address0;
output   output_V_ce0;
output   output_V_we0;
output  [15:0] output_V_d0;
input  [15:0] output_V_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg data_V_ce0;
reg[6:0] output_V_address0;
reg output_V_ce0;
reg output_V_we0;
reg[15:0] output_V_d0;

(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [10:0] linebuffer_V_7_address0;
reg    linebuffer_V_7_ce0;
reg    linebuffer_V_7_we0;
reg   [15:0] linebuffer_V_7_d0;
wire   [15:0] linebuffer_V_7_q0;
wire   [1:0] i0_fu_295_p2;
reg   [1:0] i0_reg_838;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln246_fu_289_p2;
wire   [11:0] zext_ln203_39_fu_306_p1;
reg   [11:0] zext_ln203_39_reg_848;
wire    ap_CS_fsm_state3;
wire   [6:0] zext_ln203_40_fu_310_p1;
reg   [6:0] zext_ln203_40_reg_855;
wire   [4:0] zext_ln203_41_fu_314_p1;
reg   [4:0] zext_ln203_41_reg_860;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln250_fu_327_p2;
wire   [2:0] add_ln255_fu_367_p2;
reg   [2:0] add_ln255_reg_874;
wire   [15:0] tmpinput_V_q0;
reg   [15:0] tmp1_V_reg_886;
wire    ap_CS_fsm_state5;
wire   [10:0] zext_ln255_fu_409_p1;
reg   [10:0] zext_ln255_reg_891;
reg   [10:0] linebuffer_V_7_addr_1_reg_897;
reg   [15:0] tmp_V_reg_902;
wire   [7:0] i2_fu_450_p2;
reg   [7:0] i2_reg_910;
wire    ap_CS_fsm_state6;
wire   [11:0] add_ln203_27_fu_495_p2;
reg   [11:0] add_ln203_27_reg_915;
wire   [0:0] icmp_ln258_fu_444_p2;
wire   [2:0] i1_fu_583_p2;
wire   [2:0] i0_4_fu_603_p2;
reg   [2:0] i0_4_reg_933;
wire    ap_CS_fsm_state8;
wire  signed [5:0] sext_ln192_fu_631_p1;
reg  signed [5:0] sext_ln192_reg_938;
wire   [0:0] icmp_ln188_fu_597_p2;
wire   [5:0] zext_ln190_1_fu_641_p1;
reg   [5:0] zext_ln190_1_reg_943;
wire   [2:0] i1_7_fu_655_p2;
reg   [2:0] i1_7_reg_951;
wire    ap_CS_fsm_state9;
wire   [7:0] sub_ln192_1_fu_673_p2;
reg   [7:0] sub_ln192_1_reg_956;
wire   [0:0] icmp_ln190_fu_649_p2;
wire   [1:0] i2_8_fu_689_p2;
reg   [1:0] i2_8_reg_965;
wire    ap_CS_fsm_state10;
wire   [7:0] add_ln192_13_fu_704_p2;
reg   [7:0] add_ln192_13_reg_970;
wire   [0:0] icmp_ln191_fu_683_p2;
wire   [2:0] i1_8_fu_750_p2;
reg   [2:0] i1_8_reg_983;
wire    ap_CS_fsm_state12;
wire   [6:0] sub_ln203_fu_764_p2;
reg   [6:0] sub_ln203_reg_988;
wire   [0:0] icmp_ln200_fu_744_p2;
wire   [4:0] sub_ln203_2_fu_782_p2;
reg   [4:0] sub_ln203_2_reg_993;
wire   [1:0] i2_7_fu_794_p2;
reg   [1:0] i2_7_reg_1001;
wire    ap_CS_fsm_state13;
wire   [6:0] add_ln203_fu_812_p2;
reg   [6:0] add_ln203_reg_1006;
wire   [0:0] icmp_ln202_fu_788_p2;
reg   [3:0] tmpinput_V_address0;
reg    tmpinput_V_ce0;
reg    tmpinput_V_we0;
reg   [15:0] tmpinput_V_d0;
reg   [1:0] i0_0_reg_199;
reg   [2:0] i1_0_reg_211;
reg   [7:0] i2_0_reg_223;
wire    ap_CS_fsm_state7;
reg   [2:0] i0_0_i_reg_234;
reg   [2:0] i1_0_i_reg_245;
reg   [1:0] i2_0_i_reg_256;
wire    ap_CS_fsm_state11;
reg   [2:0] i11_0_i_reg_267;
reg   [1:0] i22_0_i_reg_278;
wire    ap_CS_fsm_state14;
wire   [63:0] zext_ln248_fu_301_p1;
wire   [63:0] tmp_58_fu_318_p3;
wire  signed [63:0] sext_ln252_fu_362_p1;
wire  signed [63:0] sext_ln255_1_fu_404_p1;
wire   [63:0] zext_ln203_42_fu_439_p1;
wire   [63:0] zext_ln203_50_fu_544_p1;
wire  signed [63:0] sext_ln203_fu_578_p1;
wire   [63:0] zext_ln203_47_fu_589_p1;
wire   [63:0] zext_ln192_4_fu_727_p1;
wire   [63:0] zext_ln192_fu_735_p1;
wire  signed [63:0] sext_ln203_1_fu_826_p1;
wire   [63:0] zext_ln203_fu_831_p1;
wire   [2:0] sub_ln252_fu_333_p2;
wire   [4:0] tmp_60_fu_343_p3;
wire   [4:0] zext_ln252_fu_339_p1;
wire   [4:0] sub_ln252_1_fu_351_p2;
wire   [4:0] add_ln252_fu_357_p2;
wire   [4:0] tmp_61_fu_377_p3;
wire   [5:0] zext_ln255_10_fu_385_p1;
wire   [5:0] zext_ln255_9_fu_373_p1;
wire   [5:0] sub_ln255_fu_389_p2;
wire  signed [6:0] sext_ln255_fu_395_p1;
wire   [6:0] add_ln255_4_fu_399_p2;
wire   [11:0] p_shl_cast_fu_419_p4;
wire   [11:0] tmp_62_cast_fu_412_p3;
wire   [11:0] sub_ln203_1_fu_428_p2;
wire   [11:0] add_ln203_24_fu_434_p2;
wire   [9:0] tmp_65_fu_456_p3;
wire   [10:0] zext_ln203_45_fu_464_p1;
wire   [10:0] add_ln203_26_fu_468_p2;
wire   [9:0] trunc_ln203_fu_477_p1;
wire   [11:0] p_shl1_cast_fu_481_p3;
wire   [11:0] zext_ln203_46_fu_473_p1;
wire   [11:0] sub_ln203_4_fu_489_p2;
wire   [9:0] tmp_67_fu_500_p3;
wire   [10:0] zext_ln203_48_fu_508_p1;
wire   [10:0] add_ln203_28_fu_512_p2;
wire   [9:0] trunc_ln203_1_fu_521_p1;
wire   [11:0] p_shl2_cast_fu_525_p3;
wire   [11:0] zext_ln203_49_fu_517_p1;
wire   [11:0] sub_ln203_5_fu_533_p2;
wire   [11:0] add_ln203_29_fu_539_p2;
wire   [2:0] sub_ln265_fu_549_p2;
wire   [4:0] tmp_64_fu_559_p3;
wire   [4:0] zext_ln203_44_fu_555_p1;
wire   [4:0] sub_ln203_3_fu_567_p2;
wire   [4:0] add_ln203_25_fu_573_p2;
wire   [1:0] trunc_ln192_fu_609_p1;
wire   [3:0] shl_ln_fu_613_p3;
wire   [4:0] zext_ln192_17_fu_621_p1;
wire   [4:0] zext_ln188_fu_593_p1;
wire  signed [4:0] sub_ln192_fu_625_p2;
wire   [4:0] add_ln192_fu_635_p2;
wire   [6:0] shl_ln192_7_fu_661_p3;
wire   [7:0] zext_ln192_18_fu_669_p1;
wire   [7:0] zext_ln190_fu_645_p1;
wire   [5:0] zext_ln191_fu_679_p1;
wire   [5:0] add_ln192_14_fu_695_p2;
wire  signed [7:0] sext_ln192_6_fu_700_p1;
wire   [5:0] add_ln192_15_fu_709_p2;
wire   [7:0] zext_ln192_19_fu_714_p1;
wire   [7:0] add_ln192_16_fu_718_p2;
wire  signed [31:0] sext_ln192_5_fu_723_p1;
wire  signed [31:0] sext_ln192_4_fu_732_p1;
wire   [6:0] shl_ln4_fu_756_p3;
wire   [6:0] zext_ln203_11_fu_740_p1;
wire   [4:0] tmp_63_fu_774_p3;
wire   [4:0] zext_ln203_43_fu_770_p1;
wire   [3:0] or_ln_fu_800_p3;
wire   [6:0] zext_ln203_12_fu_808_p1;
wire   [4:0] zext_ln203_51_fu_817_p1;
wire   [4:0] add_ln203_30_fu_821_p2;
reg   [13:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 14'd1;
end

cnnshift_arr_ap_fixed_ap_fixed_16_5_5_3_0_config3_s_linebbkb #(
    .DataWidth( 16 ),
    .AddressRange( 1572 ),
    .AddressWidth( 11 ))
linebuffer_V_7_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(linebuffer_V_7_address0),
    .ce0(linebuffer_V_7_ce0),
    .we0(linebuffer_V_7_we0),
    .d0(linebuffer_V_7_d0),
    .q0(linebuffer_V_7_q0)
);

cnnshift_arr_ap_fixed_ap_fixed_16_5_5_3_0_config3_s_tmpincud #(
    .DataWidth( 16 ),
    .AddressRange( 15 ),
    .AddressWidth( 4 ))
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
    if (((icmp_ln246_fu_289_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i0_0_i_reg_234 <= 3'd0;
    end else if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln190_fu_649_p2 == 1'd1))) begin
        i0_0_i_reg_234 <= i0_4_reg_933;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i0_0_reg_199 <= 2'd0;
    end else if (((icmp_ln250_fu_327_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        i0_0_reg_199 <= i0_reg_838;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln188_fu_597_p2 == 1'd1))) begin
        i11_0_i_reg_267 <= 3'd0;
    end else if (((1'b1 == ap_CS_fsm_state13) & (icmp_ln202_fu_788_p2 == 1'd1))) begin
        i11_0_i_reg_267 <= i1_8_reg_983;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln191_fu_683_p2 == 1'd1))) begin
        i1_0_i_reg_245 <= i1_7_reg_951;
    end else if (((icmp_ln188_fu_597_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        i1_0_i_reg_245 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_444_p2 == 1'd1))) begin
        i1_0_reg_211 <= i1_fu_583_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i1_0_reg_211 <= 3'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        i22_0_i_reg_278 <= i2_7_reg_1001;
    end else if (((icmp_ln200_fu_744_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        i22_0_i_reg_278 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln190_fu_649_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        i2_0_i_reg_256 <= 2'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        i2_0_i_reg_256 <= i2_8_reg_965;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i2_0_reg_223 <= i2_reg_910;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i2_0_reg_223 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln191_fu_683_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        add_ln192_13_reg_970 <= add_ln192_13_fu_704_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln258_fu_444_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        add_ln203_27_reg_915 <= add_ln203_27_fu_495_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln202_fu_788_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state13))) begin
        add_ln203_reg_1006 <= add_ln203_fu_812_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln250_fu_327_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        add_ln255_reg_874 <= add_ln255_fu_367_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i0_4_reg_933 <= i0_4_fu_603_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i0_reg_838 <= i0_fu_295_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        i1_7_reg_951 <= i1_7_fu_655_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        i1_8_reg_983 <= i1_8_fu_750_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        i2_7_reg_1001 <= i2_7_fu_794_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        i2_8_reg_965 <= i2_8_fu_689_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i2_reg_910 <= i2_fu_450_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        linebuffer_V_7_addr_1_reg_897 <= zext_ln203_42_fu_439_p1;
        tmp1_V_reg_886 <= tmpinput_V_q0;
        tmp_V_reg_902 <= linebuffer_V_7_q0;
        zext_ln255_reg_891[2 : 0] <= zext_ln255_fu_409_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln188_fu_597_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        sext_ln192_reg_938 <= sext_ln192_fu_631_p1;
        zext_ln190_1_reg_943[4 : 0] <= zext_ln190_1_fu_641_p1[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln190_fu_649_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        sub_ln192_1_reg_956 <= sub_ln192_1_fu_673_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln200_fu_744_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        sub_ln203_2_reg_993 <= sub_ln203_2_fu_782_p2;
        sub_ln203_reg_988 <= sub_ln203_fu_764_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        zext_ln203_39_reg_848[1 : 0] <= zext_ln203_39_fu_306_p1[1 : 0];
        zext_ln203_40_reg_855[1 : 0] <= zext_ln203_40_fu_310_p1[1 : 0];
        zext_ln203_41_reg_860[1 : 0] <= zext_ln203_41_fu_314_p1[1 : 0];
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state12) & (icmp_ln200_fu_744_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln200_fu_744_p2 == 1'd1))) begin
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
        linebuffer_V_7_address0 = zext_ln203_47_fu_589_p1;
    end else if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_444_p2 == 1'd1))) begin
        linebuffer_V_7_address0 = linebuffer_V_7_addr_1_reg_897;
    end else if (((icmp_ln258_fu_444_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        linebuffer_V_7_address0 = zext_ln203_50_fu_544_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        linebuffer_V_7_address0 = sext_ln255_1_fu_404_p1;
    end else begin
        linebuffer_V_7_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_444_p2 == 1'd1)) | ((icmp_ln258_fu_444_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6)))) begin
        linebuffer_V_7_ce0 = 1'b1;
    end else begin
        linebuffer_V_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        linebuffer_V_7_d0 = linebuffer_V_7_q0;
    end else if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_444_p2 == 1'd1))) begin
        linebuffer_V_7_d0 = tmp1_V_reg_886;
    end else begin
        linebuffer_V_7_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_444_p2 == 1'd1)))) begin
        linebuffer_V_7_we0 = 1'b1;
    end else begin
        linebuffer_V_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        output_V_address0 = zext_ln203_fu_831_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        output_V_address0 = zext_ln192_fu_735_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        output_V_address0 = zext_ln192_4_fu_727_p1;
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
        tmpinput_V_address0 = sext_ln203_1_fu_826_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmpinput_V_address0 = sext_ln203_fu_578_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        tmpinput_V_address0 = sext_ln252_fu_362_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        tmpinput_V_address0 = tmp_58_fu_318_p3;
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
        tmpinput_V_d0 = tmp_V_reg_902;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        tmpinput_V_d0 = data_V_q0;
    end else begin
        tmpinput_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_444_p2 == 1'd1)))) begin
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
            if (((icmp_ln246_fu_289_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln250_fu_327_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_444_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln188_fu_597_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln190_fu_649_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln191_fu_683_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln200_fu_744_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & (icmp_ln202_fu_788_p2 == 1'd1))) begin
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

assign add_ln192_13_fu_704_p2 = ($signed(sext_ln192_6_fu_700_p1) + $signed(sub_ln192_1_reg_956));

assign add_ln192_14_fu_695_p2 = ($signed(sext_ln192_reg_938) + $signed(zext_ln191_fu_679_p1));

assign add_ln192_15_fu_709_p2 = (zext_ln190_1_reg_943 + zext_ln191_fu_679_p1);

assign add_ln192_16_fu_718_p2 = (zext_ln192_19_fu_714_p1 + sub_ln192_1_reg_956);

assign add_ln192_fu_635_p2 = ($signed(5'd3) + $signed(sub_ln192_fu_625_p2));

assign add_ln203_24_fu_434_p2 = (sub_ln203_1_fu_428_p2 + zext_ln203_39_reg_848);

assign add_ln203_25_fu_573_p2 = (sub_ln203_3_fu_567_p2 + zext_ln203_41_reg_860);

assign add_ln203_26_fu_468_p2 = (zext_ln203_45_fu_464_p1 + zext_ln255_reg_891);

assign add_ln203_27_fu_495_p2 = (sub_ln203_4_fu_489_p2 + zext_ln203_39_reg_848);

assign add_ln203_28_fu_512_p2 = (zext_ln203_48_fu_508_p1 + zext_ln255_reg_891);

assign add_ln203_29_fu_539_p2 = (sub_ln203_5_fu_533_p2 + zext_ln203_39_reg_848);

assign add_ln203_30_fu_821_p2 = (sub_ln203_2_reg_993 + zext_ln203_51_fu_817_p1);

assign add_ln203_fu_812_p2 = (sub_ln203_reg_988 + zext_ln203_12_fu_808_p1);

assign add_ln252_fu_357_p2 = (sub_ln252_1_fu_351_p2 + zext_ln203_41_reg_860);

assign add_ln255_4_fu_399_p2 = ($signed(sext_ln255_fu_395_p1) + $signed(zext_ln203_40_reg_855));

assign add_ln255_fu_367_p2 = ($signed(i1_0_reg_211) + $signed(3'd7));

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

assign data_V_address0 = zext_ln248_fu_301_p1;

assign i0_4_fu_603_p2 = (i0_0_i_reg_234 + 3'd1);

assign i0_fu_295_p2 = (i0_0_reg_199 + 2'd1);

assign i1_7_fu_655_p2 = (i1_0_i_reg_245 + 3'd1);

assign i1_8_fu_750_p2 = (i11_0_i_reg_267 + 3'd1);

assign i1_fu_583_p2 = (i1_0_reg_211 + 3'd1);

assign i2_7_fu_794_p2 = (i22_0_i_reg_278 + 2'd1);

assign i2_8_fu_689_p2 = (i2_0_i_reg_256 + 2'd1);

assign i2_fu_450_p2 = (i2_0_reg_223 + 8'd1);

assign icmp_ln188_fu_597_p2 = ((i0_0_i_reg_234 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln190_fu_649_p2 = ((i1_0_i_reg_245 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln191_fu_683_p2 = ((i2_0_i_reg_256 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln200_fu_744_p2 = ((i11_0_i_reg_267 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln202_fu_788_p2 = ((i22_0_i_reg_278 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln246_fu_289_p2 = ((i0_0_reg_199 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln250_fu_327_p2 = ((i1_0_reg_211 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln258_fu_444_p2 = ((i2_0_reg_223 == 8'd130) ? 1'b1 : 1'b0);

assign or_ln_fu_800_p3 = {{2'd3}, {i22_0_i_reg_278}};

assign p_shl1_cast_fu_481_p3 = {{trunc_ln203_fu_477_p1}, {2'd0}};

assign p_shl2_cast_fu_525_p3 = {{trunc_ln203_1_fu_521_p1}, {2'd0}};

assign p_shl_cast_fu_419_p4 = {{{{7'd65}, {add_ln255_reg_874}}}, {2'd0}};

assign sext_ln192_4_fu_732_p1 = $signed(add_ln192_13_reg_970);

assign sext_ln192_5_fu_723_p1 = $signed(add_ln192_16_fu_718_p2);

assign sext_ln192_6_fu_700_p1 = $signed(add_ln192_14_fu_695_p2);

assign sext_ln192_fu_631_p1 = sub_ln192_fu_625_p2;

assign sext_ln203_1_fu_826_p1 = $signed(add_ln203_30_fu_821_p2);

assign sext_ln203_fu_578_p1 = $signed(add_ln203_25_fu_573_p2);

assign sext_ln252_fu_362_p1 = $signed(add_ln252_fu_357_p2);

assign sext_ln255_1_fu_404_p1 = $signed(add_ln255_4_fu_399_p2);

assign sext_ln255_fu_395_p1 = $signed(sub_ln255_fu_389_p2);

assign shl_ln192_7_fu_661_p3 = {{i1_0_i_reg_245}, {4'd0}};

assign shl_ln4_fu_756_p3 = {{i11_0_i_reg_267}, {4'd0}};

assign shl_ln_fu_613_p3 = {{trunc_ln192_fu_609_p1}, {2'd0}};

assign sub_ln192_1_fu_673_p2 = (zext_ln192_18_fu_669_p1 - zext_ln190_fu_645_p1);

assign sub_ln192_fu_625_p2 = (zext_ln192_17_fu_621_p1 - zext_ln188_fu_593_p1);

assign sub_ln203_1_fu_428_p2 = (p_shl_cast_fu_419_p4 - tmp_62_cast_fu_412_p3);

assign sub_ln203_2_fu_782_p2 = (tmp_63_fu_774_p3 - zext_ln203_43_fu_770_p1);

assign sub_ln203_3_fu_567_p2 = (tmp_64_fu_559_p3 - zext_ln203_44_fu_555_p1);

assign sub_ln203_4_fu_489_p2 = (p_shl1_cast_fu_481_p3 - zext_ln203_46_fu_473_p1);

assign sub_ln203_5_fu_533_p2 = (p_shl2_cast_fu_525_p3 - zext_ln203_49_fu_517_p1);

assign sub_ln203_fu_764_p2 = (shl_ln4_fu_756_p3 - zext_ln203_11_fu_740_p1);

assign sub_ln252_1_fu_351_p2 = (tmp_60_fu_343_p3 - zext_ln252_fu_339_p1);

assign sub_ln252_fu_333_p2 = ($signed(3'd5) - $signed(i1_0_reg_211));

assign sub_ln255_fu_389_p2 = (zext_ln255_10_fu_385_p1 - zext_ln255_9_fu_373_p1);

assign sub_ln265_fu_549_p2 = ($signed(3'd4) - $signed(i1_0_reg_211));

assign tmp_58_fu_318_p3 = {{62'd3}, {i0_0_reg_199}};

assign tmp_60_fu_343_p3 = {{sub_ln252_fu_333_p2}, {2'd0}};

assign tmp_61_fu_377_p3 = {{add_ln255_fu_367_p2}, {2'd0}};

assign tmp_62_cast_fu_412_p3 = {{9'd65}, {add_ln255_reg_874}};

assign tmp_63_fu_774_p3 = {{i11_0_i_reg_267}, {2'd0}};

assign tmp_64_fu_559_p3 = {{sub_ln265_fu_549_p2}, {2'd0}};

assign tmp_65_fu_456_p3 = {{i2_0_reg_223}, {2'd0}};

assign tmp_67_fu_500_p3 = {{i2_fu_450_p2}, {2'd0}};

assign trunc_ln192_fu_609_p1 = i0_0_i_reg_234[1:0];

assign trunc_ln203_1_fu_521_p1 = add_ln203_28_fu_512_p2[9:0];

assign trunc_ln203_fu_477_p1 = add_ln203_26_fu_468_p2[9:0];

assign zext_ln188_fu_593_p1 = i0_0_i_reg_234;

assign zext_ln190_1_fu_641_p1 = add_ln192_fu_635_p2;

assign zext_ln190_fu_645_p1 = i1_0_i_reg_245;

assign zext_ln191_fu_679_p1 = i2_0_i_reg_256;

assign zext_ln192_17_fu_621_p1 = shl_ln_fu_613_p3;

assign zext_ln192_18_fu_669_p1 = shl_ln192_7_fu_661_p3;

assign zext_ln192_19_fu_714_p1 = add_ln192_15_fu_709_p2;

assign zext_ln192_4_fu_727_p1 = $unsigned(sext_ln192_5_fu_723_p1);

assign zext_ln192_fu_735_p1 = $unsigned(sext_ln192_4_fu_732_p1);

assign zext_ln203_11_fu_740_p1 = i11_0_i_reg_267;

assign zext_ln203_12_fu_808_p1 = or_ln_fu_800_p3;

assign zext_ln203_39_fu_306_p1 = i0_0_reg_199;

assign zext_ln203_40_fu_310_p1 = i0_0_reg_199;

assign zext_ln203_41_fu_314_p1 = i0_0_reg_199;

assign zext_ln203_42_fu_439_p1 = add_ln203_24_fu_434_p2;

assign zext_ln203_43_fu_770_p1 = i11_0_i_reg_267;

assign zext_ln203_44_fu_555_p1 = sub_ln265_fu_549_p2;

assign zext_ln203_45_fu_464_p1 = tmp_65_fu_456_p3;

assign zext_ln203_46_fu_473_p1 = add_ln203_26_fu_468_p2;

assign zext_ln203_47_fu_589_p1 = add_ln203_27_reg_915;

assign zext_ln203_48_fu_508_p1 = tmp_67_fu_500_p3;

assign zext_ln203_49_fu_517_p1 = add_ln203_28_fu_512_p2;

assign zext_ln203_50_fu_544_p1 = add_ln203_29_fu_539_p2;

assign zext_ln203_51_fu_817_p1 = i22_0_i_reg_278;

assign zext_ln203_fu_831_p1 = add_ln203_reg_1006;

assign zext_ln248_fu_301_p1 = i0_0_reg_199;

assign zext_ln252_fu_339_p1 = sub_ln252_fu_333_p2;

assign zext_ln255_10_fu_385_p1 = tmp_61_fu_377_p3;

assign zext_ln255_9_fu_373_p1 = add_ln255_fu_367_p2;

assign zext_ln255_fu_409_p1 = add_ln255_reg_874;

always @ (posedge ap_clk) begin
    zext_ln203_39_reg_848[11:2] <= 10'b0000000000;
    zext_ln203_40_reg_855[6:2] <= 5'b00000;
    zext_ln203_41_reg_860[4:2] <= 3'b000;
    zext_ln255_reg_891[10:3] <= 8'b00000000;
    zext_ln190_1_reg_943[5] <= 1'b0;
end

endmodule //cnnshift_arr_ap_fixed_ap_fixed_16_5_5_3_0_config3_s
