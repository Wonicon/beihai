module asic_top(

//sys clk
SYS_CLK_IN,
SYS_CLK_OUT,
SYSRSTn,
//apb clk in
APB_CLK_IN,
APB_CLK_OUT,
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
PLL_M5

);
//sys clk
input           SYS_CLK_IN;
output          SYS_CLK_OUT;
inout           SYSRSTn;
//apb clk in
inout           APB_CLK_IN;
inout          APB_CLK_OUT;
//spi
inout          SPI_CLK;
inout          SPI_CS0;
inout          SPI_CS1;
inout           SPI_MISO;
inout          SPI_MOSI;
//uart
inout           UART_RX;
inout          UART_TX;
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
inout          CHIPLINK_TX_CLK;
inout          CHIPLINK_TX_RST;
inout          CHIPLINK_TX_SEND;
inout          CHIPLINK_TX_DAT0;
inout          CHIPLINK_TX_DAT1;
inout          CHIPLINK_TX_DAT2;
inout          CHIPLINK_TX_DAT3;
inout          CHIPLINK_TX_DAT4;
inout          CHIPLINK_TX_DAT5;
inout          CHIPLINK_TX_DAT6;
inout          CHIPLINK_TX_DAT7;
inout          CHIPLINK_TX_DAT8;
inout          CHIPLINK_TX_DAT9;
inout          CHIPLINK_TX_DAT10;
inout          CHIPLINK_TX_DAT11;
inout          CHIPLINK_TX_DAT12;
inout          CHIPLINK_TX_DAT13;
inout          CHIPLINK_TX_DAT14;
inout          CHIPLINK_TX_DAT15;
inout          CHIPLINK_TX_DAT16;
inout          CHIPLINK_TX_DAT17;
inout          CHIPLINK_TX_DAT18;
inout          CHIPLINK_TX_DAT19;
inout          CHIPLINK_TX_DAT20;
inout          CHIPLINK_TX_DAT21;
inout          CHIPLINK_TX_DAT22;
inout          CHIPLINK_TX_DAT23;
inout          CHIPLINK_TX_DAT24;
inout          CHIPLINK_TX_DAT25;
inout          CHIPLINK_TX_DAT26;
inout          CHIPLINK_TX_DAT27;
inout          CHIPLINK_TX_DAT28;
inout          CHIPLINK_TX_DAT29;
inout          CHIPLINK_TX_DAT30;
inout          CHIPLINK_TX_DAT31;

//PLL
inout           PLL_M0;
inout           PLL_M1;
inout           PLL_M2;
inout           PLL_M3;
inout           PLL_M4;
inout           PLL_M5;



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

