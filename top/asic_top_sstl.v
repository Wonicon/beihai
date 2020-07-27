module asic_sstl_top(
    //sys clk
    SYS_CLK_IN,
    SYS_CLK_OUT,
    SYSRSTn,
    //apb clk in
    /*APB_CLK_IN,
    APB_CLK_OUT,
    */
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
input           SYSRSTn;
//apb clk in
//input           APB_CLK_IN;
//output          APB_CLK_OUT;
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


//pll
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

`define OE 1'b1
`define IOM 3'b001  //xx0 = DDR modexx1 = CMOS mode
`define SR 2'b00 //00 = Fast mode. Constant driver impedance for high performance. 01 = Fast mode. Minimized crowbar current for low power.10 = Slow mode. Constant driver impedance for high performance. 11 = Slow mode. Minimized crowbar current for low power.
`define PDR 1'b0 //0 = normal operation 1 = input buffer powered down DI and DT are set to logic 0 when the receiver is powered down
`define LB 1'b0 //Loopback: Active high internal loopback enable0 = normal operation 1 = loopback DOUT to DI in core voltage logic Note: DOUT data will also appear on the PAD pin if OE is high.Table 6-7DWC_D4MV_PDDRIO Pin List (Continued)Pin NameDirectionVo l t ag e  LevelDescription
`define TE 1'b0 //On-Die Termination Enable. Active-high signal. 1 = ODT is enabled 0 = ODT is disabled ODT is also disabled when OE is high regardless of the value of TE
`define SJ 1'b0 //Test Select: ■Set to 0 to select normal paths ■When SJ is 1 DJ propagates to the output pad if OJ is high, and, if SJ is low DOUT propagates to the output pad if OE is high

`define POCH 1'b0 //Power On Clear: Active high power on clear enable. Note this signal is driven in the VDDQ voltage domain by drivers in the cells DWC_D4MV_PRETPOCX and DWC_D4MV_PRETPOCC. This signal should not be connected to devices operating in the core logic domain (VDD).0 = Power on clear disabled (normal mode)1 = Power on clear enabled
`define LENH 1'b0 //Latch Enable: Active high retention latch enable. Note this signal is driven in the VDDQ voltage domain by drivers in the cells DWC_D4MV_PRETPOCX and DWC_D4MV_PRETPOCC. This signal should not be connected to devices operating in the core logic voltage domain (VDD).0 = Retention Latch Disabled (normal mode)1 = Retention Latch Enabled (retention mode)

`define ET 1'b0 //Test Data In Enable: set to '1' to enable or '0' to disable the test data input pathDOUTinputVDDData Out: data path from core to bond padDJinputVDDTest Data Out: data path from core to bond pad
`define OJ 1'b0 //Test Output Enable: Active-high output enable.1 = output driver is enabled 0 = output driver is disabled 

`define DQSR 4'b000 //DQS/DQS_b glitch suppression resistor controls
//sys clk
PDXOEDG_H_G u0_SYS_CLK(.E(1'b1),.DS0(),.DS1(),.XIN(SYS_CLK_IN),.XOUT(SYS_CLK_OUT),.XC(clk));
PDDW04DGZ_H_G u0_SYSRSTn(.C(rst_n),.PAD(SYSRSTn),.I(),.REN(),.OEN(1'b1));
//
//PDXOEDG_H_G u0_APB_CLK(.E(1'b1),.DS0(),.DS1(),.XIN(APB_CLK_IN),.XOUT(APB_CLK_OUT),.XC(apb_clk_in));
//spi
PDDW04DGZ_H_G u0_SPI_CLK(.C(),.PAD(SPI_CLK),.I(spi_clk),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_SPI_CS0(.C(),.PAD(SPI_CS0),.I(spi_cs[0]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_SPI_CS1(.C(),.PAD(SPI_CS1),.I(spi_cs[1]),.REN(),.OEN(1'b0));
PDDW04DGZ_H_G u0_SPI_MISO(.C(spi_miso),.PAD(SPI_MISO),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_SPI_MOSI(.C(),.PAD(SPI_MOSI),.I(spi_mosi),.REN(),.OEN(1'b0));
//uart
PDDW04DGZ_H_G u0_UART_RX(.C(uart_rx),.PAD(UART_RX),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_UART_TX(.C(),.PAD(UART_TX),.I(uart_tx),.REN(),.OEN(1'b0));
//pll
PDDW04DGZ_H_G u0_PLL_M0(.C(pll_cfg[0]),.PAD(PLL_M0),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_PLL_M1(.C(pll_cfg[1]),.PAD(PLL_M1),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_PLL_M2(.C(pll_cfg[2]),.PAD(PLL_M2),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_PLL_M3(.C(pll_cfg[3]),.PAD(PLL_M3),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_PLL_M4(.C(pll_cfg[4]),.PAD(PLL_M4),.I(),.REN(),.OEN(1'b1));
PDDW04DGZ_H_G u0_PLL_M5(.C(pll_cfg[5]),.PAD(PLL_M5),.I(),.REN(),.OEN(1'b1));


//GPIO
PDDW04DGZ_H_G u0_GPIO0(.C(gpio_o[0]),.PAD(GPIO0),.I(gpio_i[0]),.REN(),.OEN(~gpio_oe[0]));
PDDW04DGZ_H_G u0_GPIO1(.C(gpio_o[1]),.PAD(GPIO0),.I(gpio_i[1]),.REN(),.OEN(~gpio_oe[1]));
PDDW04DGZ_H_G u0_GPIO2(.C(gpio_o[2]),.PAD(GPIO0),.I(gpio_i[2]),.REN(),.OEN(~gpio_oe[2]));
PDDW04DGZ_H_G u0_GPIO3(.C(gpio_o[3]),.PAD(GPIO0),.I(gpio_i[3]),.REN(),.OEN(~gpio_oe[3]));
//chiplink
DWC_D4MV_PDIFF_NS u0_CHIPLINK_RX_CLK(
                            .PAD(CHIPLINK_RX_CLK),
                            .OE(`OE),
                            .DOUT(),
                            .DI(),
                            .DQSR(`DQSR),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .DFI(),
                            .DFO(chiplink_rx_clk),
                            .PDRH18(),
                            .MVREFSE(),
                            .PDRSE(),
                            .DISE());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_RST(
                            .PAD(CHIPLINK_RX_RST),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_rst),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_SEND(
                            .PAD(CHIPLINK_RX_SEND),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_send),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT0(
                            .PAD(CHIPLINK_RX_DAT0),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[0]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT1(
                            .PAD(CHIPLINK_RX_DAT1),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[1]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT2(
                            .PAD(CHIPLINK_RX_DAT2),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[2]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT3(
                            .PAD(CHIPLINK_RX_DAT3),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[3]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT4(
                            .PAD(CHIPLINK_RX_DAT4),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[4]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT5(
                            .PAD(CHIPLINK_RX_DAT5),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[5]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT6(
                            .PAD(CHIPLINK_RX_DAT6),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[6]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT7(
                            .PAD(CHIPLINK_RX_DAT7),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[7]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT8(
                            .PAD(CHIPLINK_RX_DAT8),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[8]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT9(
                            .PAD(CHIPLINK_RX_DAT9),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[9]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT10(
                            .PAD(CHIPLINK_RX_DAT10),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[10]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT11(
                            .PAD(CHIPLINK_RX_DAT11),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[11]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT12(
                            .PAD(CHIPLINK_RX_DAT12),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[12]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT13(
                            .PAD(CHIPLINK_RX_DAT13),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[13]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT14(
                            .PAD(CHIPLINK_RX_DAT14),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[14]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT15(
                            .PAD(CHIPLINK_RX_DAT15),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[15]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT16(
                            .PAD(CHIPLINK_RX_DAT16),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[16]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT17(
                            .PAD(CHIPLINK_RX_DAT17),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[17]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT18(
                            .PAD(CHIPLINK_RX_DAT18),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[18]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT19(
                            .PAD(CHIPLINK_RX_DAT19),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[19]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT20(
                            .PAD(CHIPLINK_RX_DAT20),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[20]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT21(
                            .PAD(CHIPLINK_RX_DAT21),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[21]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT22(
                            .PAD(CHIPLINK_RX_DAT22),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[22]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT23(
                            .PAD(CHIPLINK_RX_DAT23),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[23]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT24(
                            .PAD(CHIPLINK_RX_DAT24),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[24]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT25(
                            .PAD(CHIPLINK_RX_DAT25),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[25]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT26(
                            .PAD(CHIPLINK_RX_DAT26),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[26]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT27(
                            .PAD(CHIPLINK_RX_DAT27),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[27]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT28(
                            .PAD(CHIPLINK_RX_DAT28),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[28]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT29(
                            .PAD(CHIPLINK_RX_DAT29),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[29]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT30(
                            .PAD(CHIPLINK_RX_DAT30),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[30]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_RX_DAT31(
                            .PAD(CHIPLINK_RX_DAT31),
                            .OE(`OE),
                            .DOUT(),
                            .DI(chiplink_rx_data[31]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDIFF_NS u0_CHIPLINK_TX_CLK(
                            .PAD(CHIPLINK_TX_CLK),
                            .OE(~`OE),
                            .DI(),
                            .DQSR(`DQSR),
                            .DOUT(),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .DFI(chiplink_tx_clk),
                            .DFO(),
                            .PDRH18(),
                            .MVREFSE(),
                            .PDRSE(),
                            .DISE());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_RST(
                            .PAD(CHIPLINK_TX_RST),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_rst),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_SEND(
                            .PAD(CHIPLINK_TX_SEND),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_send),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT0(
                            .PAD(CHIPLINK_TX_DAT0),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[0]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT1(
                            .PAD(CHIPLINK_TX_DAT1),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[1]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT2(
                            .PAD(CHIPLINK_TX_DAT2),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[2]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT3(
                            .PAD(CHIPLINK_TX_DAT3),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[3]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT4(
                            .PAD(CHIPLINK_TX_DAT4),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[4]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT5(
                            .PAD(CHIPLINK_TX_DAT5),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[5]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT6(
                            .PAD(CHIPLINK_TX_DAT6),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[6]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT7(
                            .PAD(CHIPLINK_TX_DAT7),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[7]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT8(
                            .PAD(CHIPLINK_TX_DAT8),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[8]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT9(
                            .PAD(CHIPLINK_TX_DAT9),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[9]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT10(
                            .PAD(CHIPLINK_TX_DAT10),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[10]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT11(
                            .PAD(CHIPLINK_TX_DAT11),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[11]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT12(
                            .PAD(CHIPLINK_TX_DAT12),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[12]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT13(
                            .PAD(CHIPLINK_TX_DAT13),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[13]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT14(
                            .PAD(CHIPLINK_TX_DAT14),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[14]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT15(
                            .PAD(CHIPLINK_TX_DAT15),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[15]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT16(
                            .PAD(CHIPLINK_TX_DAT16),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[16]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT17(
                            .PAD(CHIPLINK_TX_DAT17),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[17]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT18(
                            .PAD(CHIPLINK_TX_DAT18),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[18]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT19(
                            .PAD(CHIPLINK_TX_DAT19),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[19]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT20(
                            .PAD(CHIPLINK_TX_DAT20),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[20]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT21(
                            .PAD(CHIPLINK_TX_DAT21),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[21]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT22(
                            .PAD(CHIPLINK_TX_DAT22),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[22]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT23(
                            .PAD(CHIPLINK_TX_DAT23),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[23]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT24(
                            .PAD(CHIPLINK_TX_DAT24),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[24]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT25(
                            .PAD(CHIPLINK_TX_DAT25),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[25]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT26(
                            .PAD(CHIPLINK_TX_DAT26),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[26]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT27(
                            .PAD(CHIPLINK_TX_DAT27),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[27]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT28(
                            .PAD(CHIPLINK_TX_DAT28),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[28]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT29(
                            .PAD(CHIPLINK_TX_DAT29),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[29]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT30(
                            .PAD(CHIPLINK_TX_DAT30),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[30]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());
DWC_D4MV_PDDRIO_NS u0_CHIPLINK_TX_DAT31(
                            .PAD(CHIPLINK_TX_DAT31),
                            .OE(~`OE),
                            .DI(),
                            .DOUT(chiplink_tx_data[31]),
                            .IOM(`IOM), //xx1=CMOS mode
                            .SR(`SR),
                            .PDR(`PDR),
                            .LB(`LB),
                            .TE(`TE),
                            .DJ(),
                            .ET(`ET),
                            .OJ(`OJ),
                            .SJ(`SJ),
                            .DT(),
                            .MVREF(),
                            `ifdef DWC_DDRPHY_PG_PINS                          
                            .MVAA_PLL(),
                            .MVDDQ(),
                            .MVSSQ(),
                            .MVDD(),
                            .MVSS(),
                            `endif 
                            .POCH(`POCH),
                            .ZIOH(),
                            .LENH(`LENH),
                            .PDRH18(),
                            .MVREFSE(),
                            .RK());

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
    always@(pll_cfg[2:0] ) begin
        case(pll_cfg[2:0])
        3'b000: begin //pll_1 bypass
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
        3'b001: begin //pll_1 5 
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
        3'b010: begin //pll_1 6 
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
        default: begin //
        end
        endcase
    end

    //pll2
    always@(pll_cfg[5:3] ) begin
        case(pll_cfg[5:3])
        3'b000: begin //pll_2 bypass
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
        3'b001: begin // pll_2 2
            //pll2
            BYPASS_2 = 1'b0;
            REFDIV_2		= 6'b000010;		
		    FBDIV_2			= 12'h20;		
            POSTDIV1_2		= 3'b101;		
            POSTDIV2_2		= 3'b001;		
            PD_2			= 1'b0;			
            DSMPD_2			= 1'b1;	
            FOUTPOSTDIVPD_2 = 1'b0;
            FOUTVCOPD_2     = 1'b0;
        end
        3'b010: begin //pll_2 3
            //pll2
            BYPASS_2 = 1'b0;
            REFDIV_2		= 6'b000010;		
		    FBDIV_2			= 12'h24;		
            POSTDIV1_2		= 3'b100;		
            POSTDIV2_2		= 3'b001;		
            PD_2			= 1'b0;			
            DSMPD_2			= 1'b1;	
            FOUTPOSTDIVPD_2 = 1'b0;
            FOUTVCOPD_2     = 1'b0;
        end
        default: begin //
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