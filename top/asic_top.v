`include "global_define.v"
module asic_top(

//sys clk
SYS_CLK_IN,
SYS_CLK_OUT,
SYSRSTn,
//spi
SPI_CLK,
SPI_CS0,
SPI_CS1,
SPI_MISO,
SPI_MOSI,
//uart
UART_RX,
UART_TX,
//GPIO
GPIO0,
GPIO1,
GPIO2,
GPIO3,
//chiplink
CHIPLINK_RX_CLK,
CHIPLINK_RX_RST,
CHIPLINK_RX_SEND,
CHIPLINK_RX_DAT0,
CHIPLINK_RX_DAT1,
CHIPLINK_RX_DAT2,
CHIPLINK_RX_DAT3,
CHIPLINK_RX_DAT4,
CHIPLINK_RX_DAT5,
CHIPLINK_RX_DAT6,
CHIPLINK_RX_DAT7,
CHIPLINK_RX_DAT8,
CHIPLINK_RX_DAT9,
CHIPLINK_RX_DAT10,
CHIPLINK_RX_DAT11,
CHIPLINK_RX_DAT12,
CHIPLINK_RX_DAT13,
CHIPLINK_RX_DAT14,
CHIPLINK_RX_DAT15,
CHIPLINK_RX_DAT16,
CHIPLINK_RX_DAT17,
CHIPLINK_RX_DAT18,
CHIPLINK_RX_DAT19,
CHIPLINK_RX_DAT20,
CHIPLINK_RX_DAT21,
CHIPLINK_RX_DAT22,
CHIPLINK_RX_DAT23,
CHIPLINK_RX_DAT24,
CHIPLINK_RX_DAT25,
CHIPLINK_RX_DAT26,
CHIPLINK_RX_DAT27,
CHIPLINK_RX_DAT28,
CHIPLINK_RX_DAT29,
CHIPLINK_RX_DAT30,
CHIPLINK_RX_DAT31,
CHIPLINK_TX_CLK,
CHIPLINK_TX_RST,
CHIPLINK_TX_SEND,
CHIPLINK_TX_DAT0,
CHIPLINK_TX_DAT1,
CHIPLINK_TX_DAT2,
CHIPLINK_TX_DAT3,
CHIPLINK_TX_DAT4,
CHIPLINK_TX_DAT5,
CHIPLINK_TX_DAT6,
CHIPLINK_TX_DAT7,
CHIPLINK_TX_DAT8,
CHIPLINK_TX_DAT9,
CHIPLINK_TX_DAT10,
CHIPLINK_TX_DAT11,
CHIPLINK_TX_DAT12,
CHIPLINK_TX_DAT13,
CHIPLINK_TX_DAT14,
CHIPLINK_TX_DAT15,
CHIPLINK_TX_DAT16,
CHIPLINK_TX_DAT17,
CHIPLINK_TX_DAT18,
CHIPLINK_TX_DAT19,
CHIPLINK_TX_DAT20,
CHIPLINK_TX_DAT21,
CHIPLINK_TX_DAT22,
CHIPLINK_TX_DAT23,
CHIPLINK_TX_DAT24,
CHIPLINK_TX_DAT25,
CHIPLINK_TX_DAT26,
CHIPLINK_TX_DAT27,
CHIPLINK_TX_DAT28,
CHIPLINK_TX_DAT29,
CHIPLINK_TX_DAT30,
CHIPLINK_TX_DAT31,

//PLL
PLL_M0,
PLL_M1,
PLL_M2,
PLL_M3,
PLL_M4,
PLL_M5,

//interrupt
INTERRUPT_0,
INTERRUPT_1,
INTERRUPT_2

);
//sys clk
input           SYS_CLK_IN;
output          SYS_CLK_OUT;
inout           SYSRSTn;
//spi
inout          SPI_CLK;
inout          SPI_CS0;
inout          SPI_CS1;
inout          SPI_MISO;
inout          SPI_MOSI;
//uart
inout           UART_RX;
inout           UART_TX;
//GPIO
inout           GPIO0;
inout           GPIO1;
inout           GPIO2;
inout           GPIO3;
//chiplink
inout           CHIPLINK_RX_CLK;
inout           CHIPLINK_RX_RST;
inout           CHIPLINK_RX_SEND;
inout           CHIPLINK_RX_DAT0;
inout           CHIPLINK_RX_DAT1;
inout           CHIPLINK_RX_DAT2;
inout           CHIPLINK_RX_DAT3;
inout           CHIPLINK_RX_DAT4;
inout           CHIPLINK_RX_DAT5;
inout           CHIPLINK_RX_DAT6;
inout           CHIPLINK_RX_DAT7;
inout           CHIPLINK_RX_DAT8;
inout           CHIPLINK_RX_DAT9;
inout           CHIPLINK_RX_DAT10;
inout           CHIPLINK_RX_DAT11;
inout           CHIPLINK_RX_DAT12;
inout           CHIPLINK_RX_DAT13;
inout           CHIPLINK_RX_DAT14;
inout           CHIPLINK_RX_DAT15;
inout           CHIPLINK_RX_DAT16;
inout           CHIPLINK_RX_DAT17;
inout           CHIPLINK_RX_DAT18;
inout           CHIPLINK_RX_DAT19;
inout           CHIPLINK_RX_DAT20;
inout           CHIPLINK_RX_DAT21;
inout           CHIPLINK_RX_DAT22;
inout           CHIPLINK_RX_DAT23;
inout           CHIPLINK_RX_DAT24;
inout           CHIPLINK_RX_DAT25;
inout           CHIPLINK_RX_DAT26;
inout           CHIPLINK_RX_DAT27;
inout           CHIPLINK_RX_DAT28;
inout           CHIPLINK_RX_DAT29;
inout           CHIPLINK_RX_DAT30;
inout           CHIPLINK_RX_DAT31;
inout           CHIPLINK_TX_CLK;
inout           CHIPLINK_TX_RST;
inout           CHIPLINK_TX_SEND;
inout           CHIPLINK_TX_DAT0;
inout           CHIPLINK_TX_DAT1;
inout           CHIPLINK_TX_DAT2;
inout           CHIPLINK_TX_DAT3;
inout           CHIPLINK_TX_DAT4;
inout           CHIPLINK_TX_DAT5;
inout           CHIPLINK_TX_DAT6;
inout           CHIPLINK_TX_DAT7;
inout           CHIPLINK_TX_DAT8;
inout           CHIPLINK_TX_DAT9;
inout           CHIPLINK_TX_DAT10;
inout           CHIPLINK_TX_DAT11;
inout           CHIPLINK_TX_DAT12;
inout           CHIPLINK_TX_DAT13;
inout           CHIPLINK_TX_DAT14;
inout           CHIPLINK_TX_DAT15;
inout           CHIPLINK_TX_DAT16;
inout           CHIPLINK_TX_DAT17;
inout           CHIPLINK_TX_DAT18;
inout           CHIPLINK_TX_DAT19;
inout           CHIPLINK_TX_DAT20;
inout           CHIPLINK_TX_DAT21;
inout           CHIPLINK_TX_DAT22;
inout           CHIPLINK_TX_DAT23;
inout           CHIPLINK_TX_DAT24;
inout           CHIPLINK_TX_DAT25;
inout           CHIPLINK_TX_DAT26;
inout           CHIPLINK_TX_DAT27;
inout           CHIPLINK_TX_DAT28;
inout           CHIPLINK_TX_DAT29;
inout           CHIPLINK_TX_DAT30;
inout           CHIPLINK_TX_DAT31;

//PLL
inout           PLL_M0;
inout           PLL_M1;
inout           PLL_M2;
inout           PLL_M3;
inout           PLL_M4;
inout           PLL_M5;

//interrupt
inout           INTERRUPT_0;
inout           INTERRUPT_1;
inout           INTERRUPT_2;

wire            clk;
wire            rst_n;

//apb clk
wire            apb_clk_in;
//spi 
wire [1:0]      spi_cs;
wire            spi_clk;
wire            spi_mosi;
wire            spi_miso;

//chiplink
wire            chiplink_rx_clk;
wire            chiplink_rx_rst;
wire            chiplink_rx_send;
wire [`chiplink_data_w - 1 : 0]  chiplink_rx_data;

