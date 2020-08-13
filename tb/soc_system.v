`timescale 1ns / 1ps

`include "global_define.v"

module soc_system
(
);

reg                       rst_n;
reg                       clk;
reg                       apb_clk_in;

wire                      spi_flash_clk;
wire    [1:0]             spi_flash_cs;
wire                      spi_flash_mosi;
wire                      spi_flash_miso;

wire                      uart_rx;
wire                      uart_tx;


wire                      uart_rx;
wire                      uart_tx;

soc_top u0_soc_top(
.
clk(clk),.
rst_n(rst_n),.
//peripheral device clk
//pclk(),.
//spi 
apb_clk_in(apb_clk_in),.
spi_cs(spi_flash_cs),.
spi_clk(spi_flash_clk),.
spi_mosi(spi_flash_mosi),.
spi_miso(spi_flash_miso),.
//cpu dev clock
dev_clk(clk),.
//chiplink
chiplink_rx_clk(),.
chiplink_rx_rst(),.
chiplink_rx_send(),.
chiplink_rx_data(),.

chiplink_tx_clk(),.
chiplink_tx_rst(),.
chiplink_tx_send(),.
chiplink_tx_data(),.
//uart
uart_rx(uart_rx),.
uart_tx(uart_tx),.
//gpio

gpio_i(),.
gpio_o(),.
gpio_oe()
);


tty tty0
(
  .STX(uart_rx),
  .SRX(uart_tx)
);


N25Qxxx u0_spi_flash
(
  .C_(spi_flash_clk),
  .S(spi_flash_cs[0]),
  .DQ0(spi_flash_mosi),
  .DQ1(spi_flash_miso),
  .HOLD_DQ3(HOLD_DQ3),
  .Vpp_W_DQ2(Vpp_W_DQ2),
  .Vcc('d3000)
);


tty #() u0_tty
(
  .STX(uart_rx),
  .SRX(uart_tx)
);
initial begin
  clk = 0;
  rst_n = 0;
  apb_clk_in = 0;
  //#10
  repeat (4096) @(posedge clk);
  #1024
  rst_n = 1;
end

always begin
  #5.000 clk <= ~clk; 
end

always begin
  #2.500  apb_clk_in <= ~apb_clk_in; 
end
initial begin
  $display("start vpd!!!");
  $vcdpluson;
end
endmodule
