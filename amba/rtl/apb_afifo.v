`include "amba_define.v"

module apb_afifo
(
s_pclk,
s_presetn,
s_paddr,
s_psel,
s_penable,
s_pwrite,
s_pwdata,
s_pwstrb,
s_pready,
s_prdata,
s_pslverr,

m_pclk,
m_presetn,
m_paddr,
m_psel,
m_penable,
m_pwrite,
m_pwdata,
m_pwstrb,
m_pready,
m_prdata,
m_pslverr
);

`define FIFO_DEPTH  4
`define FIFO_ADDR_W 2

`define PCMD_FIFO_D_W   `P_STRB_W + `P_DATA_W + `P_ADDR_W + 1
`define PRDATA_FIFO_D_W `P_DATA_W

`define AFIFO_IDLE       3'h0
`define AFIFO_WAIT_RDATA 3'h1
`define AFIFO_WAIT_WRESP 3'h2

input                     s_pclk;
input                     s_presetn;
input   [`P_ADDR_W-1:0]   s_paddr;
input                     s_psel;
input                     s_penable;
input                     s_pwrite;
input   [`P_DATA_W-1:0]   s_pwdata;
input   [`P_STRB_W-1:0]   s_pwstrb;
output                    s_pready;
output  [`P_DATA_W-1:0]   s_prdata;
output                    s_pslverr;

input                    m_pclk;
input                    m_presetn;
output  [`P_ADDR_W-1:0]   m_paddr;
output                    m_psel;
output                    m_penable;
output                    m_pwrite;
output  [`P_DATA_W-1:0]   m_pwdata;
output  [`P_STRB_W-1:0]   m_pwstrb;
input                     m_pready;
input   [`P_DATA_W-1:0]   m_prdata;
input                     m_pslverr;

wire                        wr_cmd;
wire                        rd_cmd;
wire                        cmd_valid;
wire                        rdata_ready;

wire [`PCMD_FIFO_D_W-1:0]   pcmd_fifo_rd;
wire [`PCMD_FIFO_D_W-1:0]   pcmd_fifo_wd;
wire                        pcmd_fifo_full;
wire                        pcmd_fifo_empty;
wire                        pcmd_fifo_valid;

wire [`PRDATA_FIFO_D_W-1:0] prdata_fifo_rd;
wire [`PRDATA_FIFO_D_W-1:0] prdata_fifo_wd;
wire                        prdata_fifo_full;
wire                        prdata_fifo_empty;
wire                        prdata_fifo_valid;

wire clk;
wire rst_n;

reg [2:0] state;
reg [2:0] state_next;

assign clk   = s_pclk;
assign rst_n = s_presetn;

assign wr_cmd = s_psel && s_penable &&  s_pwrite;
assign rd_cmd = s_psel && s_penable && !s_pwrite;

assign s_pslverr = 1'b0;
//apb cmd channel
assign pcmd_fifo_wd = {s_pwrite, s_paddr, s_pwdata, s_pwstrb};

assign m_pwstrb = pcmd_fifo_rd[`P_STRB_W - 1 : 0];
assign m_pwdata = pcmd_fifo_rd[`P_STRB_W + `P_DATA_W - 1 : 
                               `P_STRB_W];
