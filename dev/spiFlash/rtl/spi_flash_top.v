`timescale 1ns / 1ps

module spi_flash_top
(
input           rst_n,
input           clk,

input           pclk,
input           presetn,
input  [31:0]   paddr,
input           psel,
input           penable,
input           pwrite,
input  [31:0]   pwdata,
output [31:0]   prdata,
output          prslverr,
output          pready,

output          spi_clk,
output          spi_cs,
output          spi_mosi,
input           spi_miso

//output [3:0]    apb_state,
//output [3:0]    cmd_spi_state
);

wire            spi_clk_out;
wire  [4:0]     cmd_type;
wire  [7:0]     cmd_code;
wire  [23:0]    cmd_addr;
wire            cmd_done;
wire  [7:0]     cmd_rdata;
wire            cmd_rvalid;
wire  [3:0]     apb_state;
wire  [3:0]     cmd_spi_state;

spi_flash_ctrl u0_spi_flash_ctrl
(
  .clk(spi_clk_out),
  .rst_n(spi_resetn),
  
  .spi_clk(spi_clk),
  .spi_cs(spi_cs),
  .spi_mosi(spi_mosi),
  .spi_miso(spi_miso),
  
  .cmd_type(cmd_type),
  .cmd_code(cmd_code),
  .cmd_addr(cmd_addr),
  .cmd_rvalid(cmd_rvalid),
  .cmd_rdata(cmd_rdata),
  .cmd_done(cmd_done),
  .cmd_spi_state(cmd_spi_state)
);


spi_flash_apb u0_spi_flash_apb
(
  .PRESETn(rst_n),
  .PCLK(clk),
  .PADDR(paddr),
  .PSELx(psel),
  .PENABLE(penable),
  .PWRITE(pwrite),
  .PWDATA(pwdata),
  .PRDATA(prdata),
  .PRSLVERR(prslverr),
  .PREADY(pready),
  .state(apb_state),
  
  .spi_clk(spi_clk_out),
  .spi_resetn(spi_resetn),

  .cmd_type(cmd_type),
  .cmd_code(cmd_code),
  .cmd_addr(cmd_addr),
  .cmd_done(cmd_done),
  .cmd_rdata(cmd_rdata),
  .cmd_rvalid(cmd_rvalid)
);

endmodule
