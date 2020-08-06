`define BACKEND

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


//top top.clock is div 2 top.coreclk
//make top.clock named dev_clk
//core clock is core_clk

wire        core_clk;
wire        dev_clk;
assign core_clk = clk;
div_2 u0_div2(
  .clk_out(dev_clk),
  .clk(clk),
  .reset(~rst_n)
);

`ifndef BACKEND
`define TOP DualTop
`else
`define TOP SingleTop
`endif

`ifndef BACKEND
wire        io_axi4_0_awready;
wire        io_axi4_0_awvalid;
wire [3:0]  io_axi4_0_awid;
wire [30:0] io_axi4_0_awaddr;
wire [7:0]  io_axi4_0_awlen;
wire [2:0]  io_axi4_0_awsize;
wire [1:0]  io_axi4_0_awburst;
wire        io_axi4_0_wready;
wire        io_axi4_0_wvalid;
wire [63:0] io_axi4_0_wdata;
wire [7:0]  io_axi4_0_wstrb;
wire        io_axi4_0_wlast;
wire        io_axi4_0_bready;
wire        io_axi4_0_bvalid;
wire [3:0]  io_axi4_0_bid;
wire [1:0]  io_axi4_0_bresp;
wire        io_axi4_0_arready;
wire        io_axi4_0_arvalid;
wire [3:0]  io_axi4_0_arid;
wire [30:0] io_axi4_0_araddr;
wire [7:0]  io_axi4_0_arlen;
wire [2:0]  io_axi4_0_arsize;
wire [1:0]  io_axi4_0_arburst;
wire        io_axi4_0_rready;
wire        io_axi4_0_rvalid;
wire [3:0]  io_axi4_0_rid;
wire [63:0] io_axi4_0_rdata;
wire [1:0]  io_axi4_0_rresp;
wire        io_axi4_0_rlast;

wire        mmio_axi4_0_awready;
wire        mmio_axi4_0_awvalid;
wire [3:0]  mmio_axi4_0_awid;
wire [30:0] mmio_axi4_0_awaddr;
wire [7:0]  mmio_axi4_0_awlen;
wire [2:0]  mmio_axi4_0_awsize;
wire [1:0]  mmio_axi4_0_awburst;
wire        mmio_axi4_0_wready;
wire        mmio_axi4_0_wvalid;
wire [63:0] mmio_axi4_0_wdata;
wire [7:0]  mmio_axi4_0_wstrb;
wire        mmio_axi4_0_wlast;
wire        mmio_axi4_0_bready;
wire        mmio_axi4_0_bvalid;
wire [3:0]  mmio_axi4_0_bid;
wire [1:0]  mmio_axi4_0_bresp;
wire        mmio_axi4_0_arready;
wire        mmio_axi4_0_arvalid;
wire [3:0]  mmio_axi4_0_arid;
wire [30:0] mmio_axi4_0_araddr;
wire [7:0]  mmio_axi4_0_arlen;
wire [2:0]  mmio_axi4_0_arsize;
wire [1:0]  mmio_axi4_0_arburst;
wire        mmio_axi4_0_rready;
wire        mmio_axi4_0_rvalid;
wire [3:0]  mmio_axi4_0_rid;
wire [63:0] mmio_axi4_0_rdata;
wire [1:0]  mmio_axi4_0_rresp;
wire        mmio_axi4_0_rlast;


SimAXIMem simmem (
  .clock(dev_clk),
  .reset(~rst_n),
  .io_axi4_0_awready(io_axi4_0_awready),
  .io_axi4_0_awvalid(io_axi4_0_awvalid),
  .io_axi4_0_awid(io_axi4_0_awid),
  .io_axi4_0_awaddr(io_axi4_0_awaddr),
  .io_axi4_0_awlen(io_axi4_0_awlen),
  .io_axi4_0_awsize(io_axi4_0_awsize),
  .io_axi4_0_awburst(io_axi4_0_awburst),
  .io_axi4_0_wready(io_axi4_0_wready),
  .io_axi4_0_wvalid(io_axi4_0_wvalid),
  .io_axi4_0_wdata(io_axi4_0_wdata),
  .io_axi4_0_wstrb(io_axi4_0_wstrb),
  .io_axi4_0_wlast(io_axi4_0_wlast),
  .io_axi4_0_bready(io_axi4_0_bready),
  .io_axi4_0_bvalid(io_axi4_0_bvalid),
  .io_axi4_0_bid(io_axi4_0_bid),
  .io_axi4_0_bresp(io_axi4_0_bresp),
  .io_axi4_0_arready(io_axi4_0_arready),
  .io_axi4_0_arvalid(io_axi4_0_arvalid),
  .io_axi4_0_arid(io_axi4_0_arid),
  .io_axi4_0_araddr(io_axi4_0_araddr),
  .io_axi4_0_arlen(io_axi4_0_arlen),
  .io_axi4_0_arsize(io_axi4_0_arsize),
  .io_axi4_0_arburst(io_axi4_0_arburst),
  .io_axi4_0_rready(io_axi4_0_rready),
  .io_axi4_0_rvalid(io_axi4_0_rvalid),
  .io_axi4_0_rid(io_axi4_0_rid),
  .io_axi4_0_rdata(io_axi4_0_rdata),
  .io_axi4_0_rresp(io_axi4_0_rresp),
  .io_axi4_0_rlast(io_axi4_0_rlast)
);


integer f;
initial begin
  f = $fopen("serial", "w");
end
// Sim MMIO
reg [15:0] rid;
reg [15:0] bid;
reg rvalid;
reg bvalid;
reg rlen;
always @(posedge dev_clk) begin
  if (~rst_n) begin
    rvalid <= 0;
    bvalid <= 0;
    rid <= 0;
    bid <= 0;
    rlen <= 0;
  end

  if (mmio_axi4_0_wvalid)
    $fwrite(f, "%c", mmio_axi4_0_wdata[7:0]);

  if (mmio_axi4_0_arvalid & mmio_axi4_0_arready) begin
    rvalid <= 1;
    rid <= mmio_axi4_0_arid;
    rlen <= mmio_axi4_0_arlen;
  end
  if (mmio_axi4_0_rvalid & mmio_axi4_0_rready)
    rvalid <= 0;

  if (mmio_axi4_0_wvalid & mmio_axi4_0_wready & mmio_axi4_0_wlast) begin
    bvalid <= 1;
    bid <= mmio_axi4_0_awid;
  end
  if (mmio_axi4_0_bvalid & mmio_axi4_0_bready) begin
    if (rlen == 0)
      bvalid <= 0;
    else
      rlen <= rlen - 1;
  end
end

assign mmio_axi4_0_awready = 1;
assign mmio_axi4_0_wready = 1;
assign mmio_axi4_0_arready = 1;
assign mmio_axi4_0_rvalid = rvalid;
assign mmio_axi4_0_bvalid = bvalid;

assign mmio_axi4_0_bid = bid;
assign mmio_axi4_0_bresp = 0;
assign mmio_axi4_0_rid = rid;
assign mmio_axi4_0_rdata = 64'hdeadbeaf12345678;
assign mmio_axi4_0_rresp = 0;
assign mmio_axi4_0_rlast = 1;
`endif


