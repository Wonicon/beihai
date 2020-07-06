`timescale 1ns / 1ps
`include "global_define.v"
`include "amba_define.v"

module soc_top(

//cpu clock in

clk,
rst_n,

//spi 
apb_clk_in,
spi_cs,
spi_clk,
spi_mosi,
spi_miso,

//chiplink
chiplink_rx_clk,
chiplink_rx_rst,
chiplink_rx_send,
chiplink_rx_data,

chiplink_tx_clk,
chiplink_tx_rst,
chiplink_tx_send,
chiplink_tx_data,
//uart
uart_rx,
uart_tx,
//gpio

gpio_i,
gpio_o,
gpio_oe
);

//cpu clock in
input           clk;
input           rst_n;

//spi
input           apb_clk_in;
output [1:0]    spi_cs;    
output          spi_clk;
output          spi_mosi;
input           spi_miso;

//chiplink
input           chiplink_rx_clk;
input           chiplink_rx_rst;
input           chiplink_rx_send;
input [`chiplink_data_w - 1 : 0]         chiplink_rx_data;

output         chiplink_tx_clk;
output         chiplink_tx_rst;
output         chiplink_tx_send;
output[`chiplink_data_w - 1 : 0]         chiplink_tx_data;   

//uart
input           uart_rx;
output          uart_tx;
//gpio
input   [`GPIO_W-1:0]     gpio_i;
output  [`GPIO_W-1:0]     gpio_o;
output  [`GPIO_W-1:0]     gpio_oe;


//interrupt

wire                      irq_spi;
wire                      irq_uart;
wire                      irq_gpio;
//cpu apb master



wire  [`P_ADDR_W-1:0]     m_paddr;
wire                      m_psel;
wire                      m_penable;
wire                      m_pwrite;
wire  [`P_DATA_W-1:0]     m_pwdata;
wire  [`P_STRB_W-1:0]     m_pwstrb;
wire                      m_pready;
wire  [`P_DATA_W-1:0]     m_prdata;
wire                      m_pslverr;

//apb demux
wire                      s_pclk0;
wire                      s_presetn0;
wire  [`P_ADDR_W-1:0]     s_paddr0;
wire                      s_psel0;
wire                      s_penable0;
wire                      s_pwrite0;
wire  [`P_DATA_W-1:0]     s_pwdata0;
wire  [`P_STRB_W-1:0]     s_pwstrb0;
wire                      s_pready0;
wire  [`P_DATA_W-1:0]     s_prdata0;
wire                      s_pslverr0;

wire                      s_pclk1;
wire                      s_presetn1;
wire  [`P_ADDR_W-1:0]     s_paddr1;
wire                      s_psel1;
wire                      s_penable1;
wire                      s_pwrite1;
wire  [`P_DATA_W-1:0]     s_pwdata1;
wire  [`P_STRB_W-1:0]     s_pwstrb1;
wire                      s_pready1;
wire  [`P_DATA_W-1:0]     s_prdata1;
wire                      s_pslverr1;

wire                      s_pclk2;
wire                      s_presetn2;
wire  [`P_ADDR_W-1:0]     s_paddr2;
wire                      s_psel2;
wire                      s_penable2;
wire                      s_pwrite2;
wire  [`P_DATA_W-1:0]     s_pwdata2;
wire  [`P_STRB_W-1:0]     s_pwstrb2;
wire                      s_pready2;
wire  [`P_DATA_W-1:0]     s_prdata2;
wire                      s_pslverr2;


//spi fifo

//apb fifo spi flash
wire                      fifo_pclk;
wire                      fifo_presetn;
wire  [`P_ADDR_W-1:0]     fifo_paddr;
wire                      fifo_psel;
wire                      fifo_penable;
wire                      fifo_pwrite;
wire  [`P_DATA_W-1:0]     fifo_pwdata;
wire  [`P_STRB_W-1:0]     fifo_pwstrb;
wire                      fifo_pready;
wire  [`P_DATA_W-1:0]     fifo_prdata;
wire                      fifo_pslverr;




LvNAFPGATop u0_LvNAFPGATop(
    .clock(clk),
    .reset(~rst_n),
    //chiplink
    .io_chip_c2b_clk(chiplink_rx_clk),
    .io_chip_c2b_rst(chiplink_rx_rst),
    .io_chip_c2b_send(chiplink_rx_send),
    .io_chip_c2b_data(chiplink_rx_data),
    .io_chip_b2c_clk(chiplink_tx_clk),
    .io_chip_b2c_rst(chiplink_tx_rst),
    .io_chip_b2c_send(chiplink_tx_send),
    .io_chip_b2c_data(chiplink_tx_data),
    //apb
    .mmio_apb_0_psel(m_psel),
    .mmio_apb_0_penable(m_penable),
    .mmio_apb_0_pwrite(m_pwrite),
    .mmio_apb_0_paddr(m_paddr),
    .mmio_apb_0_pwdata(m_pwdata),
    .mmio_apb_0_pstrb(m_pwstrb),
    .mmio_apb_0_pready(m_pready),
    .mmio_apb_0_pslverr(m_pslverr),
    .mmio_apb_0_prdata(m_prdata)
);

//apb_demux _fifo
assign  fifo_pclk = apb_clk_in;
assign  fifo_resetn = rst_n;


