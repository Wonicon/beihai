module asic_top(

//sys clk
SYS_CLK,
SYSRSTn,
//apb clk in
APB_CLK,
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
PLL_M6,
PLL_M7

);
//sys clk
input           SYS_CLK;
input           SYSRSTn;
//apb clk in
input           APB_CLK;
//spi
output          SPI_CLK;
output          SPI_CS0;
output          SPI_CS1;
input           SPI_MISO;
output          SPI_MOSI;
//uart
input           UART_RX;
output          UART_TX;
//GPIO
inout           GPIO0;
inout           GPIO1;
inout           GPIO2;
inout           GPIO3;
//chiplink
input           CHIPLINK_RX_CLK;
input           CHIPLINK_RX_RST;
input           CHIPLINK_RX_SEND;
input           CHIPLINK_RX_DAT0;
input           CHIPLINK_RX_DAT1;
input           CHIPLINK_RX_DAT2;
input           CHIPLINK_RX_DAT3;
input           CHIPLINK_RX_DAT4;
input           CHIPLINK_RX_DAT5;
input           CHIPLINK_RX_DAT6;
input           CHIPLINK_RX_DAT7;
input           CHIPLINK_RX_DAT8;
input           CHIPLINK_RX_DAT9;
input           CHIPLINK_RX_DAT10;
input           CHIPLINK_RX_DAT11;
input           CHIPLINK_RX_DAT12;
input           CHIPLINK_RX_DAT13;
input           CHIPLINK_RX_DAT14;
input           CHIPLINK_RX_DAT15;
input           CHIPLINK_RX_DAT16;
input           CHIPLINK_RX_DAT17;
input           CHIPLINK_RX_DAT18;
input           CHIPLINK_RX_DAT19;
input           CHIPLINK_RX_DAT20;
input           CHIPLINK_RX_DAT21;
input           CHIPLINK_RX_DAT22;
input           CHIPLINK_RX_DAT23;
input           CHIPLINK_RX_DAT24;
input           CHIPLINK_RX_DAT25;
input           CHIPLINK_RX_DAT26;
input           CHIPLINK_RX_DAT27;
input           CHIPLINK_RX_DAT28;
input           CHIPLINK_RX_DAT29;
input           CHIPLINK_RX_DAT30;
input           CHIPLINK_RX_DAT31;
output          CHIPLINK_TX_CLK;
output          CHIPLINK_TX_RST;
output          CHIPLINK_TX_SEND;
output          CHIPLINK_TX_DAT0;
output          CHIPLINK_TX_DAT1;
output          CHIPLINK_TX_DAT2;
output          CHIPLINK_TX_DAT3;
output          CHIPLINK_TX_DAT4;
output          CHIPLINK_TX_DAT5;
output          CHIPLINK_TX_DAT6;
output          CHIPLINK_TX_DAT7;
output          CHIPLINK_TX_DAT8;
output          CHIPLINK_TX_DAT9;
output          CHIPLINK_TX_DAT10;
output          CHIPLINK_TX_DAT11;
output          CHIPLINK_TX_DAT12;
output          CHIPLINK_TX_DAT13;
output          CHIPLINK_TX_DAT14;
output          CHIPLINK_TX_DAT15;
output          CHIPLINK_TX_DAT16;
output          CHIPLINK_TX_DAT17;
output          CHIPLINK_TX_DAT18;
output          CHIPLINK_TX_DAT19;
output          CHIPLINK_TX_DAT20;
output          CHIPLINK_TX_DAT21;
output          CHIPLINK_TX_DAT22;
output          CHIPLINK_TX_DAT23;
output          CHIPLINK_TX_DAT24;
output          CHIPLINK_TX_DAT25;
output          CHIPLINK_TX_DAT26;
output          CHIPLINK_TX_DAT27;
output          CHIPLINK_TX_DAT28;
output          CHIPLINK_TX_DAT29;
output          CHIPLINK_TX_DAT30;
output          CHIPLINK_TX_DAT31;

//PLL
input           PLL_M0;
input           PLL_M1;
input           PLL_M2;
input           PLL_M3;
input           PLL_M4;
input           PLL_M5;
input           PLL_M6;
input           PLL_M7;


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