wire            chiplink_tx_clk;
wire            chiplink_tx_rst;
wire            chiplink_tx_send;
wire [`chiplink_data_w - 1 : 0]  chiplink_tx_data;
//uart
wire            uart_rx;
wire            uart_tx;
//gpio
/*
gpio_0,  TCK input
gpio_1,  TDI input
gpio_2,  TMS input
gpio_3,  TDO output
*/
wire            gpio_0;
wire            gpio_1;
wire            gpio_2;
wire            gpio_3;

//
wire [`interrupt-1:0]   interrupt;
//core_clk_out use interrupt2 to output
wire                 core_clk_out;

wire    [5:0]    pll_cfg;
wire    [63:0]    pll_cfg_1;
wire    [63:0]    pll_cfg_2;
wire        pll_cfg_ctr;

wire        clk_cpucore;
wire        rst_core;
wire        clk_cpudev;
wire        rst_chiplink;
wire        clk_apb_in;
crg_hard u0_crg(
    .sys_clk(clk),
    .sys_rst(rst_n),
    //chose pll config mode
    //if interrupt[1] is 1 chose pll_hard otherwise chose pll_soft
    .mode(interrupt[1]),
    //hard mode
    .pll_cfg(pll_cfg),
    //soft mode
    .pll_cfg_1(pll_cfg_1),
    .pll_cfg_2(pll_cfg_2),
    .pll_cfg_ctr(pll_cfg_ctr),

    .clk_cpucore(clk_cpucore),
    .rst_core(rst_core),
    .clk_cpudev(clk_cpudev),
    .rst_chiplink(rst_chiplink),
    .clk_apb_in(clk_apb_in),
    .pll_lock_1(),
    .pll_lock_2()
);



/*
//chose pll config mode
//if interrupt[1] is 1 chose pll_hard otherwise chose pll_soft
assign        clk_cpucore=interrupt[1] ? clk_cpucore_hard : clk_cpucore_soft;
assign        rst_core=interrupt[1] ? rst_core_hard : rst_core_soft;
assign        clk_cpudev=interrupt[1] ? clk_cpudev_hard : clk_cpucore_soft;
assign        rst_chiplink=interrupt[1] ? rst_chiplink_hard : rst_chiplink_soft;
assign        clk_apb_in=interrupt[1] ? clk_apb_in_hard : clk_apb_in_soft;
*/

