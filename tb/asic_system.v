`timescale 1ns / 1ps

`include "global_define.v"


module asic_system
(
);



reg         sys_clk;
reg         sys_rst;
wire        rst_n;
//spi
wire        spi_clk;
wire [1:0]  spi_cs;
wire        spi_miso;
wire        spi_mosi;
//uart
wire        uart_rx;
wire        uart_tx;
//gpio
wire [`GPIO_W-1 :0]     gpio;


//pll
wire [5:0]   pll_cfg;
assign rst_n = sys_rst;

asic_top u0_asic_top(
.SYS_CLK_IN(sys_clk),
.SYS_CLK_OUT(),
.SYSRSTn(rst_n),

//spi
.SPI_CLK(spi_clk),
.SPI_CS0(spi_cs[0]),
.SPI_CS1(spi_cs[1]),
.SPI_MISO(spi_miso),
.SPI_MOSI(spi_mosi),
//uart
.UART_RX(uart_rx),
.UART_TX(uart_rx),
//GPIO
.GPIO0(gpio[0]),
.GPIO1(gpio[1]),
.GPIO2(gpio[2]),
.GPIO3(gpio[3]),
//chiplink
.CHIPLINK_RX_CLK(),
.CHIPLINK_RX_RST(),
.CHIPLINK_RX_SEND(),
.CHIPLINK_RX_DAT0(),
.CHIPLINK_RX_DAT1(),
.CHIPLINK_RX_DAT2(),
.CHIPLINK_RX_DAT3(),
.CHIPLINK_RX_DAT4(),
.CHIPLINK_RX_DAT5(),
.CHIPLINK_RX_DAT6(),
.CHIPLINK_RX_DAT7(),
.CHIPLINK_RX_DAT8(),
.CHIPLINK_RX_DAT9(),
.CHIPLINK_RX_DAT10(),
.CHIPLINK_RX_DAT11(),
.CHIPLINK_RX_DAT12(),
.CHIPLINK_RX_DAT13(),
.CHIPLINK_RX_DAT14(),
.CHIPLINK_RX_DAT15(),
.CHIPLINK_RX_DAT16(),
.CHIPLINK_RX_DAT17(),
.CHIPLINK_RX_DAT18(),
.CHIPLINK_RX_DAT19(),
.CHIPLINK_RX_DAT20(),
.CHIPLINK_RX_DAT21(),
.CHIPLINK_RX_DAT22(),
.CHIPLINK_RX_DAT23(),
.CHIPLINK_RX_DAT24(),
.CHIPLINK_RX_DAT25(),
.CHIPLINK_RX_DAT26(),
.CHIPLINK_RX_DAT27(),
.CHIPLINK_RX_DAT28(),
.CHIPLINK_RX_DAT29(),
.CHIPLINK_RX_DAT30(),
.CHIPLINK_RX_DAT31(),
.CHIPLINK_TX_CLK(),
.CHIPLINK_TX_RST(),
.CHIPLINK_TX_SEND(),
.CHIPLINK_TX_DAT0(),
.CHIPLINK_TX_DAT1(),
.CHIPLINK_TX_DAT2(),
.CHIPLINK_TX_DAT3(),
.CHIPLINK_TX_DAT4(),
.CHIPLINK_TX_DAT5(),
.CHIPLINK_TX_DAT6(),
.CHIPLINK_TX_DAT7(),
.CHIPLINK_TX_DAT8(),
.CHIPLINK_TX_DAT9(),
.CHIPLINK_TX_DAT10(),
.CHIPLINK_TX_DAT11(),
.CHIPLINK_TX_DAT12(),
.CHIPLINK_TX_DAT13(),
.CHIPLINK_TX_DAT14(),
.CHIPLINK_TX_DAT15(),
.CHIPLINK_TX_DAT16(),
.CHIPLINK_TX_DAT17(),
.CHIPLINK_TX_DAT18(),
.CHIPLINK_TX_DAT19(),
.CHIPLINK_TX_DAT20(),
.CHIPLINK_TX_DAT21(),
.CHIPLINK_TX_DAT22(),
.CHIPLINK_TX_DAT23(),
.CHIPLINK_TX_DAT24(),
.CHIPLINK_TX_DAT25(),
.CHIPLINK_TX_DAT26(),
.CHIPLINK_TX_DAT27(),
.CHIPLINK_TX_DAT28(),
.CHIPLINK_TX_DAT29(),
.CHIPLINK_TX_DAT30(),
.CHIPLINK_TX_DAT31(),

//PLL
.PLL_M0(pll_cfg[0]),
.PLL_M1(pll_cfg[1]),
.PLL_M2(pll_cfg[2]),
.PLL_M3(pll_cfg[3]),
.PLL_M4(pll_cfg[4]),
.PLL_M5(pll_cfg[5])
);

N25Qxxx u0_spi_flash
(
  .C_(spi_clk),
  .S(spi_cs[0]),
  .DQ0(spi_mosi),
  .DQ1(spi_miso),
  .HOLD_DQ3(HOLD_DQ3),
  .Vpp_W_DQ2(Vpp_W_DQ2),
  .Vcc('d3000)
);


assign pll_cfg=6'b00_0001;

initial begin
  sys_clk = 0;
  sys_rst = 0;
  //#10
  #1024
  sys_rst = 1;
end

always begin
  #5.000 sys_clk <= ~sys_clk; 
end

initial begin
  $display("start vpd!!!");
  $vcdpluson;
end

endmodule
