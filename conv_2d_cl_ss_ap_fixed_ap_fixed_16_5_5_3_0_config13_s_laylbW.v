// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module conv_2d_cl_ss_ap_fixed_ap_fixed_16_5_5_3_0_config13_s_laylbW_ram (addr0, ce0, d0, we0, q0,  clk);

parameter DWIDTH = 16;
parameter AWIDTH = 8;
parameter MEM_SIZE = 144;

input[AWIDTH-1:0] addr0;
input ce0;
input[DWIDTH-1:0] d0;
input we0;
output reg[DWIDTH-1:0] q0;
input clk;

(* ram_style = "block" *)reg [DWIDTH-1:0] ram[0:MEM_SIZE-1];

initial begin
    $readmemh("./conv_2d_cl_ss_ap_fixed_ap_fixed_16_5_5_3_0_config13_s_laylbW_ram.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) begin
        if (we0) 
            ram[addr0] <= d0; 
        q0 <= ram[addr0];
    end
end


endmodule

`timescale 1 ns / 1 ps
module conv_2d_cl_ss_ap_fixed_ap_fixed_16_5_5_3_0_config13_s_laylbW(
    reset,
    clk,
    address0,
    ce0,
    we0,
    d0,
    q0);

parameter DataWidth = 32'd16;
parameter AddressRange = 32'd144;
parameter AddressWidth = 32'd8;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
input we0;
input[DataWidth - 1:0] d0;
output[DataWidth - 1:0] q0;



conv_2d_cl_ss_ap_fixed_ap_fixed_16_5_5_3_0_config13_s_laylbW_ram conv_2d_cl_ss_ap_fixed_ap_fixed_16_5_5_3_0_config13_s_laylbW_ram_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .we0( we0 ),
    .d0( d0 ),
    .q0( q0 ));

endmodule