apb_afifo apb_afifo_spi_flash
(
  .s_pclk(clk),
  .s_presetn(rst_n),
  .s_paddr(m_paddr),
  .s_psel(m_psel),
  .s_penable(m_penable),
  .s_pwrite(m_pwrite),
  .s_pwdata(m_pwdata),
  .s_pwstrb(m_pwstrb),
  .s_pready(m_pready),
  .s_prdata(m_prdata),
  .s_pslverr(m_pslverr),

  .m_pclk(fifo_pclk),
  .m_presetn(fifo_presetn),
  .m_paddr(fifo_paddr),
  .m_psel(fifo_psel),
  .m_penable(fifo_penable),
  .m_pwrite(fifo_pwrite),
  .m_pwdata(fifo_pwdata),
  .m_pwstrb(fifo_pwstrb),
  .m_pready(fifo_pready),
  .m_prdata(fifo_prdata),
  .m_pslverr(fifo_pslverr)
);

apb_demux u0_apb_demux
(
  //apb in
  .pclk(fifo_pclk),
  .presetn(fifo_presetn),
  .paddr(fifo_paddr),
  .psel(fifo_psel),
  .penable(fifo_penable),
  .pwrite(fifo_pwrite),
  .pwdata(fifo_pwdata),
  .pwstrb(fifo_pwstrb),
  .pready(fifo_pready),
  .prdata(fifo_prdata),
  .pslverr(fifo_pslverr),
  //apb out 0 spi
  .pclk0(s_pclk0),
  .presetn0(s_presetn0),
  .paddr0(s_paddr0),
  .psel0(s_psel0),
  .penable0(s_penable0),
  .pwrite0(s_pwrite0),
  .pwdata0(s_pwdata0),
  .pwstrb0(s_pwstrb0),
  .pready0(s_pready0),
  .prdata0(s_prdata0),
  .pslverr0(s_pslverr0),
  //apb out 1 uart
  .pclk1(s_pclk1),
  .presetn1(s_presetn1),
  .paddr1(s_paddr1),
  .psel1(s_psel1),
  .penable1(s_penable1),
  .pwrite1(s_pwrite1),
  .pwdata1(s_pwdata1),
  .pwstrb1(s_pwstrb1),
  .pready1(s_pready1),
  .prdata1(s_prdata1),
  .pslverr1(s_pslverr1),
  //apb out 2 gpio
  .pclk2(s_pclk2),
  .presetn2(s_presetn2),
  .paddr2(s_paddr2),
  .psel2(s_psel2),
  .penable2(s_penable2),
  .pwrite2(s_pwrite2),
  .pwdata2(s_pwdata2),
  .pwstrb2(s_pwstrb2),
  .pready2(s_pready2),
  .prdata2(s_prdata2),
  .pslverr2(s_pslverr2)
);

//spi flash and spi sd-card

spi_flash 
#( 
  .flash_addr_start(`SPI_FLASH_START), 
  .flash_addr_end(`SPI_FLASH_END),
  .spi_cs_num(2) //0 for spi flash, 1 for spi sdcard
)
u0_spi_flash
(
  .pclk(s_pclk0),
  .presetn(s_presetn0),
  .paddr({s_paddr0[`P_ADDR_W-1:2],2'd0}),
  .psel(s_psel0),
  .penable(s_penable0),
  .pwrite(s_pwrite0),
  .pwdata(s_pwdata0),
  .pwstrb(s_pwstrb0),
  .prdata(s_prdata0),
  .pslverr(s_pslverr0),
  .pready(s_pready0),

  .spi_clk(spi_flash_clk),
  .spi_cs(spi_cs),
  .spi_mosi(spi_flash_mosi),
  .spi_miso(spi_flash_miso),
  
  .spi_irq_out(irq_spi)
);


//uart

uart_apb u0_uart_apb 
(
  .PCLK      (s_pclk1),
  .PRESETn   (s_presetn1),
  .PSEL      (s_psel1),
  .PENABLE   (s_penable1),
  .PREADY    (s_pready1),
  .PERR      (s_pslverr1),
  .PADDR     (s_paddr1),
  .PWRITE    (s_pwrite1),
  .PRDATA    (s_prdata1),
  .PWDATA    (s_pwdata1),
  .interrupt (irq_uart),
  .srx       (uart_rx),
  .stx       (uart_tx)
);
//gpio
wire [31:0] gpio_input;
wire [31:0] gpio_output;
wire [31:0] gpio_outen;

assign gpio_input[3:0] = gpio_i;

assign gpio_o = gpio_output[3:0];
assign gpio_oe = gpio_outen[3:0];

//gpio input as interrupt source input
assign gpio_input[6] = irq_uart;
assign gpio_input[7] = irq_spi;
assign gpio_input[31:8] = 0;

assign irq_cpu = irq_gpio;
gpio_apb u0_gpio_apb
(
  //apb
  .pclk(s_pclk2),
  .preset(!s_presetn2),
  .paddr(s_paddr2),
  .psel(s_psel2),
  .penable(s_penable2),
  .pwrite(s_pwrite2),
  .pwdata(s_pwdata2),
  .pwstrb(s_pwstrb2),
  .pready(s_pready2),
  .prdata(s_prdata2),
  .pslverr(s_pslverr2),
  //io pad
  .gpio_i(gpio_input),
  .gpio_o(gpio_output),
  .gpio_oe(gpio_outen),

  .gpio_int(irq_gpio),
  .aux_i(),
  .clk_pad_i()
);

endmodule