// synopsys translate_off
`timescale 1ns/1ps
// synopsys translate_on
`include "gpio_defines.v"

module gpio_apb
(
pclk,
preset,
paddr,
psel,
penable,
pwrite,
pwdata,
pwstrb,
pready,
prdata,
pslverr,
gpio_i,
gpio_o,
gpio_oe,
gpio_int,
aux_i,
clk_pad_i
);
parameter dw = 32;
parameter aw = `GPIO_ADDRHH+1;

input             pclk;
input             preset;
input   [31:0]    paddr;
input             psel;
input             penable;
input             pwrite;
input   [31:0]    pwdata;
input   [3:0]     pwstrb;
output            pready;
output  [31:0]    prdata;
output            pslverr;

input   [`GPIO_IOS-1:0]  gpio_i;
output  [`GPIO_IOS-1:0]  gpio_o;
output  [`GPIO_IOS-1:0]  gpio_oe;
output            gpio_int;

// Auxiliary Inputs Interface
input	[`GPIO_IOS-1:0]  aux_i;
input             clk_pad_i;

wire            wb_clk_i;
wire            wb_rst_i;
wire            wb_cyc_i;
wire  [aw-1:0]  wb_adr_i;
wire  [dw-1:0]  wb_dat_i;
wire    [3:0]   wb_sel_i;
wire            wb_we_i;
wire            wb_stb_i;
wire  [dw-1:0]  wb_dat_o;
wire            wb_ack_o;
wire            wb_err_o;

assign wb_clk_i = pclk;
assign wb_rst_i = preset;

assign prdata   = wb_dat_o;
assign pready   = wb_ack_o;
assign pslverr  = wb_err_o;

assign wb_dat_i = pwdata;
assign wb_adr_i = paddr;
assign wb_sel_i = pwstrb;
assign wb_we_i  = pwrite;
assign wb_cyc_i = penable;
assign wb_stb_i = penable;

gpio_top u0_gpio_top
(
//wishbone
.wb_clk_i(wb_clk_i),
.wb_rst_i(wb_rst_i),
.wb_cyc_i(wb_cyc_i),
.wb_adr_i(wb_adr_i),
.wb_dat_i(wb_dat_i),
.wb_sel_i(wb_sel_i),
.wb_we_i(wb_we_i),
.wb_stb_i(wb_stb_i),
.wb_dat_o(wb_dat_o),
.wb_ack_o(wb_ack_o),
.wb_err_o(wb_err_o),
//int
.wb_inta_o(gpio_int),
//io pad
.ext_pad_i(gpio_i),
.ext_pad_o(gpio_o),
.ext_padoe_o(gpio_oe),
//aux
.aux_i(aux_i),
.clk_pad_i(clk_pad_i) 
);

endmodule
