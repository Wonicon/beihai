`include "amba_define.v"

module apb_mux
(
//apb slave0
s_pclk0,
s_preset0,
s_paddr0,
s_psel0,
s_penable0,
s_pwrite0,
s_pwdata0,
s_pwstrb0,
s_pready0,
s_prdata0,
s_pslverr0,
//apb slave1
s_pclk1,
s_preset1,
s_paddr1,
s_psel1,
s_penable1,
s_pwrite1,
s_pwdata1,
s_pwstrb1,
s_pready1,
s_prdata1,
s_pslverr1,
//apb master
m_pclk,
m_preset,
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
input                     s_pclk0;
input                     s_preset0;
input   [`P_ADDR_W-1:0]   s_paddr0;
input                     s_psel0;
input                     s_penable0;
input                     s_pwrite0;
input   [`P_DATA_W-1:0]   s_pwdata0;
input   [`P_STRB_W-1:0]   s_pwstrb0;
output                    s_pready0;
output  [`P_DATA_W-1:0]   s_prdata0;
output                    s_pslverr0;

input                     s_pclk1;
input                     s_preset1;
input   [`P_ADDR_W-1:0]   s_paddr1;
input                     s_psel1;
input                     s_penable1;
input                     s_pwrite1;
input   [`P_DATA_W-1:0]   s_pwdata1;
input   [`P_STRB_W-1:0]   s_pwstrb1;
output                    s_pready1;
output  [`P_DATA_W-1:0]   s_prdata1;
output                    s_pslverr1;

output                    m_pclk;
output                    m_preset;
output  [`P_ADDR_W-1:0]   m_paddr;
output                    m_psel;
output                    m_penable;
output                    m_pwrite;
output  [`P_DATA_W-1:0]   m_pwdata;
output  [`P_STRB_W-1:0]   m_pwstrb;

input                     m_pready;
input   [`P_DATA_W-1:0]   m_prdata;
input                     m_pslverr;

`define STATE_IDLE  3'h1
`define STATE_ARBIT 3'h2
`define STATE_TRANS 3'h2

wire clk;
wire rst_n;

reg  [2:0] state;
reg  [2:0] state_next;

reg [1:0] pre_sel;
reg       sel_s0;
reg       sel_s1;
wire      arb_s0;
wire      arb_s1;

wire      p0_valid;
wire      p1_valid;
wire      apb_slave_start;
wire      apb_slave_end;

assign clk = s_pclk0;
assign rst_n = !s_preset0;

assign m_pclk = clk;
assign m_preset = !rst_n;

assign m_paddr    = sel_s0 ? s_paddr0   : sel_s1 ? s_paddr1   : 32'h0;
assign m_psel     = sel_s0 ? s_psel0    : sel_s1 ? s_psel1    :  1'b0;
assign m_penable  = sel_s0 ? s_penable0 : sel_s1 ? s_penable1 :  1'b1;
assign m_pwrite   = sel_s0 ? s_pwrite0  : sel_s1 ? s_pwrite1  :  1'b0;
assign m_pwdata   = sel_s0 ? s_pwdata0  : sel_s1 ? s_pwdata1  : 32'h0;
assign m_pwstrb   = sel_s0 ? s_pwstrb0  : sel_s1 ? s_pwstrb1  :  4'h0;

assign s_pready0  = sel_s0 ? m_pready  :  1'b0;
assign s_pready1  = sel_s1 ? m_pready  :  1'b0;
assign s_prdata0  = sel_s0 ? m_prdata  : 32'h0;
assign s_prdata1  = sel_s1 ? m_prdata  : 32'h0;
assign s_pslverr0 = sel_s0 ? m_pslverr :  1'b0;
assign s_pslverr1 = sel_s1 ? m_pslverr :  1'b0;

assign p0_valid = s_psel0 && s_penable0;
assign p1_valid = s_psel1 && s_penable1;
assign apb_slave_start = p0_valid || p1_valid;

assign apb_slave_end = state == `STATE_TRANS && m_pready;

always@(posedge clk) begin
  if(!rst_n) begin
    pre_sel <= 2'h0;
    sel_s0 <= 1'b0;
    sel_s1 <= 1'b0;
  end
  else if(state == `STATE_IDLE && apb_slave_start) begin
    pre_sel <= arb_s0 ? 2'h1 : arb_s1 ? 2'h2 : 2'h0;
    sel_s0 <= arb_s0;
    sel_s1 <= arb_s1;
  end
end

//round robin
assign arb_s0 =  p0_valid && !p1_valid || p0_valid && p1_valid && pre_sel == 2'h2;
assign arb_s1 = !p0_valid &&  p1_valid || p0_valid && p1_valid && pre_sel == 2'h1;

always@(posedge clk) begin
  if(!rst_n)
    state <= `STATE_IDLE;
  else
    state <= state_next;
end

always@(state or apb_slave_start or apb_slave_end) begin
  case(state)
    `STATE_IDLE: begin
      if(apb_slave_start)
        state_next = `STATE_TRANS;
      else
        state_next = `STATE_IDLE;
    end
    default: begin //`STATE_TRANS: begin
      if(apb_slave_end)
        state_next = `STATE_IDLE;
      else
        state_next = `STATE_TRANS;
    end
  endcase
end


endmodule