soc_top u0_soc_top(
//cpu clock in
.clk(clk),
.rst_n(rst_n),

//apb clk
.apb_clk_in(apb_clk_in),
//spi
.spi_cs(spi_cs),
.spi_clk(spi_clk),
.spi_mosi(spi_mosi),
.spi_miso(spi_miso),

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

.gpio_i(gpio_i),
.gpio_o(gpio_o),
.gpio_oe(gpio_oe)
);
//sys clk
PDDW04DGZ_H_G u0_SYS_CLK();
PDDW04DGZ_H_G u0_SYSRSTn(.C(rst_n),.PAD(SYSRSTn),.I(),.REN(),.OEN(1'b1));
//
PDDW04DGZ_H_G u0_APB_CLK();
//spi
PDDW04DGZ_H_G u0_SPI_CLK(.C(),.PAD(SPI_CLK),.I(spi_clk),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_SPI_CS0(.C(),.PAD(SPI_CS0),.I(spi_cs[0]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_SPI_CS1(.C(),.PAD(SPI_CS1),.I(spi_cs[1]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_SPI_MISO(.C(spi_miso),.PAD(SPI_MISO),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_SPI_MOSI(.C(),.PAD(SPI_MOSI),.I(spi_mosi),.REN(),.OEN(1'b0));
//uart
PDDW04DGZ_H_G u0_UART_RX(.C(uart_rx),.PAD(UART_RX),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_UART_TX(.C(),.PAD(UART_TX),.I(uart_tx),.REN(),.OEN(1'b0));

//GPIO
PDDW04DGZ_H_G u0_GPIO0();
PDDW04DGZ_H_G u0_GPIO1();
PDDW04DGZ_H_G u0_GPIO2();
PDDW04DGZ_H_G u0_GPIO3();
//chiplink
PDDW04DGZ_H_G u0_CHIPLINK_RX_CLK(.C(chiplink_rx_clk),.PAD(CHIPLINK_RX_CLK),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_RST(.C(chiplink_rx_rst),.PAD(CHIPLINK_RX_RST),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_SEND(.C(chiplink_rx_send),.PAD(CHIPLINK_RX_SEND),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT0(.C(chiplink_rx_data[0]),.PAD(CHIPLINK_RX_DAT0),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT1(.C(chiplink_rx_data[1]),.PAD(CHIPLINK_RX_DAT1),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT2(.C(chiplink_rx_data[2]),.PAD(CHIPLINK_RX_DAT2),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT3(.C(chiplink_rx_data[3]),.PAD(CHIPLINK_RX_DAT3),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT4(.C(chiplink_rx_data[4]),.PAD(CHIPLINK_RX_DAT4),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT5(.C(chiplink_rx_data[5]),.PAD(CHIPLINK_RX_DAT5),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT6(.C(chiplink_rx_data[6]),.PAD(CHIPLINK_RX_DAT6),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT7(.C(chiplink_rx_data[7]),.PAD(CHIPLINK_RX_DAT7),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT8(.C(chiplink_rx_data[8]),.PAD(CHIPLINK_RX_DAT8),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT9(.C(chiplink_rx_data[9]),.PAD(CHIPLINK_RX_DAT9),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT10(.C(chiplink_rx_data[10]),.PAD(CHIPLINK_RX_DAT10),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT11(.C(chiplink_rx_data[11]),.PAD(CHIPLINK_RX_DAT11),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT12(.C(chiplink_rx_data[12]),.PAD(CHIPLINK_RX_DAT12),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT13(.C(chiplink_rx_data[13]),.PAD(CHIPLINK_RX_DAT13),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT14(.C(chiplink_rx_data[14]),.PAD(CHIPLINK_RX_DAT14),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT15(.C(chiplink_rx_data[15]),.PAD(CHIPLINK_RX_DAT15),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT16(.C(chiplink_rx_data[16]),.PAD(CHIPLINK_RX_DAT16),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT17(.C(chiplink_rx_data[17]),.PAD(CHIPLINK_RX_DAT17),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT18(.C(chiplink_rx_data[18]),.PAD(CHIPLINK_RX_DAT18),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT19(.C(chiplink_rx_data[19]),.PAD(CHIPLINK_RX_DAT19),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT20(.C(chiplink_rx_data[20]),.PAD(CHIPLINK_RX_DAT20),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT21(.C(chiplink_rx_data[21]),.PAD(CHIPLINK_RX_DAT21),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT22(.C(chiplink_rx_data[22]),.PAD(CHIPLINK_RX_DAT22),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT23(.C(chiplink_rx_data[23]),.PAD(CHIPLINK_RX_DAT23),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT24(.C(chiplink_rx_data[24]),.PAD(CHIPLINK_RX_DAT24),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT25(.C(chiplink_rx_data[25]),.PAD(CHIPLINK_RX_DAT25),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT26(.C(chiplink_rx_data[26]),.PAD(CHIPLINK_RX_DAT26),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT27(.C(chiplink_rx_data[27]),.PAD(CHIPLINK_RX_DAT27),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT28(.C(chiplink_rx_data[28]),.PAD(CHIPLINK_RX_DAT28),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT29(.C(chiplink_rx_data[29]),.PAD(CHIPLINK_RX_DAT29),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT30(.C(chiplink_rx_data[30]),.PAD(CHIPLINK_RX_DAT30),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_RX_DAT31(.C(chiplink_rx_data[31]),.PAD(CHIPLINK_RX_DAT31),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_CHIPLINK_TX_CLK(.C(),.PAD(CHIPLINK_TX_CLK),.I(chiplink_tx_clk),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_RST(.C(),.PAD(CHIPLINK_TX_RST),.I(chiplink_tx_rst),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_SEND(.C(),.PAD(CHIPLINK_TX_SEND),.I(chiplink_tx_send),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT0(.C(),.PAD(CHIPLINK_TX_DAT0),.I(chiplink_tx_data[0]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT1(.C(),.PAD(CHIPLINK_TX_DAT1),.I(chiplink_tx_data[1]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT2(.C(),.PAD(CHIPLINK_TX_DAT2),.I(chiplink_tx_data[2]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT3(.C(),.PAD(CHIPLINK_TX_DAT3),.I(chiplink_tx_data[3]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT4(.C(),.PAD(CHIPLINK_TX_DAT4),.I(chiplink_tx_data[4]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT5(.C(),.PAD(CHIPLINK_TX_DAT5),.I(chiplink_tx_data[5]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT6(.C(),.PAD(CHIPLINK_TX_DAT6),.I(chiplink_tx_data[6]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT7(.C(),.PAD(CHIPLINK_TX_DAT7),.I(chiplink_tx_data[7]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT8(.C(),.PAD(CHIPLINK_TX_DAT8),.I(chiplink_tx_data[8]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT9(.C(),.PAD(CHIPLINK_TX_DAT9),.I(chiplink_tx_data[9]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT10(.C(),.PAD(CHIPLINK_TX_DAT10),.I(chiplink_tx_data[10]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT11(.C(),.PAD(CHIPLINK_TX_DAT11),.I(chiplink_tx_data[11]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT12(.C(),.PAD(CHIPLINK_TX_DAT12),.I(chiplink_tx_data[12]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT13(.C(),.PAD(CHIPLINK_TX_DAT13),.I(chiplink_tx_data[13]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT14(.C(),.PAD(CHIPLINK_TX_DAT14),.I(chiplink_tx_data[14]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT15(.C(),.PAD(CHIPLINK_TX_DAT15),.I(chiplink_tx_data[15]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT16(.C(),.PAD(CHIPLINK_TX_DAT16),.I(chiplink_tx_data[16]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT17(.C(),.PAD(CHIPLINK_TX_DAT17),.I(chiplink_tx_data[17]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT18(.C(),.PAD(CHIPLINK_TX_DAT18),.I(chiplink_tx_data[18]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT19(.C(),.PAD(CHIPLINK_TX_DAT19),.I(chiplink_tx_data[19]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT20(.C(),.PAD(CHIPLINK_TX_DAT20),.I(chiplink_tx_data[20]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT21(.C(),.PAD(CHIPLINK_TX_DAT21),.I(chiplink_tx_data[21]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT22(.C(),.PAD(CHIPLINK_TX_DAT22),.I(chiplink_tx_data[22]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT23(.C(),.PAD(CHIPLINK_TX_DAT23),.I(chiplink_tx_data[23]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT24(.C(),.PAD(CHIPLINK_TX_DAT24),.I(chiplink_tx_data[24]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT25(.C(),.PAD(CHIPLINK_TX_DAT25),.I(chiplink_tx_data[25]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT26(.C(),.PAD(CHIPLINK_TX_DAT26),.I(chiplink_tx_data[26]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT27(.C(),.PAD(CHIPLINK_TX_DAT27),.I(chiplink_tx_data[27]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT28(.C(),.PAD(CHIPLINK_TX_DAT28),.I(chiplink_tx_data[28]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT29(.C(),.PAD(CHIPLINK_TX_DAT29),.I(chiplink_tx_data[29]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT30(.C(),.PAD(CHIPLINK_TX_DAT30),.I(chiplink_tx_data[30]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_CHIPLINK_TX_DAT31(.C(),.PAD(CHIPLINK_TX_DAT31),.I(chiplink_tx_data[31]),.REN(),.OEN(1'b0));

endmodule