`TOP top (
  .clock(dev_clk),
  .reset(~rst_n),
  .coreclk(core_clk),
  .corerst(~rst_n),
  .interrupts(7'd0),
  .reset_to_hang_en(1'b0),
  .mem_part_en(1'b0),
  .distinct_hart_dsid_en(1'b0),
  // {{{ debug
  .debug_systemjtag_jtag_TCK(1'b0),
  .debug_systemjtag_jtag_TMS(1'b0),
  .debug_systemjtag_jtag_TDI(1'b0),
  .debug_systemjtag_jtag_TDO_data(),
  .debug_systemjtag_jtag_TDO_driven(),  // no need
  .debug_systemjtag_reset(~rst_n),
  .debug_systemjtag_mfr_id(11'd0),  // no need
  .debug_ndreset(),  // no need
  .debug_dmactive(), // no need
  // }}}
`ifndef BACKEND
  // {{{ mem_axi4
  .mem_axi4_0_awready(io_axi4_0_awready),
  .mem_axi4_0_awvalid(io_axi4_0_awvalid),
  .mem_axi4_0_awid(io_axi4_0_awid),
  .mem_axi4_0_awaddr(io_axi4_0_awaddr),
  .mem_axi4_0_awlen(io_axi4_0_awlen),
  .mem_axi4_0_awsize(io_axi4_0_awsize),
  .mem_axi4_0_awburst(io_axi4_0_awburst),
  .mem_axi4_0_awlock(),
  .mem_axi4_0_awcache(),
  .mem_axi4_0_awprot(),
  .mem_axi4_0_awqos(),
  .mem_axi4_0_awinstret(),
  .mem_axi4_0_wready(io_axi4_0_wready),
  .mem_axi4_0_wvalid(io_axi4_0_wvalid),
  .mem_axi4_0_wdata(io_axi4_0_wdata),
  .mem_axi4_0_wstrb(io_axi4_0_wstrb),
  .mem_axi4_0_wlast(io_axi4_0_wlast),
  .mem_axi4_0_bready(io_axi4_0_bready),
  .mem_axi4_0_bvalid(io_axi4_0_bvalid),
  .mem_axi4_0_bid(io_axi4_0_bid),
  .mem_axi4_0_bresp(io_axi4_0_bresp),
  .mem_axi4_0_arready(io_axi4_0_arready),
  .mem_axi4_0_arvalid(io_axi4_0_arvalid),
  .mem_axi4_0_arid(io_axi4_0_arid),
  .mem_axi4_0_araddr(io_axi4_0_araddr),
  .mem_axi4_0_arlen(io_axi4_0_arlen),
  .mem_axi4_0_arsize(io_axi4_0_arsize),
  .mem_axi4_0_arburst(io_axi4_0_arburst),
  .mem_axi4_0_arlock(),
  .mem_axi4_0_arcache(),
  .mem_axi4_0_arprot(),
  .mem_axi4_0_arqos(),
  .mem_axi4_0_arinstret(),
  .mem_axi4_0_rready(io_axi4_0_rready),
  .mem_axi4_0_rvalid(io_axi4_0_rvalid),
  .mem_axi4_0_rid(io_axi4_0_rid),
  .mem_axi4_0_rdata(io_axi4_0_rdata),
  .mem_axi4_0_rresp(io_axi4_0_rresp),
  .mem_axi4_0_rlast(io_axi4_0_rlast),
  // }}}
  // {{{ mmio_axi4
  .mmio_axi4_0_awready(mmio_axi4_0_awready),
  .mmio_axi4_0_awvalid(mmio_axi4_0_awvalid),
  .mmio_axi4_0_awid(mmio_axi4_0_awid),
  .mmio_axi4_0_awaddr(mmio_axi4_0_awaddr),
  .mmio_axi4_0_awlen(mmio_axi4_0_awlen),
  .mmio_axi4_0_awsize(mmio_axi4_0_awsize),
  .mmio_axi4_0_awburst(mmio_axi4_0_awburst),
  .mmio_axi4_0_awlock(mmio_axi4_0_awlock),
  .mmio_axi4_0_awcache(mmio_axi4_0_awcache),
  .mmio_axi4_0_awprot(mmio_axi4_0_awprot),
  .mmio_axi4_0_awqos(mmio_axi4_0_awqos),
  .mmio_axi4_0_awuser(mmio_axi4_0_awuser),
  .mmio_axi4_0_awinstret(mmio_axi4_0_awinstret),
  .mmio_axi4_0_wready(mmio_axi4_0_wready),
  .mmio_axi4_0_wvalid(mmio_axi4_0_wvalid),
  .mmio_axi4_0_wdata(mmio_axi4_0_wdata),
  .mmio_axi4_0_wstrb(mmio_axi4_0_wstrb),
  .mmio_axi4_0_wlast(mmio_axi4_0_wlast),
  .mmio_axi4_0_bready(mmio_axi4_0_bready),
  .mmio_axi4_0_bvalid(mmio_axi4_0_bvalid),
  .mmio_axi4_0_bid(mmio_axi4_0_bid),
  .mmio_axi4_0_bresp(mmio_axi4_0_bresp),
  .mmio_axi4_0_buser(mmio_axi4_0_buser),
  .mmio_axi4_0_arready(mmio_axi4_0_arready),
  .mmio_axi4_0_arvalid(mmio_axi4_0_arvalid),
  .mmio_axi4_0_arid(mmio_axi4_0_arid),
  .mmio_axi4_0_araddr(mmio_axi4_0_araddr),
  .mmio_axi4_0_arlen(mmio_axi4_0_arlen),
  .mmio_axi4_0_arsize(mmio_axi4_0_arsize),
  .mmio_axi4_0_arburst(mmio_axi4_0_arburst),
  .mmio_axi4_0_arlock(mmio_axi4_0_arlock),
  .mmio_axi4_0_arcache(mmio_axi4_0_arcache),
  .mmio_axi4_0_arprot(mmio_axi4_0_arprot),
  .mmio_axi4_0_arqos(mmio_axi4_0_arqos),
  .mmio_axi4_0_aruser(mmio_axi4_0_aruser),
  .mmio_axi4_0_arinstret(mmio_axi4_0_arinstret),
  .mmio_axi4_0_rready(mmio_axi4_0_rready),
  .mmio_axi4_0_rvalid(mmio_axi4_0_rvalid),
  .mmio_axi4_0_rid(mmio_axi4_0_rid),
  .mmio_axi4_0_rdata(mmio_axi4_0_rdata),
  .mmio_axi4_0_rresp(mmio_axi4_0_rresp),
  .mmio_axi4_0_ruser(mmio_axi4_0_ruser),
  .mmio_axi4_0_rlast(mmio_axi4_0_rlast),
  // }}}
  // {{{ l2_frontend_bus_axi4
  .l2_frontend_bus_axi4_0_awready(),
  .l2_frontend_bus_axi4_0_awvalid(1'b0),
  .l2_frontend_bus_axi4_0_awid(),
  .l2_frontend_bus_axi4_0_awaddr(),
  .l2_frontend_bus_axi4_0_awlen(),
  .l2_frontend_bus_axi4_0_awsize(),
  .l2_frontend_bus_axi4_0_awburst(),
  .l2_frontend_bus_axi4_0_awlock(),
  .l2_frontend_bus_axi4_0_awcache(),
  .l2_frontend_bus_axi4_0_awprot(),
  .l2_frontend_bus_axi4_0_awqos(),
  .l2_frontend_bus_axi4_0_awinstret(),
  .l2_frontend_bus_axi4_0_wready(),
  .l2_frontend_bus_axi4_0_wvalid(1'b0),
  .l2_frontend_bus_axi4_0_wdata(),
  .l2_frontend_bus_axi4_0_wstrb(),
  .l2_frontend_bus_axi4_0_wlast(),
  .l2_frontend_bus_axi4_0_bready(1'b0),
  .l2_frontend_bus_axi4_0_bvalid(),
  .l2_frontend_bus_axi4_0_bid(),
  .l2_frontend_bus_axi4_0_bresp(),
  .l2_frontend_bus_axi4_0_arready(),
  .l2_frontend_bus_axi4_0_arvalid(1'b0),
  .l2_frontend_bus_axi4_0_arid(),
  .l2_frontend_bus_axi4_0_araddr(),
  .l2_frontend_bus_axi4_0_arlen(),
  .l2_frontend_bus_axi4_0_arsize(),
  .l2_frontend_bus_axi4_0_arburst(),
  .l2_frontend_bus_axi4_0_arlock(),
  .l2_frontend_bus_axi4_0_arcache(),
  .l2_frontend_bus_axi4_0_arprot(),
  .l2_frontend_bus_axi4_0_arqos(),
  .l2_frontend_bus_axi4_0_arinstret(),
  .l2_frontend_bus_axi4_0_rready(1'b0),
  .l2_frontend_bus_axi4_0_rvalid(),
  .l2_frontend_bus_axi4_0_rid(),
  .l2_frontend_bus_axi4_0_rdata(),
  .l2_frontend_bus_axi4_0_rresp(),
  .l2_frontend_bus_axi4_0_rlast(),
  // }}}
`else
  .chip_c2b_clk(chiplink_tx_clk),
  .chip_c2b_rst(chiplink_tx_rst),
  .chip_c2b_send(chiplink_tx_send),
  .chip_c2b_data(chiplink_tx_data),
  .chip_b2c_clk(chiplink_rx_clk),
  .chip_b2c_rst(chiplink_rx_rst),
  .chip_b2c_send(chiplink_rx_send),
  .chip_b2c_data(chiplink_rx_data),
`endif
  // {{{ apb
  .mmio_apb_0_psel(m_psel),
  .mmio_apb_0_penable(m_penable),
  .mmio_apb_0_pwrite(m_pwrite),
  .mmio_apb_0_paddr(m_paddr),
  .mmio_apb_0_pwdata(m_pwdata),
  .mmio_apb_0_pstrb(m_pwstrb),
  .mmio_apb_0_pready(m_pready),
  .mmio_apb_0_pslverr(m_pslverr),
  .mmio_apb_0_prdata(m_prdata)
  // }}}
);

//apb_demux _fifo
assign  fifo_pclk = apb_clk_in;
assign  fifo_presetn = rst_n;


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

  .spi_clk(spi_clk),
  .spi_cs(spi_cs),
  .spi_mosi(spi_mosi),
  .spi_miso(spi_miso),
  
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
  .PADDR     ({2'b00,s_paddr1}),
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

//assign gpio_input[3:0] = gpio_i;
//assign gpio_o = gpio_output[3:0];
//assign gpio_oe = gpio_outen[3:0];

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
  .paddr({2'b00,s_paddr2}),
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


module div_2 (clk_out,clk,reset); 
    output clk_out;
    input reset;
    input clk;
    reg clk_out=1'b0;
    always @ (posedge clk)
      clk_out<=~clk_out; 
endmodule