soc_top u0_soc_top(
//cpu clock in
.clk(clk_cpucore),
.rst_n(rst_core),

//apb clk
.apb_clk_in(clk_apb_in),
//spi
.spi_cs(spi_cs),
.spi_clk(spi_clk),
.spi_mosi(spi_mosi),
.spi_miso(spi_miso),

.dev_clk(clk_cpudev),
//chiplink
.chiplink_rx_clk(chiplink_rx_clk),
.chiplink_rx_rst(chiplink_rx_rst),
.chiplink_rx_send(chiplink_rx_send),
.chiplink_rx_data(chiplink_rx_data),

.chiplink_tx_clk(chiplink_tx_clk),
.chiplink_tx_rst(chiplink_tx_rst),
.chiplink_tx_send(chiplink_tx_send),
.chiplink_tx_data(chiplink_tx_data),
//uart
.uart_rx(uart_rx),
.uart_tx(uart_tx),
//gpio

.gpio_0(gpio_0),
.gpio_1(gpio_1),
.gpio_2(gpio_2),
.gpio_3(gpio_3),

//interrupt
.interrupt(interrupt),
.core_clk_out(core_clk_out),
.pll_cfg_1(pll_cfg_1),
.pll_cfg_2(pll_cfg_2),
.pll_cfg_ctr(pll_cfg_ctr)
);