assign m_paddr  = pcmd_fifo_rd[`P_STRB_W + `P_DATA_W + `P_ADDR_W -1 : 
                               `P_STRB_W + `P_DATA_W];
assign m_pwrite = pcmd_fifo_rd[`P_STRB_W + `P_DATA_W + `P_ADDR_W + 1 -1  : 
                             `P_STRB_W + `P_DATA_W + `P_ADDR_W];

//assign s_pready  = wr_cmd ? !pcmd_fifo_full : 
//                   rd_cmd ? !pcmd_fifo_full && !prdata_fifo_empty : 1'b0; //for read, cmd fifo not full and rdata not empty
assign s_pready  = wr_cmd ? state == `AFIFO_WAIT_WRESP && rdata_ready :
                   rd_cmd ? state == `AFIFO_WAIT_RDATA && rdata_ready  : 1'b0; //for read, cmd fifo not full and rdata not empty


// Refer to dev/sdram/rtl/sdram_axi_core.v :
//   m_penable should become high 2 cycles after m_psel becoming high,
//   otherwise the state machine in axi_core will not go ahead.
//
//   A nop state is for the case the m_psel is hgih continously.
parameter S0_WAIT_SEL = 0,
          S0_WAIT_SEL2 = 1,
          S1_ENABLE = 2,
          S2_NOP = 3;

reg [1:0] m_state = 0;

assign m_psel    = !pcmd_fifo_empty;
assign m_penable = m_state == S1_ENABLE;

always @(posedge m_pclk) begin
  if (~m_presetn) begin
    m_state <= S0_WAIT_SEL;
  end
  case (m_state)
    S0_WAIT_SEL: if (m_psel) m_state <= S0_WAIT_SEL2;
    S0_WAIT_SEL2: if (m_psel) m_state <= S1_ENABLE;
    S1_ENABLE : if (m_pready) m_state <= S2_NOP;
    S2_NOP: m_state <= S0_WAIT_SEL;
    default: m_state <= S0_WAIT_SEL;
  endcase
end

assign cmd_valid = wr_cmd ? !pcmd_fifo_full && state == `AFIFO_IDLE :
                   rd_cmd ? !pcmd_fifo_full && state ==`AFIFO_IDLE : 1'b0;
assign rdata_ready = !prdata_fifo_empty;


//------------------------state machine--------------------//
//state machine
always@(posedge clk) begin
  if(!rst_n) begin
    state <= `AFIFO_IDLE;
  end
  else begin
    state <= state_next;
  end
end

always @ (rd_cmd or wr_cmd or rdata_ready) begin
  case(state)
    `AFIFO_IDLE : begin
      if(rd_cmd) //read always has higher priority
        state_next = `AFIFO_WAIT_RDATA;
      else if (wr_cmd)
        state_next = `AFIFO_WAIT_WRESP;
      else
        state_next = `AFIFO_IDLE;
    end
    default : begin //`AFIFO_WAIT_RDATA
      if(rdata_ready)
        state_next = `AFIFO_IDLE;
      else
        state_next = state;
    end
  endcase
end

fifo_async 
#( 
  .data_width(`PCMD_FIFO_D_W), 
  .data_depth(`FIFO_DEPTH), 
  .addr_width(`FIFO_ADDR_W)
)
u0_pcmd_afifo
(
  .rst(!s_presetn),
  .wr_clk(s_pclk),
  //.wr_en(s_psel && s_penable && s_pready),
  .wr_en(cmd_valid),
  .din(pcmd_fifo_wd),         
  .rd_clk(m_pclk),
  .rd_en(m_psel && m_penable && m_pready),
  .valid(pcmd_fifo_valid),
  .dout(pcmd_fifo_rd),
  .empty(pcmd_fifo_empty),
  .full(pcmd_fifo_full)
);

//apb rdata channel
assign prdata_fifo_wd = m_prdata;
assign s_prdata       = prdata_fifo_rd;

fifo_async 
#( 
  .data_width(`PRDATA_FIFO_D_W), 
  .data_depth(`FIFO_DEPTH), 
  .addr_width(`FIFO_ADDR_W)
)
u0_prdata_afifo
(
  .rst(!s_presetn),
  .wr_clk(m_pclk),
  .wr_en(m_psel && m_penable && m_pready),
  .din(prdata_fifo_wd),         
  .rd_clk(s_pclk),
  .rd_en(s_psel && s_penable && s_pready),
  .valid(prdata_fifo_valid),
  .dout(prdata_fifo_rd),
  .empty(prdata_fifo_empty),
  .full(prdata_fifo_full)
);


endmodule
