`include "amba_define.v"

module apb_demux
(
  input                      pclk,
  input                      presetn,
  input   [`P_ADDR_W-1:0]    paddr,
  input                      psel,
  input                      penable,
  input                      pwrite,
  input   [`P_DATA_W-1:0]    pwdata,
  input   [`P_STRB_W-1:0]    pwstrb,
  output                     pready,
  output  [`P_DATA_W-1:0]    prdata,
  output                     pslverr,

  output                     pclk0,
  output                     presetn0,
  output  [`P_ADDR_W-1:0]    paddr0,
  output                     psel0,
  output                     penable0,
  output                     pwrite0,
  output  [`P_DATA_W-1:0]    pwdata0,
  output  [`P_STRB_W-1:0]    pwstrb0,
  input                      pready0,
  input   [`P_DATA_W-1:0]    prdata0,
  input                      pslverr0,

  output                     pclk1,
  output                     presetn1,
  output  [`P_ADDR_W-1:0]    paddr1,
  output                     psel1,
  output                     penable1,
  output                     pwrite1,
  output  [`P_DATA_W-1:0]    pwdata1,
  output  [`P_STRB_W-1:0]    pwstrb1,
  input                      pready1,
  input   [`P_DATA_W-1:0]    prdata1,
  input                      pslverr1,

  output                     pclk2,
  output                     presetn2,
  output  [`P_ADDR_W-1:0]    paddr2,
  output                     psel2,
  output                     penable2,
  output                     pwrite2,
  output  [`P_DATA_W-1:0]    pwdata2,
  output  [`P_STRB_W-1:0]    pwstrb2,
  input                      pready2,
  input   [`P_DATA_W-1:0]    prdata2,
  input                      pslverr2
);

wire port_sel0;
wire port_sel1;
wire port_sel2;


assign port_sel0 = paddr >= `SPI_FLASH_START && paddr <= `SPI_END;
assign port_sel1 = paddr >= `UART_START      && paddr <= `UART_END;
assign port_sel2 = paddr >= `GPIO_START      && paddr <= `GPIO_END;

assign pclk0    = pclk;
assign presetn0 = presetn;
assign paddr0   = paddr;
assign pwrite0  = pwrite;
assign pwdata0  = pwdata;
assign pwstrb0  = pwstrb;

assign pclk1    = pclk;
assign presetn1 = presetn;
assign paddr1   = paddr;
assign pwrite1  = pwrite;
assign pwdata1  = pwdata;
assign pwstrb1  = pwstrb;

assign pclk2    = pclk;
assign presetn2 = presetn;
assign paddr2   = paddr;
assign pwrite2  = pwrite;
assign pwdata2  = pwdata;
assign pwstrb2  = pwstrb;





assign psel0 = port_sel0 ? psel : 1'd0 ;
assign psel1 = port_sel1 ? psel : 1'd0 ;
assign psel2 = port_sel2 ? psel : 1'd0 ;


assign penable0 = port_sel0 ? penable : 1'd0 ;
assign penable1 = port_sel1 ? penable : 1'd0 ;
assign penable2 = port_sel2 ? penable : 1'd0 ;



assign pready = port_sel0 ? pready0:
                port_sel1 ? pready1:
                port_sel2 ? pready2:0;

assign prdata = port_sel0 ? prdata0:
                port_sel1 ? prdata1:
                port_sel2 ? prdata2:0;  

assign pslverr = 0;//port_sel0?pslverr0:
                 //port_sel1?pslverr1:
                 //port_sel2?pslverr2:
                 //port_sel3?pslverr3:
                 //port_sel4?pslverr4:0;  
endmodule