`define OEN 1'b1 //gpio en
//sys 3pin
PDXOEDG_V_G u0_SYS_CLK(.E(1'b1),.DS0(),.DS1(),.XIN(SYS_CLK_IN),.XOUT(SYS_CLK_OUT),.XC(clk));
PDDW04DGZ_V_G u0_SYSRSTn(.C(rst_n),.PAD(SYSRSTn),.I(),.REN(),.OEN(`OEN));
//
//spi 5pin
PDDW04DGZ_V_G u0_SPI_CLK(.C(),.PAD(SPI_CLK),.I(spi_clk),.REN(),.OEN(~`OEN));
PDDW04DGZ_V_G u0_SPI_CS0(.C(),.PAD(SPI_CS0),.I(spi_cs[0]),.REN(),.OEN(~`OEN));
PDDW04DGZ_V_G u0_SPI_CS1(.C(),.PAD(SPI_CS1),.I(spi_cs[1]),.REN(),.OEN(~`OEN));
PDDW04DGZ_V_G u0_SPI_MISO(.C(spi_miso),.PAD(SPI_MISO),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_V_G u0_SPI_MOSI(.C(),.PAD(SPI_MOSI),.I(spi_mosi),.REN(),.OEN(~`OEN));
//uart 2pin
PDDW04DGZ_V_G u0_UART_RX(.C(uart_rx),.PAD(UART_RX),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_V_G u0_UART_TX(.C(),.PAD(UART_TX),.I(uart_tx),.REN(),.OEN(~`OEN));
//pll 6pin
PDDW04DGZ_H_G u0_PLL_M0(.C(pll_cfg[0]),.PAD(PLL_M0),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_PLL_M1(.C(pll_cfg[1]),.PAD(PLL_M1),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_PLL_M2(.C(pll_cfg[2]),.PAD(PLL_M2),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_PLL_M3(.C(pll_cfg[3]),.PAD(PLL_M3),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_PLL_M4(.C(pll_cfg[4]),.PAD(PLL_M4),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_PLL_M5(.C(pll_cfg[5]),.PAD(PLL_M5),.I(),.REN(),.OEN(`OEN));

//interrupt

PDDW04DGZ_H_G u0_INTERRUPT_0(.C(interrupt[0]),.PAD(INTERRUPT_0),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_INTERRUPT_1(.C(interrupt[1]),.PAD(INTERRUPT_1),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_INTERRUPT_2(.C(),.PAD(INTERRUPT_2),.I(core_clk_out),.REN(),.OEN(~`OEN));
//GPIO 4pin
PDDW04DGZ_V_G u0_GPIO0(.C(gpio_0),.PAD(GPIO0),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_V_G u0_GPIO1(.C(gpio_1),.PAD(GPIO1),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_V_G u0_GPIO2(.C(gpio_2),.PAD(GPIO2),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_V_G u0_GPIO3(.C(),.PAD(GPIO3),.I(gpio_3),.REN(),.OEN(~`OEN));

//chiplink gpio 70pin
PDDW04DGZ_H_G u0_CHIPLINK_RX_CLK(.C(chiplink_rx_clk),.PAD(CHIPLINK_RX_CLK),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_RST(.C(chiplink_rx_rst),.PAD(CHIPLINK_RX_RST),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_SEND(.C(chiplink_rx_send),.PAD(CHIPLINK_RX_SEND),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT0(.C(chiplink_rx_data[0]),.PAD(CHIPLINK_RX_DAT0),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT1(.C(chiplink_rx_data[1]),.PAD(CHIPLINK_RX_DAT1),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT2(.C(chiplink_rx_data[2]),.PAD(CHIPLINK_RX_DAT2),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT3(.C(chiplink_rx_data[3]),.PAD(CHIPLINK_RX_DAT3),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT4(.C(chiplink_rx_data[4]),.PAD(CHIPLINK_RX_DAT4),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT5(.C(chiplink_rx_data[5]),.PAD(CHIPLINK_RX_DAT5),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT6(.C(chiplink_rx_data[6]),.PAD(CHIPLINK_RX_DAT6),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT7(.C(chiplink_rx_data[7]),.PAD(CHIPLINK_RX_DAT7),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT8(.C(chiplink_rx_data[8]),.PAD(CHIPLINK_RX_DAT8),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT9(.C(chiplink_rx_data[9]),.PAD(CHIPLINK_RX_DAT9),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT10(.C(chiplink_rx_data[10]),.PAD(CHIPLINK_RX_DAT10),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT11(.C(chiplink_rx_data[11]),.PAD(CHIPLINK_RX_DAT11),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT12(.C(chiplink_rx_data[12]),.PAD(CHIPLINK_RX_DAT12),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT13(.C(chiplink_rx_data[13]),.PAD(CHIPLINK_RX_DAT13),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT14(.C(chiplink_rx_data[14]),.PAD(CHIPLINK_RX_DAT14),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT15(.C(chiplink_rx_data[15]),.PAD(CHIPLINK_RX_DAT15),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT16(.C(chiplink_rx_data[16]),.PAD(CHIPLINK_RX_DAT16),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT17(.C(chiplink_rx_data[17]),.PAD(CHIPLINK_RX_DAT17),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT18(.C(chiplink_rx_data[18]),.PAD(CHIPLINK_RX_DAT18),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT19(.C(chiplink_rx_data[19]),.PAD(CHIPLINK_RX_DAT19),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT20(.C(chiplink_rx_data[20]),.PAD(CHIPLINK_RX_DAT20),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT21(.C(chiplink_rx_data[21]),.PAD(CHIPLINK_RX_DAT21),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT22(.C(chiplink_rx_data[22]),.PAD(CHIPLINK_RX_DAT22),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT23(.C(chiplink_rx_data[23]),.PAD(CHIPLINK_RX_DAT23),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT24(.C(chiplink_rx_data[24]),.PAD(CHIPLINK_RX_DAT24),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT25(.C(chiplink_rx_data[25]),.PAD(CHIPLINK_RX_DAT25),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT26(.C(chiplink_rx_data[26]),.PAD(CHIPLINK_RX_DAT26),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT27(.C(chiplink_rx_data[27]),.PAD(CHIPLINK_RX_DAT27),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT28(.C(chiplink_rx_data[28]),.PAD(CHIPLINK_RX_DAT28),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT29(.C(chiplink_rx_data[29]),.PAD(CHIPLINK_RX_DAT29),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT30(.C(chiplink_rx_data[30]),.PAD(CHIPLINK_RX_DAT30),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT31(.C(chiplink_rx_data[31]),.PAD(CHIPLINK_RX_DAT31),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_CLK(.C(),.PAD(CHIPLINK_TX_CLK),.I(chiplink_tx_clk),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_RST(.C(),.PAD(CHIPLINK_TX_RST),.I(chiplink_tx_rst),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_SEND(.C(),.PAD(CHIPLINK_TX_SEND),.I(chiplink_tx_send),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT0(.C(),.PAD(CHIPLINK_TX_DAT0),.I(chiplink_tx_data[0]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT1(.C(),.PAD(CHIPLINK_TX_DAT1),.I(chiplink_tx_data[1]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT2(.C(),.PAD(CHIPLINK_TX_DAT2),.I(chiplink_tx_data[2]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT3(.C(),.PAD(CHIPLINK_TX_DAT3),.I(chiplink_tx_data[3]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT4(.C(),.PAD(CHIPLINK_TX_DAT4),.I(chiplink_tx_data[4]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT5(.C(),.PAD(CHIPLINK_TX_DAT5),.I(chiplink_tx_data[5]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT6(.C(),.PAD(CHIPLINK_TX_DAT6),.I(chiplink_tx_data[6]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT7(.C(),.PAD(CHIPLINK_TX_DAT7),.I(chiplink_tx_data[7]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT8(.C(),.PAD(CHIPLINK_TX_DAT8),.I(chiplink_tx_data[8]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT9(.C(),.PAD(CHIPLINK_TX_DAT9),.I(chiplink_tx_data[9]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT10(.C(),.PAD(CHIPLINK_TX_DAT10),.I(chiplink_tx_data[10]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT11(.C(),.PAD(CHIPLINK_TX_DAT11),.I(chiplink_tx_data[11]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT12(.C(),.PAD(CHIPLINK_TX_DAT12),.I(chiplink_tx_data[12]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT13(.C(),.PAD(CHIPLINK_TX_DAT13),.I(chiplink_tx_data[13]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT14(.C(),.PAD(CHIPLINK_TX_DAT14),.I(chiplink_tx_data[14]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT15(.C(),.PAD(CHIPLINK_TX_DAT15),.I(chiplink_tx_data[15]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT16(.C(),.PAD(CHIPLINK_TX_DAT16),.I(chiplink_tx_data[16]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT17(.C(),.PAD(CHIPLINK_TX_DAT17),.I(chiplink_tx_data[17]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT18(.C(),.PAD(CHIPLINK_TX_DAT18),.I(chiplink_tx_data[18]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT19(.C(),.PAD(CHIPLINK_TX_DAT19),.I(chiplink_tx_data[19]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT20(.C(),.PAD(CHIPLINK_TX_DAT20),.I(chiplink_tx_data[20]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT21(.C(),.PAD(CHIPLINK_TX_DAT21),.I(chiplink_tx_data[21]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT22(.C(),.PAD(CHIPLINK_TX_DAT22),.I(chiplink_tx_data[22]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT23(.C(),.PAD(CHIPLINK_TX_DAT23),.I(chiplink_tx_data[23]),.REN(),.OEN(~`OEN));
PDDW04DGZ_V_G u0_CHIPLINK_TX_DAT24(.C(),.PAD(CHIPLINK_TX_DAT24),.I(chiplink_tx_data[24]),.REN(),.OEN(~`OEN));
PDDW04DGZ_V_G u0_CHIPLINK_TX_DAT25(.C(),.PAD(CHIPLINK_TX_DAT25),.I(chiplink_tx_data[25]),.REN(),.OEN(~`OEN));
PDDW04DGZ_V_G u0_CHIPLINK_TX_DAT26(.C(),.PAD(CHIPLINK_TX_DAT26),.I(chiplink_tx_data[26]),.REN(),.OEN(~`OEN));
PDDW04DGZ_V_G u0_CHIPLINK_TX_DAT27(.C(),.PAD(CHIPLINK_TX_DAT27),.I(chiplink_tx_data[27]),.REN(),.OEN(~`OEN));
PDDW04DGZ_V_G u0_CHIPLINK_TX_DAT28(.C(),.PAD(CHIPLINK_TX_DAT28),.I(chiplink_tx_data[28]),.REN(),.OEN(~`OEN));
PDDW04DGZ_V_G u0_CHIPLINK_TX_DAT29(.C(),.PAD(CHIPLINK_TX_DAT29),.I(chiplink_tx_data[29]),.REN(),.OEN(~`OEN));
PDDW04DGZ_V_G u0_CHIPLINK_TX_DAT30(.C(),.PAD(CHIPLINK_TX_DAT30),.I(chiplink_tx_data[30]),.REN(),.OEN(~`OEN));
PDDW04DGZ_V_G u0_CHIPLINK_TX_DAT31(.C(),.PAD(CHIPLINK_TX_DAT31),.I(chiplink_tx_data[31]),.REN(),.OEN(~`OEN));

endmodule


`define RST_CNT_END 20'h1ffff
module crg_hard(
    sys_clk,
    sys_rst,
    //chose pll config mode
    //if interrupt[1] is 1 chose pll_hard otherwise chose pll_soft
    mode,
    //hard mode
    pll_cfg,
    //soft mode
    pll_cfg_1,
    pll_cfg_2,
    pll_cfg_ctr,
    clk_cpucore,
    rst_core,
    clk_cpudev,
    rst_chiplink,
    clk_apb_in,
    pll_lock_1,
    pll_lock_2
);

    input       sys_clk;
    input       sys_rst;
    input       mode;
    input [5:0] pll_cfg;
    input [63:0]      pll_cfg_1;
    input [63:0]      pll_cfg_2;
    input       pll_cfg_ctr;
    output      clk_cpucore;
    output      rst_core;
    output      clk_cpudev;
    output      rst_chiplink;
    output      clk_apb_in;
    output      pll_lock_1;
    output      pll_lock_2;

    wire                 rst_gen;



    //wire pll_1
    wire             BYPASS_1;
    wire             DSMPD_1;
    wire  [11:0]     FBDIV_1;
    wire             FOUTPOSTDIVPD_1;
    wire             FOUTVCOPD_1;
    wire             FREF_1;
    wire             PD_1;
    wire  [2:0]      POSTDIV1_1;
    wire  [2:0]      POSTDIV2_1;
    wire  [5:0]      REFDIV_1;
    wire             CLKSSCG_1;
    wire             FOUTPOSTDIV_1;
    wire             FOUTVCO_1;
    wire             LOCK_1;
    //wire pll_2
    wire             BYPASS_2;
    wire             DSMPD_2;
    wire  [11:0]     FBDIV_2;
    wire             FOUTPOSTDIVPD_2;
    wire             FOUTVCOPD_2;
    wire             FREF_2;
    wire             PD_2;
    wire  [2:0]      POSTDIV1_2;
    wire  [2:0]      POSTDIV2_2;
    wire  [5:0]      REFDIV_2;
    wire             CLKSSCG_2;
    wire             FOUTPOSTDIV_2;
    wire             FOUTVCO_2;
    wire             LOCK_2;

    //hard mode 
    //wire pll_1
    reg             BYPASS_1_hard;
    reg             DSMPD_1_hard;
    reg  [11:0]     FBDIV_1_hard;
    reg             FOUTPOSTDIVPD_1_hard;
    reg             FOUTVCOPD_1_hard;
    reg             FREF_1_hard;
    reg             PD_1_hard;
    reg  [2:0]      POSTDIV1_1_hard;
    reg  [2:0]      POSTDIV2_1_hard;
    reg  [5:0]      REFDIV_1_hard;
 
    //wire pll_2
    reg             BYPASS_2_hard;
    reg             DSMPD_2_hard;
    reg  [11:0]     FBDIV_2_hard;
    reg             FOUTPOSTDIVPD_2_hard;
    reg             FOUTVCOPD_2_hard;
    reg             FREF_2_hard;
    reg             PD_2_hard;
    reg  [2:0]      POSTDIV1_2_hard;
    reg  [2:0]      POSTDIV2_2_hard;
    reg  [5:0]      REFDIV_2_hard;
    //soft mode 
    //wire pll_1
    wire             BYPASS_1_soft;
    wire             DSMPD_1_soft;
    wire  [11:0]     FBDIV_1_soft;
    wire             FOUTPOSTDIVPD_1_soft;
    wire             FOUTVCOPD_1_soft;
    wire             FREF_1_soft;
    wire             PD_1_soft;
    wire  [2:0]      POSTDIV1_1_soft;
    wire  [2:0]      POSTDIV2_1_soft;
    wire  [5:0]      REFDIV_1_soft;
 
    //wire pll_2
    wire             BYPASS_2_soft;
    wire             DSMPD_2_soft;
    wire  [11:0]     FBDIV_2_soft;
    wire             FOUTPOSTDIVPD_2_soft;
    wire             FOUTVCOPD_2_soft;
    wire             FREF_2_soft;
    wire             PD_2_soft;
    wire  [2:0]      POSTDIV1_2_soft;
    wire  [2:0]      POSTDIV2_2_soft;
    wire  [5:0]      REFDIV_2_soft;

    //soft pll_1
    assign BYPASS_1_soft =  pll_cfg_1[0];
    assign DSMPD_1_soft =   pll_cfg_1[1];
    assign FBDIV_1_soft =   pll_cfg_1[13:2];
    assign FOUTPOSTDIVPD_1_soft =   pll_cfg_1[14];
    assign FOUTVCOPD_1_soft =   pll_cfg_1[15];
    assign FREF_1_soft = pll_cfg_1[16];
    assign PD_1_soft    =   pll_cfg_1[17];
    assign POSTDIV1_1_soft  = pll_cfg_1[20:18];
    assign POSTDIV2_1_soft = pll_cfg_1[23:21];
    assign REFDIV_1_soft = pll_cfg_1[29:24];
    //soft pll_2
    assign BYPASS_2_soft =  pll_cfg_2[0];
    assign DSMPD_2_soft =   pll_cfg_2[1];
    assign FBDIV_2_soft =   pll_cfg_2[13:2];
    assign FOUTPOSTDIVPD_2_soft =   pll_cfg_2[14];
    assign FOUTVCOPD_2_soft =   pll_cfg_2[15];
    assign FREF_2_soft = pll_cfg_2[16];
    assign PD_2_soft    =   pll_cfg_2[17];
    assign POSTDIV1_2_soft  = pll_cfg_2[20:18];
    assign POSTDIV2_2_soft = pll_cfg_2[23:21];
    assign REFDIV_2_soft = pll_cfg_2[29:24];    
    //pll_lock
    assign pll_lock_1 = LOCK_1;
    assign pll_lock_2 = LOCK_2;
    reg   [19:0]    rst_cnt;
    
    assign FREF   =   sys_clk;
  
    assign clk_apb_in   =   sys_clk;
    /*assign clk_cpucore =   FOUTPOSTDIV_1;
    assign clk_cpudev =   FOUTPOSTDIV_2;
    */
    /*
    assign clk_cpucore = mode ?  FOUTPOSTDIV_1 : (pll_cfg_ctr &LOCK_1 )? FOUTPOSTDIV_1 : sys_clk;
    assign clk_cpudev =  mode ? FOUTPOSTDIV_2 : (pll_cfg_ctr &LOCK_2)? FOUTPOSTDIV_2 : sys_clk;
    */
    //use ckmux cell
    CKMUX2D4BWP35P140 u0_clk_cpucore(
        .I0(sys_clk),
        .I1(FOUTPOSTDIV_1),
        .S(mode||(pll_cfg_ctr &LOCK_1)),
        .Z(clk_cpucore)
    );
    CKMUX2D4BWP35P140 u0_clk_cpudev(
        .I0(sys_clk),
        .I1(FOUTPOSTDIV_2),
        .S(mode||(pll_cfg_ctr &LOCK_1)),
        .Z(clk_cpudev)
    );
    //async_rst in and sync_rst out
    reg rst_s1,rst_s2;
    reg rst_sync_n;
    always @ (posedge sys_clk or negedge sys_rst)begin
        if(!sys_rst)begin
            rst_s1 <= 1'b0;
            rst_s2 <= 1'b0;
            rst_sync_n <= 1'b0;
        end
        else begin
            rst_s1 <= 1'b1;
            rst_s2 <= rst_s1;
            rst_sync_n <= rst_s2;
        end
    end

    always@(posedge sys_clk or negedge rst_sync_n ) begin
        if(!rst_sync_n)
            rst_cnt <= 20'h0;
        else if(rst_cnt < `RST_CNT_END)
            rst_cnt <= rst_cnt + 20'h1;
    end

    assign rst_gen = rst_cnt == `RST_CNT_END;
    //async_rst in and sync_rst out

    reg rst_s3,rst_s4;
    
	reg rst_gen_sync;
    always @ (posedge sys_clk or negedge rst_gen)begin
        if(!rst_gen)begin
            rst_s3 <= 1'b0;
            rst_s4 <= 1'b0;
            rst_gen_sync <= 1'b0;
        end
        else begin
            rst_s3 <= 1'b1;
            rst_s4 <= rst_s3;
            rst_gen_sync <= rst_s4;
        end
    end

    assign rst_core = rst_gen_sync;
    assign rst_chiplink = rst_gen_sync;
    //pll1 hard
    always@(pll_cfg[3:0] ) begin
        case(pll_cfg[3:0])
        4'b0000: begin //pll_1_hard bypass
            //pll1
            BYPASS_1_hard = 1'b1;
            REFDIV_1_hard		= 6'b000010;		
		    FBDIV_1_hard			= 12'd20;		
            POSTDIV1_1_hard		= 3'b001;		
            POSTDIV2_1_hard		= 3'b001;		
            PD_1_hard			= 1'b0;			
            DSMPD_1_hard			= 1'b1;	
            FOUTPOSTDIVPD_1_hard = 1'b0;
            FOUTVCOPD_1_hard     = 1'b0;
    
        end
        4'b0001: begin //pll_1_hard 5 
            //pll1
            BYPASS_1_hard = 1'b0;
            REFDIV_1_hard		= 6'b000010;		
		    FBDIV_1_hard			= 12'd20;		
            POSTDIV1_1_hard		= 3'b010;		
            POSTDIV2_1_hard		= 3'b001;		
            PD_1_hard			= 1'b0;			
            DSMPD_1_hard			= 1'b1;	
            FOUTPOSTDIVPD_1_hard = 1'b0;
            FOUTVCOPD_1_hard     = 1'b0;
        
        end
        4'b0010: begin //pll_1_hard 6 
            //pll1
            BYPASS_1_hard = 1'b0;
            REFDIV_1_hard		= 6'b000010;		
		    FBDIV_1_hard			= 12'd24;		
            POSTDIV1_1_hard		= 3'b010;		
            POSTDIV2_1_hard		= 3'b001;		
            PD_1_hard			= 1'b0;			
            DSMPD_1_hard			= 1'b1;	
            FOUTPOSTDIVPD_1_hard = 1'b0;
            FOUTVCOPD_1_hard     = 1'b0;
        end
        4'b0011: begin //pll_1_hard 7
            //pll1
            BYPASS_1_hard = 1'b0;
            REFDIV_1_hard		= 6'b000010;		
		    FBDIV_1_hard			= 12'd28;		
            POSTDIV1_1_hard		= 3'b010;		
            POSTDIV2_1_hard		= 3'b001;		
            PD_1_hard			= 1'b0;			
            DSMPD_1_hard			= 1'b1;	
            FOUTPOSTDIVPD_1_hard = 1'b0;
            FOUTVCOPD_1_hard     = 1'b0;
        end
        4'b0100: begin //pll_1_hard 8
            //pll1
            BYPASS_1_hard = 1'b0;
            REFDIV_1_hard		= 6'b000010;		
		    FBDIV_1_hard			= 12'd32;		
            POSTDIV1_1_hard		= 3'b010;		
            POSTDIV2_1_hard		= 3'b001;		
            PD_1_hard			= 1'b0;			
            DSMPD_1_hard			= 1'b1;	
            FOUTPOSTDIVPD_1_hard = 1'b0;
            FOUTVCOPD_1_hard     = 1'b0;
        end
        4'b0101: begin //pll_1_hard 9
            //pll1
            BYPASS_1_hard = 1'b0;
            REFDIV_1_hard		= 6'b000010;		
		    FBDIV_1_hard			= 12'd36;		
            POSTDIV1_1_hard		= 3'b010;		
            POSTDIV2_1_hard		= 3'b001;		
            PD_1_hard			= 1'b0;			
            DSMPD_1_hard			= 1'b1;	
            FOUTPOSTDIVPD_1_hard = 1'b0;
            FOUTVCOPD_1_hard     = 1'b0;
        end
        4'b0110: begin //pll_1_hard 10
            //pll1
            BYPASS_1_hard = 1'b0;
            REFDIV_1_hard		= 6'b000010;		
		    FBDIV_1_hard			= 12'd40;		
            POSTDIV1_1_hard		= 3'b010;		
            POSTDIV2_1_hard		= 3'b001;		
            PD_1_hard			= 1'b0;			
            DSMPD_1_hard			= 1'b1;	
            FOUTPOSTDIVPD_1_hard = 1'b0;
            FOUTVCOPD_1_hard     = 1'b0;
        end
        4'b0111: begin //pll_1_hard 11
            //pll1
            BYPASS_1_hard = 1'b0;
            REFDIV_1_hard		= 6'b000010;		
		    FBDIV_1_hard			= 12'd44;		
            POSTDIV1_1_hard		= 3'b010;		
            POSTDIV2_1_hard		= 3'b001;		
            PD_1_hard			= 1'b0;			
            DSMPD_1_hard			= 1'b1;	
            FOUTPOSTDIVPD_1_hard = 1'b0;
            FOUTVCOPD_1_hard     = 1'b0;
        end
        4'b1000: begin //pll_1_hard 12
            //pll1
            BYPASS_1_hard = 1'b0;
            REFDIV_1_hard		= 6'b000010;		
		    FBDIV_1_hard			= 12'd48;		
            POSTDIV1_1_hard		= 3'b010;		
            POSTDIV2_1_hard		= 3'b001;		
            PD_1_hard			= 1'b0;			
            DSMPD_1_hard			= 1'b1;	
            FOUTPOSTDIVPD_1_hard = 1'b0;
            FOUTVCOPD_1_hard     = 1'b0;
        end
        default: begin //bypass
            BYPASS_1_hard = 1'b1;
            REFDIV_1_hard		= 6'b000010;		
		    FBDIV_1_hard			= 12'd20;		
            POSTDIV1_1_hard		= 3'b001;		
            POSTDIV2_1_hard		= 3'b001;		
            PD_1_hard			= 1'b0;			
            DSMPD_1_hard			= 1'b1;	
            FOUTPOSTDIVPD_1_hard = 1'b0;
            FOUTVCOPD_1_hard     = 1'b0;
        end
        endcase
    end

    //pll2 hard
    always@(pll_cfg[5:4] ) begin
        case(pll_cfg[5:4])
        2'b00: begin //pll_2_hard bypass
            //pll2
            BYPASS_2_hard = 1'b1;
            REFDIV_2_hard		= 6'b000010;		
		    FBDIV_2_hard			= 12'd20;		
            POSTDIV1_2_hard		= 3'b001;		
            POSTDIV2_2_hard		= 3'b001;		
            PD_2_hard			= 1'b0;			
            DSMPD_2_hard			= 1'b1;	
            FOUTPOSTDIVPD_2_hard = 1'b0;
            FOUTVCOPD_2_hard     = 1'b0;
        end
        2'b01: begin // pll_2_hard 1.5
            //pll2
            BYPASS_2_hard = 1'b0;
            REFDIV_2_hard		= 6'b000100;		
		    FBDIV_2_hard			= 12'd30;		
            POSTDIV1_2_hard		= 3'b101;		
            POSTDIV2_2_hard		= 3'b001;		
            PD_2_hard			= 1'b0;			
            DSMPD_2_hard			= 1'b1;	
            FOUTPOSTDIVPD_2_hard = 1'b0;
            FOUTVCOPD_2_hard     = 1'b0;
        end
        2'b10: begin //pll_2_hard 2
            //pll2
            BYPASS_2_hard = 1'b0;
            REFDIV_2_hard		= 6'b000010;		
		    FBDIV_2_hard			= 12'd24;		
            POSTDIV1_2_hard		= 3'b011;		
            POSTDIV2_2_hard		= 3'b010;		
            PD_2_hard			= 1'b0;			
            DSMPD_2_hard			= 1'b1;	
            FOUTPOSTDIVPD_2_hard = 1'b0;
            FOUTVCOPD_2_hard     = 1'b0;
        end
        default: begin //by pass
            BYPASS_2_hard = 1'b1;
            REFDIV_2_hard		= 6'b000010;		
		    FBDIV_2_hard			= 12'd20;		
            POSTDIV1_2_hard		= 3'b001;		
            POSTDIV2_2_hard		= 3'b001;		
            PD_2_hard			= 1'b0;			
            DSMPD_2_hard			= 1'b1;	
            FOUTPOSTDIVPD_2_hard = 1'b0;
            FOUTVCOPD_2_hard     = 1'b0;
        end
        endcase
    end
    //pll1 config select
    assign  BYPASS_1    =   mode    ?   BYPASS_1_hard   :  pll_cfg_ctr ? BYPASS_1_soft : BYPASS_1_hard;
    assign  DSMPD_1     =   mode    ?   DSMPD_1_hard    :  pll_cfg_ctr ? DSMPD_1_soft : DSMPD_1_hard;
    assign  FBDIV_1     =   mode    ?   FBDIV_1_hard    :  pll_cfg_ctr ? FBDIV_1_soft : FBDIV_1_hard;
    assign  FOUTPOSTDIVPD_1 =   mode    ?   FOUTPOSTDIVPD_1_hard    : pll_cfg_ctr?  FOUTPOSTDIVPD_1_soft :FOUTPOSTDIVPD_1_hard;
    assign  FOUTVCOPD_1 =   mode    ?   FOUTVCOPD_1_hard    : pll_cfg_ctr ?  FOUTVCOPD_1_soft :FOUTVCOPD_1_hard;
    assign  FREF_1  =   mode    ?   FREF_1_hard :  pll_cfg_ctr ?  FREF_1_soft : FREF_1_hard;
    assign  PD_1    =   mode    ?   PD_1_hard   : pll_cfg_ctr ?  PD_1_soft : PD_1_hard;
    assign  POSTDIV1_1  =   mode    ?   POSTDIV1_1_hard : pll_cfg_ctr ?  POSTDIV1_1_soft : POSTDIV1_1_hard;
    assign  POSTDIV2_1  =   mode    ?   POSTDIV2_1_hard : pll_cfg_ctr ?  POSTDIV2_1_soft : POSTDIV2_1_hard;
    assign  REFDIV_1    =   mode    ?   REFDIV_1_hard   : pll_cfg_ctr ?  REFDIV_1_soft :REFDIV_1_hard;
    //pll2 config select
    assign  BYPASS_2    =   mode    ?   BYPASS_2_hard   :  pll_cfg_ctr ? BYPASS_2_soft : BYPASS_2_hard;
    assign  DSMPD_2     =   mode    ?   DSMPD_2_hard    :  pll_cfg_ctr ? DSMPD_2_soft : DSMPD_2_hard;
    assign  FBDIV_2     =   mode    ?   FBDIV_2_hard    :  pll_cfg_ctr ? FBDIV_2_soft : FBDIV_2_hard;
    assign  FOUTPOSTDIVPD_2 =   mode    ?   FOUTPOSTDIVPD_2_hard    : pll_cfg_ctr?  FOUTPOSTDIVPD_2_soft :FOUTPOSTDIVPD_2_hard;
    assign  FOUTVCOPD_2 =   mode    ?   FOUTVCOPD_2_hard    : pll_cfg_ctr ?  FOUTVCOPD_2_soft :FOUTVCOPD_2_hard;
    assign  FREF_2  =   mode    ?   FREF_2_hard :  pll_cfg_ctr ?  FREF_2_soft : FREF_2_hard;
    assign  PD_2    =   mode    ?   PD_2_hard   : pll_cfg_ctr ?  PD_2_soft : PD_2_hard;
    assign  POSTDIV1_2  =   mode    ?   POSTDIV1_2_hard : pll_cfg_ctr ?  POSTDIV1_2_soft : POSTDIV1_2_hard;
    assign  POSTDIV2_2  =   mode    ?   POSTDIV2_2_hard : pll_cfg_ctr ?  POSTDIV2_2_soft : POSTDIV2_2_hard;
    assign  REFDIV_2    =   mode    ?   REFDIV_2_hard   : pll_cfg_ctr ?  REFDIV_2_soft :REFDIV_2_hard;


    PLLTS28HPMLAINT PLLTS28HPMLAINT_1(.BYPASS(BYPASS_1), .DSMPD(DSMPD_1), .FBDIV(FBDIV_1),
        .FOUTPOSTDIVPD(FOUTPOSTDIVPD_1), .FOUTVCOPD(FOUTVCOPD_1), .FREF(FREF), .PD(PD_1), 
        .POSTDIV1(POSTDIV1_1), .POSTDIV2(POSTDIV2_1), .REFDIV(REFDIV_1), .CLKSSCG(CLKSSCG_1),
        .FOUTPOSTDIV(FOUTPOSTDIV_1), .FOUTVCO(FOUTVCO_1), .LOCK(LOCK_1));
     PLLTS28HPMLAINT PLLTS28HPMLAINT_2(.BYPASS(BYPASS_2), .DSMPD(DSMPD_2), .FBDIV(FBDIV_2),
        .FOUTPOSTDIVPD(FOUTPOSTDIVPD_2), .FOUTVCOPD(FOUTVCOPD_2), .FREF(FREF), .PD(PD_2), 
        .POSTDIV1(POSTDIV1_2), .POSTDIV2(POSTDIV2_2), .REFDIV(REFDIV_2), .CLKSSCG(CLKSSCG_2),
        .FOUTPOSTDIV(FOUTPOSTDIV_2), .FOUTVCO(FOUTVCO_2), .LOCK(LOCK_2));

endmodule