wire [`GPIO_W-1:0]  gpio_i;
wire [`GPIO_W-1:0]  gpio_o;
wire [`GPIO_W-1:0]  gpio_oe;



wire     [5:0]       pll_cfg;




wire        clk_core;
wire        rst_core;
wire        clk_chiplink;
wire        rst_chiplink;
wire        clk_apb_in;


crg u0_crg(
    .sys_clk(clk),
    .sys_rst(rst_n),
    .pll_cfg(pll_cfg),
    .clk_core(clk_core),
    .rst_core(rst_core),
    .clk_chiplink(clk_chiplink),
    .rst_chiplink(rst_chiplink),
    .clk_apb_in(clk_apb_in),
    .pll_lock_1(),
    .pll_lock_2()
);


soc_top u0_soc_top(
//cpu clock in
.clk(clk_core),
.rst_n(rst_core),

//apb clk
.apb_clk_in(clk_apb_in),
//spi
.spi_cs(spi_cs),
.spi_clk(spi_clk),
.spi_mosi(spi_mosi),
.spi_miso(spi_miso),

//chiplink
//.chiplink_rx_clk(chiplink_rx_clk),
.chiplink_rx_clk(clk_chiplink),
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

.gpio_i(gpio_i),
.gpio_o(gpio_o),
.gpio_oe(gpio_oe)
);

`define OEN 1'b1 //gpio
PDXOEDG_H_G u0_SYS_CLK(.E(1'b1),.DS0(),.DS1(),.XIN(SYS_CLK_IN),.XOUT(SYS_CLK_OUT),.XC(clk));
PDDW04DGZ_H_G u0_SYSRSTn(.C(rst_n),.PAD(SYSRSTn),.I(),.REN(),.OEN(`OEN));
//
//PDXOEDG_H_G u0_APB_CLK(.E(`OEN),.DS0(),.DS1(),.XIN(APB_CLK_IN),.XOUT(APB_CLK_OUT),.XC(apb_clk_in));
//spi
PDDW04DGZ_H_G u0_SPI_CLK(.C(),.PAD(SPI_CLK),.I(spi_clk),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_SPI_CS0(.C(),.PAD(SPI_CS0),.I(spi_cs[0]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_SPI_CS1(.C(),.PAD(SPI_CS1),.I(spi_cs[1]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_SPI_MISO(.C(spi_miso),.PAD(SPI_MISO),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_SPI_MOSI(.C(),.PAD(SPI_MOSI),.I(spi_mosi),.REN(),.OEN(~`OEN));
//uart
PDDW04DGZ_H_G u0_UART_RX(.C(uart_rx),.PAD(UART_RX),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_UART_TX(.C(),.PAD(UART_TX),.I(uart_tx),.REN(),.OEN(~`OEN));
//pll
PDDW04DGZ_H_G u0_PLL_M0(.C(pll_cfg[0]),.PAD(PLL_M0),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_PLL_M1(.C(pll_cfg[1]),.PAD(PLL_M1),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_PLL_M2(.C(pll_cfg[2]),.PAD(PLL_M2),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_PLL_M3(.C(pll_cfg[3]),.PAD(PLL_M3),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_PLL_M4(.C(pll_cfg[4]),.PAD(PLL_M4),.I(),.REN(),.OEN(`OEN));
PDDW04DGZ_H_G u0_PLL_M5(.C(pll_cfg[5]),.PAD(PLL_M5),.I(),.REN(),.OEN(`OEN));


//GPIO
PDDW04DGZ_H_G u0_GPIO0(.C(gpio_o[0]),.PAD(GPIO0),.I(gpio_i[0]),.REN(),.OEN(~gpio_oe[0]));
PDDW04DGZ_H_G u0_GPIO1(.C(gpio_o[1]),.PAD(GPIO1),.I(gpio_i[1]),.REN(),.OEN(~gpio_oe[1]));
PDDW04DGZ_H_G u0_GPIO2(.C(gpio_o[2]),.PAD(GPIO2),.I(gpio_i[2]),.REN(),.OEN(~gpio_oe[2]));
PDDW04DGZ_H_G u0_GPIO3(.C(gpio_o[3]),.PAD(GPIO3),.I(gpio_i[3]),.REN(),.OEN(~gpio_oe[3]));
//IO CTR
PDDW04DGZ_H_G u0_IOCTR(.C(ioctr),.PAD(IOCTR),.I(),.REN(),.OEN(`OEN));
//chiplink gpio
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
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT24(.C(),.PAD(CHIPLINK_TX_DAT24),.I(chiplink_tx_data[24]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT25(.C(),.PAD(CHIPLINK_TX_DAT25),.I(chiplink_tx_data[25]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT26(.C(),.PAD(CHIPLINK_TX_DAT26),.I(chiplink_tx_data[26]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT27(.C(),.PAD(CHIPLINK_TX_DAT27),.I(chiplink_tx_data[27]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT28(.C(),.PAD(CHIPLINK_TX_DAT28),.I(chiplink_tx_data[28]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT29(.C(),.PAD(CHIPLINK_TX_DAT29),.I(chiplink_tx_data[29]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT30(.C(),.PAD(CHIPLINK_TX_DAT30),.I(chiplink_tx_data[30]),.REN(),.OEN(~`OEN));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT31(.C(),.PAD(CHIPLINK_TX_DAT31),.I(chiplink_tx_data[31]),.REN(),.OEN(~`OEN));

endmodule


`define RST_CNT_END 20'h1ffff
module crg(
    sys_clk,
    sys_rst,
    pll_cfg,
    clk_core,
    rst_core,
    clk_chiplink,
    rst_chiplink,
    clk_apb_in,
    pll_lock_1,
    pll_lock_2
);

    input       sys_clk;
    input       sys_rst;
    input [5:0] pll_cfg;
    output      clk_core;
    output      rst_core;
    output      clk_chiplink;
    output      rst_chiplink;
    output      clk_apb_in;
    output      pll_lock_1;
    output      pll_lock_2;

    wire                 rst_gen;
    //wire pll_1
    reg             BYPASS_1;
    reg             DSMPD_1;
    reg  [11:0]     FBDIV_1;
    reg             FOUTPOSTDIVPD_1;
    reg             FOUTVCOPD_1;
    reg             FREF_1;
    reg             PD_1;
    reg  [2:0]      POSTDIV1_1;
    reg  [2:0]      POSTDIV2_1;
    reg  [5:0]      REFDIV_1;
    wire            CLKSSCG_1;
    wire            FOUTPOSTDIV_1;
    wire            FOUTVCO_1;
    wire            LOCK_1;
    //wire pll_2
    reg             BYPASS_2;
    reg             DSMPD_2;
    reg  [11:0]     FBDIV_2;
    reg             FOUTPOSTDIVPD_2;
    reg             FOUTVCOPD_2;
    reg             FREF_2;
    reg             PD_2;
    reg  [2:0]      POSTDIV1_2;
    reg  [2:0]      POSTDIV2_2;
    reg  [5:0]      REFDIV_2;
    wire            CLKSSCG_2;
    wire            FOUTPOSTDIV_2;
    wire            FOUTVCO_2;
    wire            LOCK_2;


    //pll_lock
    assign pll_lock_1 = LOCK_1;
    assign pll_lock_2 = LOCK_2;
    reg   [19:0]    rst_cnt;
    
    assign FREF   =   sys_clk;
  
    assign clk_apb_in   =   sys_clk;
    assign clk_core =   FOUTPOSTDIV_1;
    assign clk_chiplink =   FOUTPOSTDIV_2;
    assign rst_core = rst_gen;
    assign rst_chiplink = rst_gen;
    
    always@(posedge sys_clk) begin
        if(!sys_rst)
            rst_cnt <= 20'h0;
        else if(rst_cnt < `RST_CNT_END)
            rst_cnt <= rst_cnt + 20'h1;
    end

    assign rst_gen = rst_cnt == `RST_CNT_END;


    //pll1
    always@(pll_cfg[3:0] ) begin
        case(pll_cfg[3:0])
        4'b0000: begin //pll_1 bypass
            //pll1
            BYPASS_1 = 1'b1;
            REFDIV_1		= 6'b000010;		
		    FBDIV_1			= 12'd20;		
            POSTDIV1_1		= 3'b001;		
            POSTDIV2_1		= 3'b001;		
            PD_1			= 1'b0;			
            DSMPD_1			= 1'b1;	
            FOUTPOSTDIVPD_1 = 1'b0;
            FOUTVCOPD_1     = 1'b0;
    
        end
        4'b0001: begin //pll_1 5 
            //pll1
            BYPASS_1 = 1'b0;
            REFDIV_1		= 6'b000010;		
		    FBDIV_1			= 12'd20;		
            POSTDIV1_1		= 3'b010;		
            POSTDIV2_1		= 3'b001;		
            PD_1			= 1'b0;			
            DSMPD_1			= 1'b1;	
            FOUTPOSTDIVPD_1 = 1'b0;
            FOUTVCOPD_1     = 1'b0;
        
        end
        4'b0010: begin //pll_1 6 
            //pll1
            BYPASS_1 = 1'b0;
            REFDIV_1		= 6'b000010;		
		    FBDIV_1			= 12'd24;		
            POSTDIV1_1		= 3'b010;		
            POSTDIV2_1		= 3'b001;		
            PD_1			= 1'b0;			
            DSMPD_1			= 1'b1;	
            FOUTPOSTDIVPD_1 = 1'b0;
            FOUTVCOPD_1     = 1'b0;
        end
        4'b0011: begin //pll_1 7
            //pll1
            BYPASS_1 = 1'b0;
            REFDIV_1		= 6'b000010;		
		    FBDIV_1			= 12'd28;		
            POSTDIV1_1		= 3'b010;		
            POSTDIV2_1		= 3'b001;		
            PD_1			= 1'b0;			
            DSMPD_1			= 1'b1;	
            FOUTPOSTDIVPD_1 = 1'b0;
            FOUTVCOPD_1     = 1'b0;
        end
        4'b0100: begin //pll_1 8
            //pll1
            BYPASS_1 = 1'b0;
            REFDIV_1		= 6'b000010;		
		    FBDIV_1			= 12'd32;		
            POSTDIV1_1		= 3'b010;		
            POSTDIV2_1		= 3'b001;		
            PD_1			= 1'b0;			
            DSMPD_1			= 1'b1;	
            FOUTPOSTDIVPD_1 = 1'b0;
            FOUTVCOPD_1     = 1'b0;
        end
        4'b0101: begin //pll_1 9
            //pll1
            BYPASS_1 = 1'b0;
            REFDIV_1		= 6'b000010;		
		    FBDIV_1			= 12'd36;		
            POSTDIV1_1		= 3'b010;		
            POSTDIV2_1		= 3'b001;		
            PD_1			= 1'b0;			
            DSMPD_1			= 1'b1;	
            FOUTPOSTDIVPD_1 = 1'b0;
            FOUTVCOPD_1     = 1'b0;
        end
        4'b0110: begin //pll_1 10
            //pll1
            BYPASS_1 = 1'b0;
            REFDIV_1		= 6'b000010;		
		    FBDIV_1			= 12'd40;		
            POSTDIV1_1		= 3'b010;		
            POSTDIV2_1		= 3'b001;		
            PD_1			= 1'b0;			
            DSMPD_1			= 1'b1;	
            FOUTPOSTDIVPD_1 = 1'b0;
            FOUTVCOPD_1     = 1'b0;
        end
        4'b0111: begin //pll_1 11
            //pll1
            BYPASS_1 = 1'b0;
            REFDIV_1		= 6'b000010;		
		    FBDIV_1			= 12'd44;		
            POSTDIV1_1		= 3'b010;		
            POSTDIV2_1		= 3'b001;		
            PD_1			= 1'b0;			
            DSMPD_1			= 1'b1;	
            FOUTPOSTDIVPD_1 = 1'b0;
            FOUTVCOPD_1     = 1'b0;
        end
        4'b1000: begin //pll_1 12
            //pll1
            BYPASS_1 = 1'b0;
            REFDIV_1		= 6'b000010;		
		    FBDIV_1			= 12'd48;		
            POSTDIV1_1		= 3'b010;		
            POSTDIV2_1		= 3'b001;		
            PD_1			= 1'b0;			
            DSMPD_1			= 1'b1;	
            FOUTPOSTDIVPD_1 = 1'b0;
            FOUTVCOPD_1     = 1'b0;
        end
        default: begin //bypass
            BYPASS_1 = 1'b1;
            REFDIV_1		= 6'b000010;		
		    FBDIV_1			= 12'd20;		
            POSTDIV1_1		= 3'b001;		
            POSTDIV2_1		= 3'b001;		
            PD_1			= 1'b0;			
            DSMPD_1			= 1'b1;	
            FOUTPOSTDIVPD_1 = 1'b0;
            FOUTVCOPD_1     = 1'b0;
        end
        endcase
    end

    //pll2
    always@(pll_cfg[5:4] ) begin
        case(pll_cfg[5:4])
        2'b00: begin //pll_2 bypass
            //pll2
            BYPASS_2 = 1'b1;
            REFDIV_2		= 6'b000010;		
		    FBDIV_2			= 12'd20;		
            POSTDIV1_2		= 3'b001;		
            POSTDIV2_2		= 3'b001;		
            PD_2			= 1'b0;			
            DSMPD_2			= 1'b1;	
            FOUTPOSTDIVPD_2 = 1'b0;
            FOUTVCOPD_2     = 1'b0;
        end
        2'b01: begin // pll_2 1.5
            //pll2
            BYPASS_2 = 1'b0;
            REFDIV_2		= 6'b000100;		
		    FBDIV_2			= 12'd30;		
            POSTDIV1_2		= 3'b101;		
            POSTDIV2_2		= 3'b001;		
            PD_2			= 1'b0;			
            DSMPD_2			= 1'b1;	
            FOUTPOSTDIVPD_2 = 1'b0;
            FOUTVCOPD_2     = 1'b0;
        end
        2'b10: begin //pll_2 2
            //pll2
            BYPASS_2 = 1'b0;
            REFDIV_2		= 6'b000010;		
		    FBDIV_2			= 12'd24;		
            POSTDIV1_2		= 3'b011;		
            POSTDIV2_2		= 3'b010;		
            PD_2			= 1'b0;			
            DSMPD_2			= 1'b1;	
            FOUTPOSTDIVPD_2 = 1'b0;
            FOUTVCOPD_2     = 1'b0;
        end
        default: begin //by pass
            BYPASS_2 = 1'b1;
            REFDIV_2		= 6'b000010;		
		    FBDIV_2			= 12'd20;		
            POSTDIV1_2		= 3'b001;		
            POSTDIV2_2		= 3'b001;		
            PD_2			= 1'b0;			
            DSMPD_2			= 1'b1;	
            FOUTPOSTDIVPD_2 = 1'b0;
            FOUTVCOPD_2     = 1'b0;
        end
        endcase
    end
    PLLTS28HPMLAINT PLLTS28HPMLAINT_1(.BYPASS(BYPASS_1), .DSMPD(DSMPD_1), .FBDIV(FBDIV_1),
        .FOUTPOSTDIVPD(FOUTPOSTDIVPD_1), .FOUTVCOPD(FOUTVCOPD_1), .FREF(FREF), .PD(PD_1), 
        .POSTDIV1(POSTDIV1_1), .POSTDIV2(POSTDIV2_1), .REFDIV(REFDIV_1), .CLKSSCG(CLKSSCG_1),
        .FOUTPOSTDIV(FOUTPOSTDIV_1), .FOUTVCO(FOUTVCO_1), .LOCK(LOCK_1));
     PLLTS28HPMLAINT PLLTS28HPMLAINT_2(.BYPASS(BYPASS_2), .DSMPD(DSMPD_2), .FBDIV(FBDIV_2),
        .FOUTPOSTDIVPD(FOUTPOSTDIVPD_2), .FOUTVCOPD(FOUTVCOPD_2), .FREF(FREF), .PD(PD_2), 
        .POSTDIV1(POSTDIV1_2), .POSTDIV2(POSTDIV2_2), .REFDIV(REFDIV_2), .CLKSSCG(CLKSSCG_2),
        .FOUTPOSTDIV(FOUTPOSTDIV_2), .FOUTVCO(FOUTVCO_2), .LOCK(LOCK_2));

endmodule