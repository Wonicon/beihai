module AXI4Buffer_1( // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672516.2]
  input         clock, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672517.4]
  input         reset, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672518.4]
  output        auto_in_awready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input         auto_in_awvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input  [3:0]  auto_in_awid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input  [30:0] auto_in_awaddr, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input         auto_in_awuser, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output        auto_in_wready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input         auto_in_wvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input  [63:0] auto_in_wdata, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input  [7:0]  auto_in_wstrb, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input         auto_in_wlast, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input         auto_in_bready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output        auto_in_bvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output [3:0]  auto_in_bid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output [1:0]  auto_in_bresp, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output        auto_in_buser, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output        auto_in_arready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input         auto_in_arvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input  [3:0]  auto_in_arid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input  [30:0] auto_in_araddr, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input         auto_in_aruser, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input         auto_in_rready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output        auto_in_rvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output [3:0]  auto_in_rid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output [63:0] auto_in_rdata, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output [1:0]  auto_in_rresp, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output        auto_in_ruser, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output        auto_in_rlast, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input         auto_out_awready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output        auto_out_awvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output [3:0]  auto_out_awid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output [30:0] auto_out_awaddr, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output [15:0] auto_out_awuser, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input         auto_out_wready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output        auto_out_wvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output [63:0] auto_out_wdata, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output [7:0]  auto_out_wstrb, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output        auto_out_bready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input         auto_out_bvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input  [3:0]  auto_out_bid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input  [1:0]  auto_out_bresp, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input  [15:0] auto_out_buser, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input         auto_out_arready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output        auto_out_arvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output [3:0]  auto_out_arid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output [30:0] auto_out_araddr, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output [15:0] auto_out_aruser, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  output        auto_out_rready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input         auto_out_rvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input  [3:0]  auto_out_rid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input  [63:0] auto_out_rdata, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input  [1:0]  auto_out_rresp, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
  input  [15:0] auto_out_ruser // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672519.4]
);
  wire  Queue_clock; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672530.4]
  wire  Queue_reset; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672530.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672530.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672530.4]
  wire [3:0] Queue_io_enq_bits_id; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672530.4]
  wire [30:0] Queue_io_enq_bits_addr; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672530.4]
  wire  Queue_io_enq_bits_user; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672530.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672530.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672530.4]
  wire [3:0] Queue_io_deq_bits_id; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672530.4]
  wire [30:0] Queue_io_deq_bits_addr; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672530.4]
  wire  Queue_io_deq_bits_user; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672530.4]
  wire  Queue_1_clock; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672561.4]
  wire  Queue_1_reset; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672561.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672561.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672561.4]
  wire [63:0] Queue_1_io_enq_bits_data; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672561.4]
  wire [7:0] Queue_1_io_enq_bits_strb; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672561.4]
  wire  Queue_1_io_enq_bits_last; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672561.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672561.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672561.4]
  wire [63:0] Queue_1_io_deq_bits_data; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672561.4]
  wire [7:0] Queue_1_io_deq_bits_strb; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672561.4]
  wire  Queue_1_io_deq_bits_last; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672561.4]
  wire  Queue_2_clock; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672576.4]
  wire  Queue_2_reset; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672576.4]
  wire  Queue_2_io_enq_ready; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672576.4]
  wire  Queue_2_io_enq_valid; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672576.4]
  wire [3:0] Queue_2_io_enq_bits_id; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672576.4]
  wire [1:0] Queue_2_io_enq_bits_resp; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672576.4]
  wire [15:0] Queue_2_io_enq_bits_user; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672576.4]
  wire  Queue_2_io_deq_ready; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672576.4]
  wire  Queue_2_io_deq_valid; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672576.4]
  wire [3:0] Queue_2_io_deq_bits_id; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672576.4]
  wire [1:0] Queue_2_io_deq_bits_resp; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672576.4]
  wire [15:0] Queue_2_io_deq_bits_user; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672576.4]
  wire  Queue_3_clock; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672591.4]
  wire  Queue_3_reset; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672591.4]
  wire  Queue_3_io_enq_ready; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672591.4]
  wire  Queue_3_io_enq_valid; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672591.4]
  wire [3:0] Queue_3_io_enq_bits_id; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672591.4]
  wire [30:0] Queue_3_io_enq_bits_addr; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672591.4]
  wire  Queue_3_io_enq_bits_user; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672591.4]
  wire  Queue_3_io_deq_ready; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672591.4]
  wire  Queue_3_io_deq_valid; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672591.4]
  wire [3:0] Queue_3_io_deq_bits_id; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672591.4]
  wire [30:0] Queue_3_io_deq_bits_addr; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672591.4]
  wire  Queue_3_io_deq_bits_user; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672591.4]
  wire  Queue_4_clock; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672622.4]
  wire  Queue_4_reset; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672622.4]
  wire  Queue_4_io_enq_ready; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672622.4]
  wire  Queue_4_io_enq_valid; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672622.4]
  wire [3:0] Queue_4_io_enq_bits_id; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672622.4]
  wire [63:0] Queue_4_io_enq_bits_data; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672622.4]
  wire [1:0] Queue_4_io_enq_bits_resp; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672622.4]
  wire [15:0] Queue_4_io_enq_bits_user; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672622.4]
  wire  Queue_4_io_deq_ready; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672622.4]
  wire  Queue_4_io_deq_valid; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672622.4]
  wire [3:0] Queue_4_io_deq_bits_id; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672622.4]
  wire [63:0] Queue_4_io_deq_bits_data; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672622.4]
  wire [1:0] Queue_4_io_deq_bits_resp; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672622.4]
  wire [15:0] Queue_4_io_deq_bits_user; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672622.4]
  wire  Queue_4_io_deq_bits_last; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672622.4]
  wire [15:0] _T_4_bits_user; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672584.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672585.4]
  wire [15:0] _T_6_bits_user; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672632.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672634.4]
  wire  _T_2_bits_user; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672546.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672548.4]
  wire  _T_5_bits_user; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672607.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672609.4]
  Queue_162 Queue ( // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672530.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_id(Queue_io_enq_bits_id),
    .io_enq_bits_addr(Queue_io_enq_bits_addr),
    .io_enq_bits_user(Queue_io_enq_bits_user),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_id(Queue_io_deq_bits_id),
    .io_deq_bits_addr(Queue_io_deq_bits_addr),
    .io_deq_bits_user(Queue_io_deq_bits_user)
  );
  Queue_49 Queue_1 ( // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672561.4]
    .clock(Queue_1_clock),
    .reset(Queue_1_reset),
    .io_enq_ready(Queue_1_io_enq_ready),
    .io_enq_valid(Queue_1_io_enq_valid),
    .io_enq_bits_data(Queue_1_io_enq_bits_data),
    .io_enq_bits_strb(Queue_1_io_enq_bits_strb),
    .io_enq_bits_last(Queue_1_io_enq_bits_last),
    .io_deq_ready(Queue_1_io_deq_ready),
    .io_deq_valid(Queue_1_io_deq_valid),
    .io_deq_bits_data(Queue_1_io_deq_bits_data),
    .io_deq_bits_strb(Queue_1_io_deq_bits_strb),
    .io_deq_bits_last(Queue_1_io_deq_bits_last)
  );
  Queue_164 Queue_2 ( // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672576.4]
    .clock(Queue_2_clock),
    .reset(Queue_2_reset),
    .io_enq_ready(Queue_2_io_enq_ready),
    .io_enq_valid(Queue_2_io_enq_valid),
    .io_enq_bits_id(Queue_2_io_enq_bits_id),
    .io_enq_bits_resp(Queue_2_io_enq_bits_resp),
    .io_enq_bits_user(Queue_2_io_enq_bits_user),
    .io_deq_ready(Queue_2_io_deq_ready),
    .io_deq_valid(Queue_2_io_deq_valid),
    .io_deq_bits_id(Queue_2_io_deq_bits_id),
    .io_deq_bits_resp(Queue_2_io_deq_bits_resp),
    .io_deq_bits_user(Queue_2_io_deq_bits_user)
  );
  Queue_162 Queue_3 ( // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672591.4]
    .clock(Queue_3_clock),
    .reset(Queue_3_reset),
    .io_enq_ready(Queue_3_io_enq_ready),
    .io_enq_valid(Queue_3_io_enq_valid),
    .io_enq_bits_id(Queue_3_io_enq_bits_id),
    .io_enq_bits_addr(Queue_3_io_enq_bits_addr),
    .io_enq_bits_user(Queue_3_io_enq_bits_user),
    .io_deq_ready(Queue_3_io_deq_ready),
    .io_deq_valid(Queue_3_io_deq_valid),
    .io_deq_bits_id(Queue_3_io_deq_bits_id),
    .io_deq_bits_addr(Queue_3_io_deq_bits_addr),
    .io_deq_bits_user(Queue_3_io_deq_bits_user)
  );
  Queue_166 Queue_4 ( // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672622.4]
    .clock(Queue_4_clock),
    .reset(Queue_4_reset),
    .io_enq_ready(Queue_4_io_enq_ready),
    .io_enq_valid(Queue_4_io_enq_valid),
    .io_enq_bits_id(Queue_4_io_enq_bits_id),
    .io_enq_bits_data(Queue_4_io_enq_bits_data),
    .io_enq_bits_resp(Queue_4_io_enq_bits_resp),
    .io_enq_bits_user(Queue_4_io_enq_bits_user),
    .io_deq_ready(Queue_4_io_deq_ready),
    .io_deq_valid(Queue_4_io_deq_valid),
    .io_deq_bits_id(Queue_4_io_deq_bits_id),
    .io_deq_bits_data(Queue_4_io_deq_bits_data),
    .io_deq_bits_resp(Queue_4_io_deq_bits_resp),
    .io_deq_bits_user(Queue_4_io_deq_bits_user),
    .io_deq_bits_last(Queue_4_io_deq_bits_last)
  );
  assign _T_4_bits_user = Queue_2_io_deq_bits_user; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672584.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672585.4]
  assign _T_6_bits_user = Queue_4_io_deq_bits_user; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672632.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672634.4]
  assign _T_2_bits_user = Queue_io_deq_bits_user; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672546.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672548.4]
  assign _T_5_bits_user = Queue_3_io_deq_bits_user; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672607.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672609.4]
  assign auto_in_awready = Queue_io_enq_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672529.4]
  assign auto_in_wready = Queue_1_io_enq_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672529.4]
  assign auto_in_bvalid = Queue_2_io_deq_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672529.4]
  assign auto_in_bid = Queue_2_io_deq_bits_id; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672529.4]
  assign auto_in_bresp = Queue_2_io_deq_bits_resp; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672529.4]
  assign auto_in_buser = _T_4_bits_user[0]; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672529.4]
  assign auto_in_arready = Queue_3_io_enq_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672529.4]
  assign auto_in_rvalid = Queue_4_io_deq_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672529.4]
  assign auto_in_rid = Queue_4_io_deq_bits_id; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672529.4]
  assign auto_in_rdata = Queue_4_io_deq_bits_data; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672529.4]
  assign auto_in_rresp = Queue_4_io_deq_bits_resp; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672529.4]
  assign auto_in_ruser = _T_6_bits_user[0]; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672529.4]
  assign auto_in_rlast = Queue_4_io_deq_bits_last; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672529.4]
  assign auto_out_awvalid = Queue_io_deq_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672528.4]
  assign auto_out_awid = Queue_io_deq_bits_id; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672528.4]
  assign auto_out_awaddr = Queue_io_deq_bits_addr; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672528.4]
  assign auto_out_awuser = {{15'd0}, _T_2_bits_user}; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672528.4]
  assign auto_out_wvalid = Queue_1_io_deq_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672528.4]
  assign auto_out_wdata = Queue_1_io_deq_bits_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672528.4]
  assign auto_out_wstrb = Queue_1_io_deq_bits_strb; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672528.4]
  assign auto_out_bready = Queue_2_io_enq_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672528.4]
  assign auto_out_arvalid = Queue_3_io_deq_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672528.4]
  assign auto_out_arid = Queue_3_io_deq_bits_id; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672528.4]
  assign auto_out_araddr = Queue_3_io_deq_bits_addr; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672528.4]
  assign auto_out_aruser = {{15'd0}, _T_5_bits_user}; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672528.4]
  assign auto_out_rready = Queue_4_io_enq_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672528.4]
  assign Queue_clock = clock; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672531.4]
  assign Queue_reset = reset; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672532.4]
  assign Queue_io_enq_valid = auto_in_awvalid; // @[Decoupled.scala 295:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672533.4]
  assign Queue_io_enq_bits_id = auto_in_awid; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672544.4]
  assign Queue_io_enq_bits_addr = auto_in_awaddr; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672543.4]
  assign Queue_io_enq_bits_user = auto_in_awuser; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672535.4]
  assign Queue_io_deq_ready = auto_out_awready; // @[Decoupled.scala 318:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672559.4]
  assign Queue_1_clock = clock; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672562.4]
  assign Queue_1_reset = reset; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672563.4]
  assign Queue_1_io_enq_valid = auto_in_wvalid; // @[Decoupled.scala 295:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672564.4]
  assign Queue_1_io_enq_bits_data = auto_in_wdata; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672567.4]
  assign Queue_1_io_enq_bits_strb = auto_in_wstrb; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672566.4]
  assign Queue_1_io_enq_bits_last = auto_in_wlast; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672565.4]
  assign Queue_1_io_deq_ready = auto_out_wready; // @[Decoupled.scala 318:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672574.4]
  assign Queue_2_clock = clock; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672577.4]
  assign Queue_2_reset = reset; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672578.4]
  assign Queue_2_io_enq_valid = auto_out_bvalid; // @[Decoupled.scala 295:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672579.4]
  assign Queue_2_io_enq_bits_id = auto_out_bid; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672582.4]
  assign Queue_2_io_enq_bits_resp = auto_out_bresp; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672581.4]
  assign Queue_2_io_enq_bits_user = auto_out_buser; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672580.4]
  assign Queue_2_io_deq_ready = auto_in_bready; // @[Decoupled.scala 318:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672589.4]
  assign Queue_3_clock = clock; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672592.4]
  assign Queue_3_reset = reset; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672593.4]
  assign Queue_3_io_enq_valid = auto_in_arvalid; // @[Decoupled.scala 295:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672594.4]
  assign Queue_3_io_enq_bits_id = auto_in_arid; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672605.4]
  assign Queue_3_io_enq_bits_addr = auto_in_araddr; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672604.4]
  assign Queue_3_io_enq_bits_user = auto_in_aruser; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672596.4]
  assign Queue_3_io_deq_ready = auto_out_arready; // @[Decoupled.scala 318:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672620.4]
  assign Queue_4_clock = clock; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672623.4]
  assign Queue_4_reset = reset; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672624.4]
  assign Queue_4_io_enq_valid = auto_out_rvalid; // @[Decoupled.scala 295:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672625.4]
  assign Queue_4_io_enq_bits_id = auto_out_rid; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672630.4]
  assign Queue_4_io_enq_bits_data = auto_out_rdata; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672629.4]
  assign Queue_4_io_enq_bits_resp = auto_out_rresp; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672628.4]
  assign Queue_4_io_enq_bits_user = auto_out_ruser; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672627.4]
  assign Queue_4_io_deq_ready = auto_in_rready; // @[Decoupled.scala 318:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672639.4]
endmodule
module AXI4Fragmenter_1( // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672852.2]
  input         clock, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672853.4]
  input         reset, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672854.4]
  output        auto_in_awready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input         auto_in_awvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input  [3:0]  auto_in_awid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input  [30:0] auto_in_awaddr, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input  [7:0]  auto_in_awlen, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input  [2:0]  auto_in_awsize, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input  [1:0]  auto_in_awburst, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output        auto_in_wready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input         auto_in_wvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input  [63:0] auto_in_wdata, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input  [7:0]  auto_in_wstrb, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input         auto_in_wlast, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input         auto_in_bready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output        auto_in_bvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output [3:0]  auto_in_bid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output [1:0]  auto_in_bresp, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output        auto_in_arready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input         auto_in_arvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input  [3:0]  auto_in_arid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input  [30:0] auto_in_araddr, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input  [7:0]  auto_in_arlen, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input  [2:0]  auto_in_arsize, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input  [1:0]  auto_in_arburst, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input         auto_in_rready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output        auto_in_rvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output [3:0]  auto_in_rid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output [63:0] auto_in_rdata, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output [1:0]  auto_in_rresp, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output        auto_in_rlast, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input         auto_out_awready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output        auto_out_awvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output [3:0]  auto_out_awid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output [30:0] auto_out_awaddr, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output        auto_out_awuser, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input         auto_out_wready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output        auto_out_wvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output [63:0] auto_out_wdata, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output [7:0]  auto_out_wstrb, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output        auto_out_wlast, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output        auto_out_bready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input         auto_out_bvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input  [3:0]  auto_out_bid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input  [1:0]  auto_out_bresp, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input         auto_out_buser, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input         auto_out_arready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output        auto_out_arvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output [3:0]  auto_out_arid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output [30:0] auto_out_araddr, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output        auto_out_aruser, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  output        auto_out_rready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input         auto_out_rvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input  [3:0]  auto_out_rid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input  [63:0] auto_out_rdata, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input  [1:0]  auto_out_rresp, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input         auto_out_ruser, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
  input         auto_out_rlast // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672855.4]
);
  wire  Queue_clock; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672866.4]
  wire  Queue_reset; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672866.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672866.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672866.4]
  wire [3:0] Queue_io_enq_bits_id; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672866.4]
  wire [30:0] Queue_io_enq_bits_addr; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672866.4]
  wire [7:0] Queue_io_enq_bits_len; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672866.4]
  wire [2:0] Queue_io_enq_bits_size; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672866.4]
  wire [1:0] Queue_io_enq_bits_burst; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672866.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672866.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672866.4]
  wire [3:0] Queue_io_deq_bits_id; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672866.4]
  wire [30:0] Queue_io_deq_bits_addr; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672866.4]
  wire [7:0] Queue_io_deq_bits_len; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672866.4]
  wire [2:0] Queue_io_deq_bits_size; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672866.4]
  wire [1:0] Queue_io_deq_bits_burst; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672866.4]
  wire  Queue_1_clock; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672996.4]
  wire  Queue_1_reset; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672996.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672996.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672996.4]
  wire [3:0] Queue_1_io_enq_bits_id; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672996.4]
  wire [30:0] Queue_1_io_enq_bits_addr; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672996.4]
  wire [7:0] Queue_1_io_enq_bits_len; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672996.4]
  wire [2:0] Queue_1_io_enq_bits_size; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672996.4]
  wire [1:0] Queue_1_io_enq_bits_burst; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672996.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672996.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672996.4]
  wire [3:0] Queue_1_io_deq_bits_id; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672996.4]
  wire [30:0] Queue_1_io_deq_bits_addr; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672996.4]
  wire [7:0] Queue_1_io_deq_bits_len; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672996.4]
  wire [2:0] Queue_1_io_deq_bits_size; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672996.4]
  wire [1:0] Queue_1_io_deq_bits_burst; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672996.4]
  wire  Queue_2_clock; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673126.4]
  wire  Queue_2_reset; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673126.4]
  wire  Queue_2_io_enq_ready; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673126.4]
  wire  Queue_2_io_enq_valid; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673126.4]
  wire [63:0] Queue_2_io_enq_bits_data; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673126.4]
  wire [7:0] Queue_2_io_enq_bits_strb; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673126.4]
  wire  Queue_2_io_enq_bits_last; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673126.4]
  wire  Queue_2_io_deq_ready; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673126.4]
  wire  Queue_2_io_deq_valid; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673126.4]
  wire [63:0] Queue_2_io_deq_bits_data; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673126.4]
  wire [7:0] Queue_2_io_deq_bits_strb; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673126.4]
  wire  Queue_2_io_deq_bits_last; // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673126.4]
  reg  _T_4; // @[Fragmenter.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672896.4]
  reg [31:0] _RAND_0;
  reg [30:0] _T_5; // @[Fragmenter.scala 59:25:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672897.4]
  reg [31:0] _RAND_1;
  reg [7:0] _T_6; // @[Fragmenter.scala 60:25:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672898.4]
  reg [31:0] _RAND_2;
  wire [7:0] _T_2_bits_len; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672881.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672889.4]
  wire [7:0] _T_7; // @[Fragmenter.scala 62:23:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672899.4]
  wire [30:0] _T_2_bits_addr; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672881.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672890.4]
  wire [30:0] _T_8; // @[Fragmenter.scala 63:23:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672900.4]
  wire [1:0] _T_2_bits_burst; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672881.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672887.4]
  wire  _T_50; // @[Fragmenter.scala 90:34:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672942.4]
  wire [2:0] _T_2_bits_size; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672881.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672888.4]
  wire [15:0] _T_59; // @[Fragmenter.scala 98:38:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672951.4]
  wire [30:0] _GEN_48; // @[Fragmenter.scala 98:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672952.4]
  wire [30:0] _T_61; // @[Fragmenter.scala 98:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672953.4]
  wire [15:0] _T_62; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672954.4]
  wire [22:0] _GEN_49; // @[Bundles.scala 31:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672955.4]
  wire [22:0] _T_63; // @[Bundles.scala 31:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672955.4]
  wire [14:0] _T_64; // @[Bundles.scala 31:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672956.4]
  wire  _T_66; // @[Fragmenter.scala 101:28:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672960.4]
  wire [30:0] _GEN_50; // @[Fragmenter.scala 102:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672962.6]
  wire [30:0] _T_67; // @[Fragmenter.scala 102:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672962.6]
  wire [30:0] _T_68; // @[Fragmenter.scala 102:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672963.6]
  wire [30:0] _T_69; // @[Fragmenter.scala 102:62:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672964.6]
  wire [30:0] _T_70; // @[Fragmenter.scala 102:47:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672965.6]
  wire [30:0] _T_71; // @[Fragmenter.scala 102:45:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672966.6]
  wire  _T_73; // @[Fragmenter.scala 108:27:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672973.4]
  wire [30:0] _T_75; // @[Fragmenter.scala 120:28:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672979.4]
  wire [9:0] _T_77; // @[package.scala 189:77:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672981.4]
  wire [2:0] _T_78; // @[package.scala 189:82:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672982.4]
  wire [2:0] _T_79; // @[package.scala 189:46:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672983.4]
  wire [30:0] _GEN_52; // @[Fragmenter.scala 120:34:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672984.4]
  wire [30:0] _T_80; // @[Fragmenter.scala 120:34:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672984.4]
  wire  _T_2_valid; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672881.4 Decoupled.scala 317:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672892.4]
  wire  _T_82; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672987.4]
  wire  _T_83; // @[Fragmenter.scala 123:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672989.6]
  wire [8:0] _GEN_53; // @[Fragmenter.scala 125:25:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672992.6]
  wire [8:0] _T_85; // @[Fragmenter.scala 125:25:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672993.6]
  wire [8:0] _GEN_4; // @[Fragmenter.scala 122:27:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672988.4]
  reg  _T_88; // @[Fragmenter.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673026.4]
  reg [31:0] _RAND_3;
  reg [30:0] _T_89; // @[Fragmenter.scala 59:25:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673027.4]
  reg [31:0] _RAND_4;
  reg [7:0] _T_90; // @[Fragmenter.scala 60:25:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673028.4]
  reg [31:0] _RAND_5;
  wire [7:0] _T_86_bits_len; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673011.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673019.4]
  wire [7:0] _T_91; // @[Fragmenter.scala 62:23:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673029.4]
  wire [30:0] _T_86_bits_addr; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673011.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673020.4]
  wire [30:0] _T_92; // @[Fragmenter.scala 63:23:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673030.4]
  wire [1:0] _T_86_bits_burst; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673011.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673017.4]
  wire  _T_134; // @[Fragmenter.scala 90:34:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673072.4]
  wire [2:0] _T_86_bits_size; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673011.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673018.4]
  wire [15:0] _T_143; // @[Fragmenter.scala 98:38:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673081.4]
  wire [30:0] _GEN_58; // @[Fragmenter.scala 98:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673082.4]
  wire [30:0] _T_145; // @[Fragmenter.scala 98:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673083.4]
  wire [15:0] _T_146; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673084.4]
  wire [22:0] _GEN_59; // @[Bundles.scala 31:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673085.4]
  wire [22:0] _T_147; // @[Bundles.scala 31:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673085.4]
  wire [14:0] _T_148; // @[Bundles.scala 31:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673086.4]
  wire  _T_150; // @[Fragmenter.scala 101:28:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673090.4]
  wire [30:0] _GEN_60; // @[Fragmenter.scala 102:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673092.6]
  wire [30:0] _T_151; // @[Fragmenter.scala 102:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673092.6]
  wire [30:0] _T_152; // @[Fragmenter.scala 102:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673093.6]
  wire [30:0] _T_153; // @[Fragmenter.scala 102:62:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673094.6]
  wire [30:0] _T_154; // @[Fragmenter.scala 102:47:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673095.6]
  wire [30:0] _T_155; // @[Fragmenter.scala 102:45:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673096.6]
  wire  _T_157; // @[Fragmenter.scala 108:27:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673103.4]
  reg [8:0] _T_182; // @[Fragmenter.scala 162:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673166.4]
  reg [31:0] _RAND_6;
  wire  _T_183; // @[Fragmenter.scala 163:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673167.4]
  reg  _T_171; // @[Fragmenter.scala 148:35:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673142.4]
  reg [31:0] _RAND_7;
  wire  _T_178; // @[Fragmenter.scala 156:52:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673158.4]
  wire  _T_179; // @[Fragmenter.scala 156:35:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673159.4]
  wire [30:0] _T_159; // @[Fragmenter.scala 120:28:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673109.4]
  wire [9:0] _T_161; // @[package.scala 189:77:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673111.4]
  wire [2:0] _T_162; // @[package.scala 189:82:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673112.4]
  wire [2:0] _T_163; // @[package.scala 189:46:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673113.4]
  wire [30:0] _GEN_62; // @[Fragmenter.scala 120:34:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673114.4]
  wire [30:0] _T_164; // @[Fragmenter.scala 120:34:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673114.4]
  wire  _T_86_valid; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673011.4 Decoupled.scala 317:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673022.4]
  wire  _T_166; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673117.4]
  wire  _T_167; // @[Fragmenter.scala 123:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673119.6]
  wire [8:0] _GEN_63; // @[Fragmenter.scala 125:25:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673122.6]
  wire [8:0] _T_169; // @[Fragmenter.scala 125:25:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673123.6]
  wire [8:0] _GEN_9; // @[Fragmenter.scala 122:27:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673118.4]
  wire  _T_180; // @[Fragmenter.scala 157:38:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673161.4]
  wire  _T_181; // @[Fragmenter.scala 157:35:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673162.4]
  wire  _T_174; // @[Fragmenter.scala 151:26:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673147.4]
  wire  _T_177; // @[Fragmenter.scala 155:35:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673156.4]
  wire  _T_175; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673151.4]
  wire [8:0] _T_184; // @[Fragmenter.scala 164:35:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673168.4]
  wire [8:0] _T_185; // @[Fragmenter.scala 164:23:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673169.4]
  wire  _T_186; // @[Fragmenter.scala 165:27:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673170.4]
  wire  _T_170_valid; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673134.4 Decoupled.scala 317:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673138.4]
  wire  _T_197; // @[Fragmenter.scala 171:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673187.4]
  wire  _T_198; // @[Fragmenter.scala 171:51:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673188.4]
  wire  _T_199; // @[Fragmenter.scala 171:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673189.4]
  wire  _T_187; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673171.4]
  wire [8:0] _GEN_64; // @[Fragmenter.scala 166:27:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673172.4]
  wire [8:0] _T_189; // @[Fragmenter.scala 166:27:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673173.4]
  wire  _T_191; // @[Fragmenter.scala 167:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673176.4]
  wire  _T_192; // @[Fragmenter.scala 167:39:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673177.4]
  wire  _T_193; // @[Fragmenter.scala 167:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673178.4]
  wire  _T_195; // @[Fragmenter.scala 167:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673180.4]
  wire  _T_196; // @[Fragmenter.scala 167:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673181.4]
  wire  _T_203; // @[Fragmenter.scala 176:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673197.4]
  wire  _T_170_bits_last; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673134.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673135.4]
  wire  _T_204; // @[Fragmenter.scala 176:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673198.4]
  wire  _T_205; // @[Fragmenter.scala 176:28:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673199.4]
  wire  _T_206; // @[Fragmenter.scala 176:47:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673200.4]
  wire  _T_208; // @[Fragmenter.scala 176:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673202.4]
  wire  _T_209; // @[Fragmenter.scala 176:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673203.4]
  wire  _T_214; // @[Fragmenter.scala 188:36:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673216.4]
  wire  _T_215; // @[Fragmenter.scala 188:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673217.4]
  reg [1:0] _T_217_0; // @[Fragmenter.scala 192:26:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673237.4]
  reg [31:0] _RAND_8;
  reg [1:0] _T_217_1; // @[Fragmenter.scala 192:26:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673237.4]
  reg [31:0] _RAND_9;
  reg [1:0] _T_217_2; // @[Fragmenter.scala 192:26:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673237.4]
  reg [31:0] _RAND_10;
  reg [1:0] _T_217_3; // @[Fragmenter.scala 192:26:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673237.4]
  reg [31:0] _RAND_11;
  reg [1:0] _T_217_4; // @[Fragmenter.scala 192:26:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673237.4]
  reg [31:0] _RAND_12;
  reg [1:0] _T_217_5; // @[Fragmenter.scala 192:26:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673237.4]
  reg [31:0] _RAND_13;
  reg [1:0] _T_217_6; // @[Fragmenter.scala 192:26:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673237.4]
  reg [31:0] _RAND_14;
  reg [1:0] _T_217_7; // @[Fragmenter.scala 192:26:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673237.4]
  reg [31:0] _RAND_15;
  reg [1:0] _T_217_8; // @[Fragmenter.scala 192:26:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673237.4]
  reg [31:0] _RAND_16;
  reg [1:0] _T_217_9; // @[Fragmenter.scala 192:26:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673237.4]
  reg [31:0] _RAND_17;
  reg [1:0] _T_217_10; // @[Fragmenter.scala 192:26:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673237.4]
  reg [31:0] _RAND_18;
  reg [1:0] _T_217_11; // @[Fragmenter.scala 192:26:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673237.4]
  reg [31:0] _RAND_19;
  reg [1:0] _T_217_12; // @[Fragmenter.scala 192:26:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673237.4]
  reg [31:0] _RAND_20;
  reg [1:0] _T_217_13; // @[Fragmenter.scala 192:26:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673237.4]
  reg [31:0] _RAND_21;
  reg [1:0] _T_217_14; // @[Fragmenter.scala 192:26:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673237.4]
  reg [31:0] _RAND_22;
  reg [1:0] _T_217_15; // @[Fragmenter.scala 192:26:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673237.4]
  reg [31:0] _RAND_23;
  wire [1:0] _GEN_13; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  wire [1:0] _GEN_14; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  wire [1:0] _GEN_15; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  wire [1:0] _GEN_16; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  wire [1:0] _GEN_17; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  wire [1:0] _GEN_18; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  wire [1:0] _GEN_19; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  wire [1:0] _GEN_20; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  wire [1:0] _GEN_21; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  wire [1:0] _GEN_22; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  wire [1:0] _GEN_23; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  wire [1:0] _GEN_24; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  wire [1:0] _GEN_25; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  wire [1:0] _GEN_26; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  wire [1:0] _GEN_27; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  wire [15:0] _T_220; // @[OneHot.scala 52:12:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673241.4]
  wire  _T_222; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673243.4]
  wire  _T_223; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673244.4]
  wire  _T_224; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673245.4]
  wire  _T_225; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673246.4]
  wire  _T_226; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673247.4]
  wire  _T_227; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673248.4]
  wire  _T_228; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673249.4]
  wire  _T_229; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673250.4]
  wire  _T_230; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673251.4]
  wire  _T_231; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673252.4]
  wire  _T_232; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673253.4]
  wire  _T_233; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673254.4]
  wire  _T_234; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673255.4]
  wire  _T_235; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673256.4]
  wire  _T_236; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673257.4]
  wire  _T_237; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673258.4]
  wire  _T_238; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673259.4]
  wire  _T_239; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673260.4]
  wire [1:0] _T_240; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673262.6]
  wire  _T_243; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673267.4]
  wire [1:0] _T_244; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673269.6]
  wire  _T_247; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673274.4]
  wire [1:0] _T_248; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673276.6]
  wire  _T_251; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673281.4]
  wire [1:0] _T_252; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673283.6]
  wire  _T_255; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673288.4]
  wire [1:0] _T_256; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673290.6]
  wire  _T_259; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673295.4]
  wire [1:0] _T_260; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673297.6]
  wire  _T_263; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673302.4]
  wire [1:0] _T_264; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673304.6]
  wire  _T_267; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673309.4]
  wire [1:0] _T_268; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673311.6]
  wire  _T_271; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673316.4]
  wire [1:0] _T_272; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673318.6]
  wire  _T_275; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673323.4]
  wire [1:0] _T_276; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673325.6]
  wire  _T_279; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673330.4]
  wire [1:0] _T_280; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673332.6]
  wire  _T_283; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673337.4]
  wire [1:0] _T_284; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673339.6]
  wire  _T_287; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673344.4]
  wire [1:0] _T_288; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673346.6]
  wire  _T_291; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673351.4]
  wire [1:0] _T_292; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673353.6]
  wire  _T_295; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673358.4]
  wire [1:0] _T_296; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673360.6]
  wire  _T_299; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673365.4]
  wire [1:0] _T_300; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673367.6]
  Queue_167 Queue ( // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672866.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_id(Queue_io_enq_bits_id),
    .io_enq_bits_addr(Queue_io_enq_bits_addr),
    .io_enq_bits_len(Queue_io_enq_bits_len),
    .io_enq_bits_size(Queue_io_enq_bits_size),
    .io_enq_bits_burst(Queue_io_enq_bits_burst),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_id(Queue_io_deq_bits_id),
    .io_deq_bits_addr(Queue_io_deq_bits_addr),
    .io_deq_bits_len(Queue_io_deq_bits_len),
    .io_deq_bits_size(Queue_io_deq_bits_size),
    .io_deq_bits_burst(Queue_io_deq_bits_burst)
  );
  Queue_167 Queue_1 ( // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672996.4]
    .clock(Queue_1_clock),
    .reset(Queue_1_reset),
    .io_enq_ready(Queue_1_io_enq_ready),
    .io_enq_valid(Queue_1_io_enq_valid),
    .io_enq_bits_id(Queue_1_io_enq_bits_id),
    .io_enq_bits_addr(Queue_1_io_enq_bits_addr),
    .io_enq_bits_len(Queue_1_io_enq_bits_len),
    .io_enq_bits_size(Queue_1_io_enq_bits_size),
    .io_enq_bits_burst(Queue_1_io_enq_bits_burst),
    .io_deq_ready(Queue_1_io_deq_ready),
    .io_deq_valid(Queue_1_io_deq_valid),
    .io_deq_bits_id(Queue_1_io_deq_bits_id),
    .io_deq_bits_addr(Queue_1_io_deq_bits_addr),
    .io_deq_bits_len(Queue_1_io_deq_bits_len),
    .io_deq_bits_size(Queue_1_io_deq_bits_size),
    .io_deq_bits_burst(Queue_1_io_deq_bits_burst)
  );
  Queue_46 Queue_2 ( // @[Decoupled.scala 294:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673126.4]
    .clock(Queue_2_clock),
    .reset(Queue_2_reset),
    .io_enq_ready(Queue_2_io_enq_ready),
    .io_enq_valid(Queue_2_io_enq_valid),
    .io_enq_bits_data(Queue_2_io_enq_bits_data),
    .io_enq_bits_strb(Queue_2_io_enq_bits_strb),
    .io_enq_bits_last(Queue_2_io_enq_bits_last),
    .io_deq_ready(Queue_2_io_deq_ready),
    .io_deq_valid(Queue_2_io_deq_valid),
    .io_deq_bits_data(Queue_2_io_deq_bits_data),
    .io_deq_bits_strb(Queue_2_io_deq_bits_strb),
    .io_deq_bits_last(Queue_2_io_deq_bits_last)
  );
  assign _T_2_bits_len = Queue_io_deq_bits_len; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672881.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672889.4]
  assign _T_7 = _T_4 ? _T_6 : _T_2_bits_len; // @[Fragmenter.scala 62:23:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672899.4]
  assign _T_2_bits_addr = Queue_io_deq_bits_addr; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672881.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672890.4]
  assign _T_8 = _T_4 ? _T_5 : _T_2_bits_addr; // @[Fragmenter.scala 63:23:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672900.4]
  assign _T_2_bits_burst = Queue_io_deq_bits_burst; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672881.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672887.4]
  assign _T_50 = _T_2_bits_burst == 2'h0; // @[Fragmenter.scala 90:34:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672942.4]
  assign _T_2_bits_size = Queue_io_deq_bits_size; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672881.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672888.4]
  assign _T_59 = 16'h1 << _T_2_bits_size; // @[Fragmenter.scala 98:38:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672951.4]
  assign _GEN_48 = {{15'd0}, _T_59}; // @[Fragmenter.scala 98:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672952.4]
  assign _T_61 = _T_8 + _GEN_48; // @[Fragmenter.scala 98:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672953.4]
  assign _T_62 = {_T_2_bits_len,8'hff}; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672954.4]
  assign _GEN_49 = {{7'd0}, _T_62}; // @[Bundles.scala 31:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672955.4]
  assign _T_63 = _GEN_49 << _T_2_bits_size; // @[Bundles.scala 31:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672955.4]
  assign _T_64 = _T_63[22:8]; // @[Bundles.scala 31:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672956.4]
  assign _T_66 = _T_2_bits_burst == 2'h2; // @[Fragmenter.scala 101:28:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672960.4]
  assign _GEN_50 = {{16'd0}, _T_64}; // @[Fragmenter.scala 102:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672962.6]
  assign _T_67 = _T_61 & _GEN_50; // @[Fragmenter.scala 102:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672962.6]
  assign _T_68 = ~ _T_2_bits_addr; // @[Fragmenter.scala 102:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672963.6]
  assign _T_69 = _T_68 | _GEN_50; // @[Fragmenter.scala 102:62:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672964.6]
  assign _T_70 = ~ _T_69; // @[Fragmenter.scala 102:47:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672965.6]
  assign _T_71 = _T_67 | _T_70; // @[Fragmenter.scala 102:45:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672966.6]
  assign _T_73 = 8'h0 == _T_7; // @[Fragmenter.scala 108:27:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672973.4]
  assign _T_75 = ~ _T_8; // @[Fragmenter.scala 120:28:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672979.4]
  assign _T_77 = 10'h7 << _T_2_bits_size; // @[package.scala 189:77:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672981.4]
  assign _T_78 = _T_77[2:0]; // @[package.scala 189:82:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672982.4]
  assign _T_79 = ~ _T_78; // @[package.scala 189:46:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672983.4]
  assign _GEN_52 = {{28'd0}, _T_79}; // @[Fragmenter.scala 120:34:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672984.4]
  assign _T_80 = _T_75 | _GEN_52; // @[Fragmenter.scala 120:34:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672984.4]
  assign _T_2_valid = Queue_io_deq_valid; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672881.4 Decoupled.scala 317:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672892.4]
  assign _T_82 = auto_out_arready & _T_2_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672987.4]
  assign _T_83 = _T_73 == 1'h0; // @[Fragmenter.scala 123:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672989.6]
  assign _GEN_53 = {{1'd0}, _T_7}; // @[Fragmenter.scala 125:25:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672992.6]
  assign _T_85 = _GEN_53 - 9'h1; // @[Fragmenter.scala 125:25:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672993.6]
  assign _GEN_4 = _T_82 ? _T_85 : {{1'd0}, _T_6}; // @[Fragmenter.scala 122:27:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672988.4]
  assign _T_86_bits_len = Queue_1_io_deq_bits_len; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673011.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673019.4]
  assign _T_91 = _T_88 ? _T_90 : _T_86_bits_len; // @[Fragmenter.scala 62:23:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673029.4]
  assign _T_86_bits_addr = Queue_1_io_deq_bits_addr; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673011.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673020.4]
  assign _T_92 = _T_88 ? _T_89 : _T_86_bits_addr; // @[Fragmenter.scala 63:23:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673030.4]
  assign _T_86_bits_burst = Queue_1_io_deq_bits_burst; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673011.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673017.4]
  assign _T_134 = _T_86_bits_burst == 2'h0; // @[Fragmenter.scala 90:34:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673072.4]
  assign _T_86_bits_size = Queue_1_io_deq_bits_size; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673011.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673018.4]
  assign _T_143 = 16'h1 << _T_86_bits_size; // @[Fragmenter.scala 98:38:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673081.4]
  assign _GEN_58 = {{15'd0}, _T_143}; // @[Fragmenter.scala 98:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673082.4]
  assign _T_145 = _T_92 + _GEN_58; // @[Fragmenter.scala 98:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673083.4]
  assign _T_146 = {_T_86_bits_len,8'hff}; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673084.4]
  assign _GEN_59 = {{7'd0}, _T_146}; // @[Bundles.scala 31:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673085.4]
  assign _T_147 = _GEN_59 << _T_86_bits_size; // @[Bundles.scala 31:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673085.4]
  assign _T_148 = _T_147[22:8]; // @[Bundles.scala 31:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673086.4]
  assign _T_150 = _T_86_bits_burst == 2'h2; // @[Fragmenter.scala 101:28:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673090.4]
  assign _GEN_60 = {{16'd0}, _T_148}; // @[Fragmenter.scala 102:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673092.6]
  assign _T_151 = _T_145 & _GEN_60; // @[Fragmenter.scala 102:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673092.6]
  assign _T_152 = ~ _T_86_bits_addr; // @[Fragmenter.scala 102:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673093.6]
  assign _T_153 = _T_152 | _GEN_60; // @[Fragmenter.scala 102:62:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673094.6]
  assign _T_154 = ~ _T_153; // @[Fragmenter.scala 102:47:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673095.6]
  assign _T_155 = _T_151 | _T_154; // @[Fragmenter.scala 102:45:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673096.6]
  assign _T_157 = 8'h0 == _T_91; // @[Fragmenter.scala 108:27:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673103.4]
  assign _T_183 = _T_182 == 9'h0; // @[Fragmenter.scala 163:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673167.4]
  assign _T_178 = _T_183 | _T_171; // @[Fragmenter.scala 156:52:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673158.4]
  assign _T_179 = auto_out_awready & _T_178; // @[Fragmenter.scala 156:35:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673159.4]
  assign _T_159 = ~ _T_92; // @[Fragmenter.scala 120:28:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673109.4]
  assign _T_161 = 10'h7 << _T_86_bits_size; // @[package.scala 189:77:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673111.4]
  assign _T_162 = _T_161[2:0]; // @[package.scala 189:82:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673112.4]
  assign _T_163 = ~ _T_162; // @[package.scala 189:46:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673113.4]
  assign _GEN_62 = {{28'd0}, _T_163}; // @[Fragmenter.scala 120:34:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673114.4]
  assign _T_164 = _T_159 | _GEN_62; // @[Fragmenter.scala 120:34:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673114.4]
  assign _T_86_valid = Queue_1_io_deq_valid; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673011.4 Decoupled.scala 317:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673022.4]
  assign _T_166 = _T_179 & _T_86_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673117.4]
  assign _T_167 = _T_157 == 1'h0; // @[Fragmenter.scala 123:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673119.6]
  assign _GEN_63 = {{1'd0}, _T_91}; // @[Fragmenter.scala 125:25:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673122.6]
  assign _T_169 = _GEN_63 - 9'h1; // @[Fragmenter.scala 125:25:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673123.6]
  assign _GEN_9 = _T_166 ? _T_169 : {{1'd0}, _T_90}; // @[Fragmenter.scala 122:27:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673118.4]
  assign _T_180 = _T_171 == 1'h0; // @[Fragmenter.scala 157:38:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673161.4]
  assign _T_181 = _T_86_valid & _T_180; // @[Fragmenter.scala 157:35:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673162.4]
  assign _T_174 = _T_181 & _T_183; // @[Fragmenter.scala 151:26:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673147.4]
  assign _T_177 = _T_86_valid & _T_178; // @[Fragmenter.scala 155:35:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673156.4]
  assign _T_175 = auto_out_awready & _T_177; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673151.4]
  assign _T_184 = _T_181 ? 9'h1 : 9'h0; // @[Fragmenter.scala 164:35:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673168.4]
  assign _T_185 = _T_183 ? _T_184 : _T_182; // @[Fragmenter.scala 164:23:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673169.4]
  assign _T_186 = _T_185 == 9'h1; // @[Fragmenter.scala 165:27:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673170.4]
  assign _T_170_valid = Queue_2_io_deq_valid; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673134.4 Decoupled.scala 317:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673138.4]
  assign _T_197 = _T_183 == 1'h0; // @[Fragmenter.scala 171:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673187.4]
  assign _T_198 = _T_197 | _T_181; // @[Fragmenter.scala 171:51:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673188.4]
  assign _T_199 = _T_170_valid & _T_198; // @[Fragmenter.scala 171:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673189.4]
  assign _T_187 = auto_out_wready & _T_199; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673171.4]
  assign _GEN_64 = {{8'd0}, _T_187}; // @[Fragmenter.scala 166:27:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673172.4]
  assign _T_189 = _T_185 - _GEN_64; // @[Fragmenter.scala 166:27:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673173.4]
  assign _T_191 = _T_187 == 1'h0; // @[Fragmenter.scala 167:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673176.4]
  assign _T_192 = _T_185 != 9'h0; // @[Fragmenter.scala 167:39:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673177.4]
  assign _T_193 = _T_191 | _T_192; // @[Fragmenter.scala 167:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673178.4]
  assign _T_195 = _T_193 | reset; // @[Fragmenter.scala 167:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673180.4]
  assign _T_196 = _T_195 == 1'h0; // @[Fragmenter.scala 167:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673181.4]
  assign _T_203 = _T_199 == 1'h0; // @[Fragmenter.scala 176:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673197.4]
  assign _T_170_bits_last = Queue_2_io_deq_bits_last; // @[Decoupled.scala 315:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673134.4 Decoupled.scala 316:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673135.4]
  assign _T_204 = _T_170_bits_last == 1'h0; // @[Fragmenter.scala 176:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673198.4]
  assign _T_205 = _T_203 | _T_204; // @[Fragmenter.scala 176:28:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673199.4]
  assign _T_206 = _T_205 | _T_186; // @[Fragmenter.scala 176:47:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673200.4]
  assign _T_208 = _T_206 | reset; // @[Fragmenter.scala 176:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673202.4]
  assign _T_209 = _T_208 == 1'h0; // @[Fragmenter.scala 176:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673203.4]
  assign _T_214 = auto_out_buser == 1'h0; // @[Fragmenter.scala 188:36:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673216.4]
  assign _T_215 = auto_in_bready | _T_214; // @[Fragmenter.scala 188:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673217.4]
  assign _GEN_13 = 4'h1 == auto_out_bid ? _T_217_1 : _T_217_0; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  assign _GEN_14 = 4'h2 == auto_out_bid ? _T_217_2 : _GEN_13; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  assign _GEN_15 = 4'h3 == auto_out_bid ? _T_217_3 : _GEN_14; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  assign _GEN_16 = 4'h4 == auto_out_bid ? _T_217_4 : _GEN_15; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  assign _GEN_17 = 4'h5 == auto_out_bid ? _T_217_5 : _GEN_16; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  assign _GEN_18 = 4'h6 == auto_out_bid ? _T_217_6 : _GEN_17; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  assign _GEN_19 = 4'h7 == auto_out_bid ? _T_217_7 : _GEN_18; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  assign _GEN_20 = 4'h8 == auto_out_bid ? _T_217_8 : _GEN_19; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  assign _GEN_21 = 4'h9 == auto_out_bid ? _T_217_9 : _GEN_20; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  assign _GEN_22 = 4'ha == auto_out_bid ? _T_217_10 : _GEN_21; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  assign _GEN_23 = 4'hb == auto_out_bid ? _T_217_11 : _GEN_22; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  assign _GEN_24 = 4'hc == auto_out_bid ? _T_217_12 : _GEN_23; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  assign _GEN_25 = 4'hd == auto_out_bid ? _T_217_13 : _GEN_24; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  assign _GEN_26 = 4'he == auto_out_bid ? _T_217_14 : _GEN_25; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  assign _GEN_27 = 4'hf == auto_out_bid ? _T_217_15 : _GEN_26; // @[Fragmenter.scala 193:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673238.4]
  assign _T_220 = 16'h1 << auto_out_bid; // @[OneHot.scala 52:12:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673241.4]
  assign _T_222 = _T_220[0]; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673243.4]
  assign _T_223 = _T_220[1]; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673244.4]
  assign _T_224 = _T_220[2]; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673245.4]
  assign _T_225 = _T_220[3]; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673246.4]
  assign _T_226 = _T_220[4]; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673247.4]
  assign _T_227 = _T_220[5]; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673248.4]
  assign _T_228 = _T_220[6]; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673249.4]
  assign _T_229 = _T_220[7]; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673250.4]
  assign _T_230 = _T_220[8]; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673251.4]
  assign _T_231 = _T_220[9]; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673252.4]
  assign _T_232 = _T_220[10]; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673253.4]
  assign _T_233 = _T_220[11]; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673254.4]
  assign _T_234 = _T_220[12]; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673255.4]
  assign _T_235 = _T_220[13]; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673256.4]
  assign _T_236 = _T_220[14]; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673257.4]
  assign _T_237 = _T_220[15]; // @[Fragmenter.scala 194:63:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673258.4]
  assign _T_238 = _T_215 & auto_out_bvalid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673259.4]
  assign _T_239 = _T_222 & _T_238; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673260.4]
  assign _T_240 = _T_217_0 | auto_out_bresp; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673262.6]
  assign _T_243 = _T_223 & _T_238; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673267.4]
  assign _T_244 = _T_217_1 | auto_out_bresp; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673269.6]
  assign _T_247 = _T_224 & _T_238; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673274.4]
  assign _T_248 = _T_217_2 | auto_out_bresp; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673276.6]
  assign _T_251 = _T_225 & _T_238; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673281.4]
  assign _T_252 = _T_217_3 | auto_out_bresp; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673283.6]
  assign _T_255 = _T_226 & _T_238; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673288.4]
  assign _T_256 = _T_217_4 | auto_out_bresp; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673290.6]
  assign _T_259 = _T_227 & _T_238; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673295.4]
  assign _T_260 = _T_217_5 | auto_out_bresp; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673297.6]
  assign _T_263 = _T_228 & _T_238; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673302.4]
  assign _T_264 = _T_217_6 | auto_out_bresp; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673304.6]
  assign _T_267 = _T_229 & _T_238; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673309.4]
  assign _T_268 = _T_217_7 | auto_out_bresp; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673311.6]
  assign _T_271 = _T_230 & _T_238; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673316.4]
  assign _T_272 = _T_217_8 | auto_out_bresp; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673318.6]
  assign _T_275 = _T_231 & _T_238; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673323.4]
  assign _T_276 = _T_217_9 | auto_out_bresp; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673325.6]
  assign _T_279 = _T_232 & _T_238; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673330.4]
  assign _T_280 = _T_217_10 | auto_out_bresp; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673332.6]
  assign _T_283 = _T_233 & _T_238; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673337.4]
  assign _T_284 = _T_217_11 | auto_out_bresp; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673339.6]
  assign _T_287 = _T_234 & _T_238; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673344.4]
  assign _T_288 = _T_217_12 | auto_out_bresp; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673346.6]
  assign _T_291 = _T_235 & _T_238; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673351.4]
  assign _T_292 = _T_217_13 | auto_out_bresp; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673353.6]
  assign _T_295 = _T_236 & _T_238; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673358.4]
  assign _T_296 = _T_217_14 | auto_out_bresp; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673360.6]
  assign _T_299 = _T_237 & _T_238; // @[Fragmenter.scala 195:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673365.4]
  assign _T_300 = _T_217_15 | auto_out_bresp; // @[Fragmenter.scala 195:70:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673367.6]
  assign auto_in_awready = Queue_1_io_enq_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672865.4]
  assign auto_in_wready = Queue_2_io_enq_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672865.4]
  assign auto_in_bvalid = auto_out_bvalid & auto_out_buser; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672865.4]
  assign auto_in_bid = auto_out_bid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672865.4]
  assign auto_in_bresp = auto_out_bresp | _GEN_27; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672865.4]
  assign auto_in_arready = Queue_io_enq_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672865.4]
  assign auto_in_rvalid = auto_out_rvalid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672865.4]
  assign auto_in_rid = auto_out_rid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672865.4]
  assign auto_in_rdata = auto_out_rdata; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672865.4]
  assign auto_in_rresp = auto_out_rresp; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672865.4]
  assign auto_in_rlast = auto_out_rlast & auto_out_ruser; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672865.4]
  assign auto_out_awvalid = _T_86_valid & _T_178; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672864.4]
  assign auto_out_awid = Queue_1_io_deq_bits_id; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672864.4]
  assign auto_out_awaddr = ~ _T_164; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672864.4]
  assign auto_out_awuser = 8'h0 == _T_91; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672864.4]
  assign auto_out_wvalid = _T_170_valid & _T_198; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672864.4]
  assign auto_out_wdata = Queue_2_io_deq_bits_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672864.4]
  assign auto_out_wstrb = Queue_2_io_deq_bits_strb; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672864.4]
  assign auto_out_wlast = _T_185 == 9'h1; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672864.4]
  assign auto_out_bready = auto_in_bready | _T_214; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672864.4]
  assign auto_out_arvalid = Queue_io_deq_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672864.4]
  assign auto_out_arid = Queue_io_deq_bits_id; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672864.4]
  assign auto_out_araddr = ~ _T_80; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672864.4]
  assign auto_out_aruser = 8'h0 == _T_7; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672864.4]
  assign auto_out_rready = auto_in_rready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672864.4]
  assign Queue_clock = clock; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672867.4]
  assign Queue_reset = reset; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672868.4]
  assign Queue_io_enq_valid = auto_in_arvalid; // @[Decoupled.scala 295:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672869.4]
  assign Queue_io_enq_bits_id = auto_in_arid; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672879.4]
  assign Queue_io_enq_bits_addr = auto_in_araddr; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672878.4]
  assign Queue_io_enq_bits_len = auto_in_arlen; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672877.4]
  assign Queue_io_enq_bits_size = auto_in_arsize; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672876.4]
  assign Queue_io_enq_bits_burst = auto_in_arburst; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672875.4]
  assign Queue_io_deq_ready = auto_out_arready & _T_73; // @[Decoupled.scala 318:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672893.4]
  assign Queue_1_clock = clock; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672997.4]
  assign Queue_1_reset = reset; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672998.4]
  assign Queue_1_io_enq_valid = auto_in_awvalid; // @[Decoupled.scala 295:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672999.4]
  assign Queue_1_io_enq_bits_id = auto_in_awid; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673009.4]
  assign Queue_1_io_enq_bits_addr = auto_in_awaddr; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673008.4]
  assign Queue_1_io_enq_bits_len = auto_in_awlen; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673007.4]
  assign Queue_1_io_enq_bits_size = auto_in_awsize; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673006.4]
  assign Queue_1_io_enq_bits_burst = auto_in_awburst; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673005.4]
  assign Queue_1_io_deq_ready = _T_179 & _T_157; // @[Decoupled.scala 318:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673023.4]
  assign Queue_2_clock = clock; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673127.4]
  assign Queue_2_reset = reset; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673128.4]
  assign Queue_2_io_enq_valid = auto_in_wvalid; // @[Decoupled.scala 295:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673129.4]
  assign Queue_2_io_enq_bits_data = auto_in_wdata; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673132.4]
  assign Queue_2_io_enq_bits_strb = auto_in_wstrb; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673131.4]
  assign Queue_2_io_enq_bits_last = auto_in_wlast; // @[Decoupled.scala 296:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673130.4]
  assign Queue_2_io_deq_ready = auto_out_wready & _T_198; // @[Decoupled.scala 318:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673139.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_4 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_5 = _RAND_1[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_6 = _RAND_2[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_88 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_89 = _RAND_4[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_90 = _RAND_5[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_182 = _RAND_6[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_171 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_217_0 = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_217_1 = _RAND_9[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_217_2 = _RAND_10[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_217_3 = _RAND_11[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_217_4 = _RAND_12[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_217_5 = _RAND_13[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_217_6 = _RAND_14[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_217_7 = _RAND_15[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_217_8 = _RAND_16[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_217_9 = _RAND_17[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_217_10 = _RAND_18[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_217_11 = _RAND_19[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_217_12 = _RAND_20[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_217_13 = _RAND_21[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_217_14 = _RAND_22[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_217_15 = _RAND_23[1:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      _T_4 <= 1'h0;
    end else begin
      if (_T_82) begin
        _T_4 <= _T_83;
      end
    end
    if (_T_82) begin
      if (_T_50) begin
        _T_5 <= _T_2_bits_addr;
      end else begin
        if (_T_66) begin
          _T_5 <= _T_71;
        end else begin
          _T_5 <= _T_61;
        end
      end
    end
    _T_6 <= _GEN_4[7:0];
    if (reset) begin
      _T_88 <= 1'h0;
    end else begin
      if (_T_166) begin
        _T_88 <= _T_167;
      end
    end
    if (_T_166) begin
      if (_T_134) begin
        _T_89 <= _T_86_bits_addr;
      end else begin
        if (_T_150) begin
          _T_89 <= _T_155;
        end else begin
          _T_89 <= _T_145;
        end
      end
    end
    _T_90 <= _GEN_9[7:0];
    if (reset) begin
      _T_182 <= 9'h0;
    end else begin
      _T_182 <= _T_189;
    end
    if (reset) begin
      _T_171 <= 1'h0;
    end else begin
      if (_T_175) begin
        _T_171 <= 1'h0;
      end else begin
        if (_T_174) begin
          _T_171 <= 1'h1;
        end
      end
    end
    if (reset) begin
      _T_217_0 <= 2'h0;
    end else begin
      if (_T_239) begin
        if (auto_out_buser) begin
          _T_217_0 <= 2'h0;
        end else begin
          _T_217_0 <= _T_240;
        end
      end
    end
    if (reset) begin
      _T_217_1 <= 2'h0;
    end else begin
      if (_T_243) begin
        if (auto_out_buser) begin
          _T_217_1 <= 2'h0;
        end else begin
          _T_217_1 <= _T_244;
        end
      end
    end
    if (reset) begin
      _T_217_2 <= 2'h0;
    end else begin
      if (_T_247) begin
        if (auto_out_buser) begin
          _T_217_2 <= 2'h0;
        end else begin
          _T_217_2 <= _T_248;
        end
      end
    end
    if (reset) begin
      _T_217_3 <= 2'h0;
    end else begin
      if (_T_251) begin
        if (auto_out_buser) begin
          _T_217_3 <= 2'h0;
        end else begin
          _T_217_3 <= _T_252;
        end
      end
    end
    if (reset) begin
      _T_217_4 <= 2'h0;
    end else begin
      if (_T_255) begin
        if (auto_out_buser) begin
          _T_217_4 <= 2'h0;
        end else begin
          _T_217_4 <= _T_256;
        end
      end
    end
    if (reset) begin
      _T_217_5 <= 2'h0;
    end else begin
      if (_T_259) begin
        if (auto_out_buser) begin
          _T_217_5 <= 2'h0;
        end else begin
          _T_217_5 <= _T_260;
        end
      end
    end
    if (reset) begin
      _T_217_6 <= 2'h0;
    end else begin
      if (_T_263) begin
        if (auto_out_buser) begin
          _T_217_6 <= 2'h0;
        end else begin
          _T_217_6 <= _T_264;
        end
      end
    end
    if (reset) begin
      _T_217_7 <= 2'h0;
    end else begin
      if (_T_267) begin
        if (auto_out_buser) begin
          _T_217_7 <= 2'h0;
        end else begin
          _T_217_7 <= _T_268;
        end
      end
    end
    if (reset) begin
      _T_217_8 <= 2'h0;
    end else begin
      if (_T_271) begin
        if (auto_out_buser) begin
          _T_217_8 <= 2'h0;
        end else begin
          _T_217_8 <= _T_272;
        end
      end
    end
    if (reset) begin
      _T_217_9 <= 2'h0;
    end else begin
      if (_T_275) begin
        if (auto_out_buser) begin
          _T_217_9 <= 2'h0;
        end else begin
          _T_217_9 <= _T_276;
        end
      end
    end
    if (reset) begin
      _T_217_10 <= 2'h0;
    end else begin
      if (_T_279) begin
        if (auto_out_buser) begin
          _T_217_10 <= 2'h0;
        end else begin
          _T_217_10 <= _T_280;
        end
      end
    end
    if (reset) begin
      _T_217_11 <= 2'h0;
    end else begin
      if (_T_283) begin
        if (auto_out_buser) begin
          _T_217_11 <= 2'h0;
        end else begin
          _T_217_11 <= _T_284;
        end
      end
    end
    if (reset) begin
      _T_217_12 <= 2'h0;
    end else begin
      if (_T_287) begin
        if (auto_out_buser) begin
          _T_217_12 <= 2'h0;
        end else begin
          _T_217_12 <= _T_288;
        end
      end
    end
    if (reset) begin
      _T_217_13 <= 2'h0;
    end else begin
      if (_T_291) begin
        if (auto_out_buser) begin
          _T_217_13 <= 2'h0;
        end else begin
          _T_217_13 <= _T_292;
        end
      end
    end
    if (reset) begin
      _T_217_14 <= 2'h0;
    end else begin
      if (_T_295) begin
        if (auto_out_buser) begin
          _T_217_14 <= 2'h0;
        end else begin
          _T_217_14 <= _T_296;
        end
      end
    end
    if (reset) begin
      _T_217_15 <= 2'h0;
    end else begin
      if (_T_299) begin
        if (auto_out_buser) begin
          _T_217_15 <= 2'h0;
        end else begin
          _T_217_15 <= _T_300;
        end
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_196) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:167 assert (!out.w.fire() || w_todo =/= UInt(0)) // underflow impossible\n"); // @[Fragmenter.scala 167:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673183.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_196) begin
          $fatal; // @[Fragmenter.scala 167:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673184.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_209) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:176 assert (!out.w.valid || !in_w.bits.last || w_last)\n"); // @[Fragmenter.scala 176:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673205.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_209) begin
          $fatal; // @[Fragmenter.scala 176:14:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673206.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module AXI4RAM( // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671929.2]
  input         clock, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671930.4]
  input         reset, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671931.4]
  output        auto_in_awready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  input         auto_in_awvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  input  [3:0]  auto_in_awid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  input  [30:0] auto_in_awaddr, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  input  [15:0] auto_in_awuser, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  output        auto_in_wready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  input         auto_in_wvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  input  [63:0] auto_in_wdata, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  input  [7:0]  auto_in_wstrb, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  input         auto_in_bready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  output        auto_in_bvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  output [3:0]  auto_in_bid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  output [1:0]  auto_in_bresp, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  output [15:0] auto_in_buser, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  output        auto_in_arready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  input         auto_in_arvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  input  [3:0]  auto_in_arid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  input  [30:0] auto_in_araddr, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  input  [15:0] auto_in_aruser, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  input         auto_in_rready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  output        auto_in_rvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  output [3:0]  auto_in_rid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  output [63:0] auto_in_rdata, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  output [1:0]  auto_in_rresp, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
  output [15:0] auto_in_ruser // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671932.4]
);
  wire [27:0] mem_R0_addr; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire  mem_R0_en; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire  mem_R0_clk; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire [7:0] mem_R0_data_0; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire [7:0] mem_R0_data_1; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire [7:0] mem_R0_data_2; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire [7:0] mem_R0_data_3; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire [7:0] mem_R0_data_4; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire [7:0] mem_R0_data_5; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire [7:0] mem_R0_data_6; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire [7:0] mem_R0_data_7; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire [27:0] mem_W0_addr; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire  mem_W0_en; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire  mem_W0_clk; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire [7:0] mem_W0_data_0; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire [7:0] mem_W0_data_1; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire [7:0] mem_W0_data_2; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire [7:0] mem_W0_data_3; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire [7:0] mem_W0_data_4; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire [7:0] mem_W0_data_5; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire [7:0] mem_W0_data_6; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire [7:0] mem_W0_data_7; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire  mem_W0_mask_0; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire  mem_W0_mask_1; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire  mem_W0_mask_2; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire  mem_W0_mask_3; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire  mem_W0_mask_4; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire  mem_W0_mask_5; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire  mem_W0_mask_6; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire  mem_W0_mask_7; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
  wire [27:0] _T; // @[SRAM.scala 37:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671941.4]
  wire  _T_1; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671942.4]
  wire  _T_2; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671943.4]
  wire  _T_3; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671944.4]
  wire  _T_4; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671945.4]
  wire  _T_5; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671946.4]
  wire  _T_6; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671947.4]
  wire  _T_7; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671948.4]
  wire  _T_8; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671949.4]
  wire  _T_9; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671950.4]
  wire  _T_10; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671951.4]
  wire  _T_11; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671952.4]
  wire  _T_12; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671953.4]
  wire  _T_13; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671954.4]
  wire  _T_14; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671955.4]
  wire  _T_15; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671956.4]
  wire  _T_16; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671957.4]
  wire  _T_17; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671958.4]
  wire  _T_18; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671959.4]
  wire  _T_19; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671960.4]
  wire  _T_20; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671961.4]
  wire  _T_21; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671962.4]
  wire  _T_22; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671963.4]
  wire  _T_23; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671964.4]
  wire  _T_24; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671965.4]
  wire  _T_25; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671966.4]
  wire  _T_26; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671967.4]
  wire  _T_27; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671968.4]
  wire  _T_28; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671969.4]
  wire [6:0] _T_34; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671975.4]
  wire [13:0] _T_41; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671982.4]
  wire [6:0] _T_47; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671988.4]
  wire [13:0] _T_54; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671995.4]
  wire [27:0] _T_55; // @[SRAM.scala 38:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671997.4]
  wire  _T_56; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671998.4]
  wire  _T_57; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671999.4]
  wire  _T_58; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672000.4]
  wire  _T_59; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672001.4]
  wire  _T_60; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672002.4]
  wire  _T_61; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672003.4]
  wire  _T_62; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672004.4]
  wire  _T_63; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672005.4]
  wire  _T_64; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672006.4]
  wire  _T_65; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672007.4]
  wire  _T_66; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672008.4]
  wire  _T_67; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672009.4]
  wire  _T_68; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672010.4]
  wire  _T_69; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672011.4]
  wire  _T_70; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672012.4]
  wire  _T_71; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672013.4]
  wire  _T_72; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672014.4]
  wire  _T_73; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672015.4]
  wire  _T_74; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672016.4]
  wire  _T_75; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672017.4]
  wire  _T_76; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672018.4]
  wire  _T_77; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672019.4]
  wire  _T_78; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672020.4]
  wire  _T_79; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672021.4]
  wire  _T_80; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672022.4]
  wire  _T_81; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672023.4]
  wire  _T_82; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672024.4]
  wire  _T_83; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672025.4]
  wire [6:0] _T_89; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672031.4]
  wire [13:0] _T_96; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672038.4]
  wire [6:0] _T_102; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672044.4]
  wire [13:0] _T_109; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672051.4]
  wire [31:0] _T_111; // @[Parameters.scala 121:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672054.4]
  wire [31:0] _T_112; // @[Parameters.scala 121:52:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672055.4]
  wire [31:0] _T_113; // @[Parameters.scala 121:52:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672056.4]
  wire  r_sel0; // @[Parameters.scala 121:67:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672057.4]
  wire [31:0] _T_115; // @[Parameters.scala 121:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672059.4]
  wire [31:0] _T_116; // @[Parameters.scala 121:52:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672060.4]
  wire [31:0] _T_117; // @[Parameters.scala 121:52:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672061.4]
  wire  w_sel0; // @[Parameters.scala 121:67:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672062.4]
  reg  w_full; // @[SRAM.scala 42:25:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672063.4]
  reg [31:0] _RAND_0;
  reg [3:0] w_id; // @[SRAM.scala 43:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672064.4]
  reg [31:0] _RAND_1;
  reg [15:0] w_user; // @[SRAM.scala 44:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672065.4]
  reg [31:0] _RAND_2;
  reg  r_sel1; // @[SRAM.scala 45:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672066.4]
  reg [31:0] _RAND_3;
  reg  w_sel1; // @[SRAM.scala 46:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672067.4]
  reg [31:0] _RAND_4;
  wire  _T_118; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672068.4]
  wire  _T_140; // @[SRAM.scala 64:50:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672138.4]
  wire  _T_141; // @[SRAM.scala 64:47:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672139.4]
  wire  in_awready; // @[SRAM.scala 64:32:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672140.4]
  wire  _T_119; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672072.4]
  reg  r_full; // @[SRAM.scala 71:25:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672150.4]
  reg [31:0] _RAND_5;
  reg [3:0] r_id; // @[SRAM.scala 72:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672151.4]
  reg [31:0] _RAND_6;
  reg [15:0] r_user; // @[SRAM.scala 73:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672152.4]
  reg [31:0] _RAND_7;
  wire  _T_147; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672153.4]
  wire  _T_156; // @[SRAM.scala 89:34:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672192.4]
  wire  in_arready; // @[SRAM.scala 89:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672193.4]
  wire  _T_148; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672157.4]
  reg  _T_154; // @[package.scala 75:91:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672177.4]
  reg [31:0] _RAND_8;
  reg [7:0] _T_155_0; // @[Reg.scala 11:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672179.4]
  reg [31:0] _RAND_9;
  reg [7:0] _T_155_1; // @[Reg.scala 11:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672179.4]
  reg [31:0] _RAND_10;
  reg [7:0] _T_155_2; // @[Reg.scala 11:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672179.4]
  reg [31:0] _RAND_11;
  reg [7:0] _T_155_3; // @[Reg.scala 11:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672179.4]
  reg [31:0] _RAND_12;
  reg [7:0] _T_155_4; // @[Reg.scala 11:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672179.4]
  reg [31:0] _RAND_13;
  reg [7:0] _T_155_5; // @[Reg.scala 11:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672179.4]
  reg [31:0] _RAND_14;
  reg [7:0] _T_155_6; // @[Reg.scala 11:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672179.4]
  reg [31:0] _RAND_15;
  reg [7:0] _T_155_7; // @[Reg.scala 11:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672179.4]
  reg [31:0] _RAND_16;
  wire [7:0] _GEN_49; // @[Reg.scala 12:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672180.4]
  wire [7:0] _GEN_50; // @[Reg.scala 12:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672180.4]
  wire [7:0] _GEN_51; // @[Reg.scala 12:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672180.4]
  wire [7:0] _GEN_52; // @[Reg.scala 12:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672180.4]
  wire [7:0] _GEN_53; // @[Reg.scala 12:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672180.4]
  wire [7:0] _GEN_54; // @[Reg.scala 12:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672180.4]
  wire [7:0] _GEN_55; // @[Reg.scala 12:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672180.4]
  wire [7:0] _GEN_56; // @[Reg.scala 12:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672180.4]
  wire [31:0] _T_162; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672201.4]
  wire [31:0] _T_165; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672204.4]
  mem mem ( // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4]
    .R0_addr(mem_R0_addr),
    .R0_en(mem_R0_en),
    .R0_clk(mem_R0_clk),
    .R0_data_0(mem_R0_data_0),
    .R0_data_1(mem_R0_data_1),
    .R0_data_2(mem_R0_data_2),
    .R0_data_3(mem_R0_data_3),
    .R0_data_4(mem_R0_data_4),
    .R0_data_5(mem_R0_data_5),
    .R0_data_6(mem_R0_data_6),
    .R0_data_7(mem_R0_data_7),
    .W0_addr(mem_W0_addr),
    .W0_en(mem_W0_en),
    .W0_clk(mem_W0_clk),
    .W0_data_0(mem_W0_data_0),
    .W0_data_1(mem_W0_data_1),
    .W0_data_2(mem_W0_data_2),
    .W0_data_3(mem_W0_data_3),
    .W0_data_4(mem_W0_data_4),
    .W0_data_5(mem_W0_data_5),
    .W0_data_6(mem_W0_data_6),
    .W0_data_7(mem_W0_data_7),
    .W0_mask_0(mem_W0_mask_0),
    .W0_mask_1(mem_W0_mask_1),
    .W0_mask_2(mem_W0_mask_2),
    .W0_mask_3(mem_W0_mask_3),
    .W0_mask_4(mem_W0_mask_4),
    .W0_mask_5(mem_W0_mask_5),
    .W0_mask_6(mem_W0_mask_6),
    .W0_mask_7(mem_W0_mask_7)
  );
  assign _T = auto_in_araddr[30:3]; // @[SRAM.scala 37:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671941.4]
  assign _T_1 = _T[0]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671942.4]
  assign _T_2 = _T[1]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671943.4]
  assign _T_3 = _T[2]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671944.4]
  assign _T_4 = _T[3]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671945.4]
  assign _T_5 = _T[4]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671946.4]
  assign _T_6 = _T[5]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671947.4]
  assign _T_7 = _T[6]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671948.4]
  assign _T_8 = _T[7]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671949.4]
  assign _T_9 = _T[8]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671950.4]
  assign _T_10 = _T[9]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671951.4]
  assign _T_11 = _T[10]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671952.4]
  assign _T_12 = _T[11]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671953.4]
  assign _T_13 = _T[12]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671954.4]
  assign _T_14 = _T[13]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671955.4]
  assign _T_15 = _T[14]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671956.4]
  assign _T_16 = _T[15]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671957.4]
  assign _T_17 = _T[16]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671958.4]
  assign _T_18 = _T[17]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671959.4]
  assign _T_19 = _T[18]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671960.4]
  assign _T_20 = _T[19]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671961.4]
  assign _T_21 = _T[20]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671962.4]
  assign _T_22 = _T[21]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671963.4]
  assign _T_23 = _T[22]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671964.4]
  assign _T_24 = _T[23]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671965.4]
  assign _T_25 = _T[24]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671966.4]
  assign _T_26 = _T[25]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671967.4]
  assign _T_27 = _T[26]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671968.4]
  assign _T_28 = _T[27]; // @[SRAM.scala 37:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671969.4]
  assign _T_34 = {_T_7,_T_6,_T_5,_T_4,_T_3,_T_2,_T_1}; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671975.4]
  assign _T_41 = {_T_14,_T_13,_T_12,_T_11,_T_10,_T_9,_T_8,_T_34}; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671982.4]
  assign _T_47 = {_T_21,_T_20,_T_19,_T_18,_T_17,_T_16,_T_15}; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671988.4]
  assign _T_54 = {_T_28,_T_27,_T_26,_T_25,_T_24,_T_23,_T_22,_T_47}; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671995.4]
  assign _T_55 = auto_in_awaddr[30:3]; // @[SRAM.scala 38:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671997.4]
  assign _T_56 = _T_55[0]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671998.4]
  assign _T_57 = _T_55[1]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671999.4]
  assign _T_58 = _T_55[2]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672000.4]
  assign _T_59 = _T_55[3]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672001.4]
  assign _T_60 = _T_55[4]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672002.4]
  assign _T_61 = _T_55[5]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672003.4]
  assign _T_62 = _T_55[6]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672004.4]
  assign _T_63 = _T_55[7]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672005.4]
  assign _T_64 = _T_55[8]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672006.4]
  assign _T_65 = _T_55[9]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672007.4]
  assign _T_66 = _T_55[10]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672008.4]
  assign _T_67 = _T_55[11]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672009.4]
  assign _T_68 = _T_55[12]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672010.4]
  assign _T_69 = _T_55[13]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672011.4]
  assign _T_70 = _T_55[14]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672012.4]
  assign _T_71 = _T_55[15]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672013.4]
  assign _T_72 = _T_55[16]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672014.4]
  assign _T_73 = _T_55[17]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672015.4]
  assign _T_74 = _T_55[18]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672016.4]
  assign _T_75 = _T_55[19]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672017.4]
  assign _T_76 = _T_55[20]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672018.4]
  assign _T_77 = _T_55[21]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672019.4]
  assign _T_78 = _T_55[22]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672020.4]
  assign _T_79 = _T_55[23]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672021.4]
  assign _T_80 = _T_55[24]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672022.4]
  assign _T_81 = _T_55[25]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672023.4]
  assign _T_82 = _T_55[26]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672024.4]
  assign _T_83 = _T_55[27]; // @[SRAM.scala 38:73:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672025.4]
  assign _T_89 = {_T_62,_T_61,_T_60,_T_59,_T_58,_T_57,_T_56}; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672031.4]
  assign _T_96 = {_T_69,_T_68,_T_67,_T_66,_T_65,_T_64,_T_63,_T_89}; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672038.4]
  assign _T_102 = {_T_76,_T_75,_T_74,_T_73,_T_72,_T_71,_T_70}; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672044.4]
  assign _T_109 = {_T_83,_T_82,_T_81,_T_80,_T_79,_T_78,_T_77,_T_102}; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672051.4]
  assign _T_111 = {1'b0,$signed(auto_in_araddr)}; // @[Parameters.scala 121:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672054.4]
  assign _T_112 = $signed(_T_111) & $signed(-32'sh80000000); // @[Parameters.scala 121:52:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672055.4]
  assign _T_113 = $signed(_T_112); // @[Parameters.scala 121:52:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672056.4]
  assign r_sel0 = $signed(_T_113) == $signed(32'sh0); // @[Parameters.scala 121:67:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672057.4]
  assign _T_115 = {1'b0,$signed(auto_in_awaddr)}; // @[Parameters.scala 121:49:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672059.4]
  assign _T_116 = $signed(_T_115) & $signed(-32'sh80000000); // @[Parameters.scala 121:52:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672060.4]
  assign _T_117 = $signed(_T_116); // @[Parameters.scala 121:52:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672061.4]
  assign w_sel0 = $signed(_T_117) == $signed(32'sh0); // @[Parameters.scala 121:67:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672062.4]
  assign _T_118 = auto_in_bready & w_full; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672068.4]
  assign _T_140 = w_full == 1'h0; // @[SRAM.scala 64:50:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672138.4]
  assign _T_141 = auto_in_bready | _T_140; // @[SRAM.scala 64:47:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672139.4]
  assign in_awready = auto_in_wvalid & _T_141; // @[SRAM.scala 64:32:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672140.4]
  assign _T_119 = in_awready & auto_in_awvalid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672072.4]
  assign _T_147 = auto_in_rready & r_full; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672153.4]
  assign _T_156 = r_full == 1'h0; // @[SRAM.scala 89:34:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672192.4]
  assign in_arready = auto_in_rready | _T_156; // @[SRAM.scala 89:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672193.4]
  assign _T_148 = in_arready & auto_in_arvalid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672157.4]
  assign _GEN_49 = _T_154 ? mem_R0_data_0 : _T_155_0; // @[Reg.scala 12:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672180.4]
  assign _GEN_50 = _T_154 ? mem_R0_data_1 : _T_155_1; // @[Reg.scala 12:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672180.4]
  assign _GEN_51 = _T_154 ? mem_R0_data_2 : _T_155_2; // @[Reg.scala 12:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672180.4]
  assign _GEN_52 = _T_154 ? mem_R0_data_3 : _T_155_3; // @[Reg.scala 12:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672180.4]
  assign _GEN_53 = _T_154 ? mem_R0_data_4 : _T_155_4; // @[Reg.scala 12:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672180.4]
  assign _GEN_54 = _T_154 ? mem_R0_data_5 : _T_155_5; // @[Reg.scala 12:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672180.4]
  assign _GEN_55 = _T_154 ? mem_R0_data_6 : _T_155_6; // @[Reg.scala 12:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672180.4]
  assign _GEN_56 = _T_154 ? mem_R0_data_7 : _T_155_7; // @[Reg.scala 12:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672180.4]
  assign _T_162 = {_GEN_52,_GEN_51,_GEN_50,_GEN_49}; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672201.4]
  assign _T_165 = {_GEN_56,_GEN_55,_GEN_54,_GEN_53}; // @[Cat.scala 30:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672204.4]
  assign auto_in_awready = auto_in_wvalid & _T_141; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671939.4]
  assign auto_in_wready = auto_in_awvalid & _T_141; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671939.4]
  assign auto_in_bvalid = w_full; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671939.4]
  assign auto_in_bid = w_id; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671939.4]
  assign auto_in_bresp = w_sel1 ? 2'h0 : 2'h3; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671939.4]
  assign auto_in_buser = w_user; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671939.4]
  assign auto_in_arready = auto_in_rready | _T_156; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671939.4]
  assign auto_in_rvalid = r_full; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671939.4]
  assign auto_in_rid = r_id; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671939.4]
  assign auto_in_rdata = {_T_165,_T_162}; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671939.4]
  assign auto_in_rresp = r_sel1 ? 2'h0 : 2'h3; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671939.4]
  assign auto_in_ruser = r_user; // @[LazyModule.scala 173:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671939.4]
  assign mem_R0_addr = {_T_54,_T_41}; // @[package.scala 75:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672175.6]
  assign mem_R0_en = in_arready & auto_in_arvalid; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4 package.scala 75:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672174.6]
  assign mem_R0_clk = clock; // @[package.scala 75:58:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672175.6]
  assign mem_W0_addr = {_T_109,_T_96}; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672111.6]
  assign mem_W0_en = _T_119 & w_sel0; // @[DescribedSRAM.scala 23:21:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@671940.4 :freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672111.6]
  assign mem_W0_clk = clock; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672111.6]
  assign mem_W0_data_0 = auto_in_wdata[7:0]; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672113.8]
  assign mem_W0_data_1 = auto_in_wdata[15:8]; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672116.8]
  assign mem_W0_data_2 = auto_in_wdata[23:16]; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672119.8]
  assign mem_W0_data_3 = auto_in_wdata[31:24]; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672122.8]
  assign mem_W0_data_4 = auto_in_wdata[39:32]; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672125.8]
  assign mem_W0_data_5 = auto_in_wdata[47:40]; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672128.8]
  assign mem_W0_data_6 = auto_in_wdata[55:48]; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672131.8]
  assign mem_W0_data_7 = auto_in_wdata[63:56]; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672134.8]
  assign mem_W0_mask_0 = auto_in_wstrb[0]; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672111.6 :freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672113.8]
  assign mem_W0_mask_1 = auto_in_wstrb[1]; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672111.6 :freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672116.8]
  assign mem_W0_mask_2 = auto_in_wstrb[2]; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672111.6 :freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672119.8]
  assign mem_W0_mask_3 = auto_in_wstrb[3]; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672111.6 :freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672122.8]
  assign mem_W0_mask_4 = auto_in_wstrb[4]; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672111.6 :freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672125.8]
  assign mem_W0_mask_5 = auto_in_wstrb[5]; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672111.6 :freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672128.8]
  assign mem_W0_mask_6 = auto_in_wstrb[6]; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672111.6 :freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672131.8]
  assign mem_W0_mask_7 = auto_in_wstrb[7]; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672111.6 :freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672134.8]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  w_full = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  w_id = _RAND_1[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  w_user = _RAND_2[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  r_sel1 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  w_sel1 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  r_full = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  r_id = _RAND_6[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  r_user = _RAND_7[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_154 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_155_0 = _RAND_9[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_155_1 = _RAND_10[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_155_2 = _RAND_11[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_155_3 = _RAND_12[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_155_4 = _RAND_13[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_155_5 = _RAND_14[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_155_6 = _RAND_15[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_155_7 = _RAND_16[7:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      w_full <= 1'h0;
    end else begin
      if (_T_119) begin
        w_full <= 1'h1;
      end else begin
        if (_T_118) begin
          w_full <= 1'h0;
        end
      end
    end
    if (_T_119) begin
      w_id <= auto_in_awid;
    end
    if (_T_119) begin
      w_user <= auto_in_awuser;
    end
    if (_T_148) begin
      r_sel1 <= r_sel0;
    end
    if (_T_119) begin
      w_sel1 <= w_sel0;
    end
    if (reset) begin
      r_full <= 1'h0;
    end else begin
      if (_T_148) begin
        r_full <= 1'h1;
      end else begin
        if (_T_147) begin
          r_full <= 1'h0;
        end
      end
    end
    if (_T_148) begin
      r_id <= auto_in_arid;
    end
    if (_T_148) begin
      r_user <= auto_in_aruser;
    end
    _T_154 <= in_arready & auto_in_arvalid;
    if (_T_154) begin
      _T_155_0 <= mem_R0_data_0;
    end
    if (_T_154) begin
      _T_155_1 <= mem_R0_data_1;
    end
    if (_T_154) begin
      _T_155_2 <= mem_R0_data_2;
    end
    if (_T_154) begin
      _T_155_3 <= mem_R0_data_3;
    end
    if (_T_154) begin
      _T_155_4 <= mem_R0_data_4;
    end
    if (_T_154) begin
      _T_155_5 <= mem_R0_data_5;
    end
    if (_T_154) begin
      _T_155_6 <= mem_R0_data_6;
    end
    if (_T_154) begin
      _T_155_7 <= mem_R0_data_7;
    end
  end
endmodule
module mem(
  input  [27:0] R0_addr,
  input         R0_en,
  input         R0_clk,
  output [7:0]  R0_data_0,
  output [7:0]  R0_data_1,
  output [7:0]  R0_data_2,
  output [7:0]  R0_data_3,
  output [7:0]  R0_data_4,
  output [7:0]  R0_data_5,
  output [7:0]  R0_data_6,
  output [7:0]  R0_data_7,
  input  [27:0] W0_addr,
  input         W0_en,
  input         W0_clk,
  input  [7:0]  W0_data_0,
  input  [7:0]  W0_data_1,
  input  [7:0]  W0_data_2,
  input  [7:0]  W0_data_3,
  input  [7:0]  W0_data_4,
  input  [7:0]  W0_data_5,
  input  [7:0]  W0_data_6,
  input  [7:0]  W0_data_7,
  input         W0_mask_0,
  input         W0_mask_1,
  input         W0_mask_2,
  input         W0_mask_3,
  input         W0_mask_4,
  input         W0_mask_5,
  input         W0_mask_6,
  input         W0_mask_7
);
  wire [27:0] mem_ext_R0_addr;
  wire  mem_ext_R0_en;
  wire  mem_ext_R0_clk;
  wire [63:0] mem_ext_R0_data;
  wire [27:0] mem_ext_W0_addr;
  wire  mem_ext_W0_en;
  wire  mem_ext_W0_clk;
  wire [63:0] mem_ext_W0_data;
  wire [7:0] mem_ext_W0_mask;
  wire [7:0] _GEN_0;
  wire [7:0] _GEN_1;
  wire [7:0] _GEN_2;
  wire [7:0] _GEN_3;
  wire [7:0] _GEN_4;
  wire [7:0] _GEN_5;
  wire [7:0] _GEN_6;
  wire [7:0] _GEN_7;
  wire [7:0] _GEN_8;
  wire [7:0] _GEN_9;
  wire [7:0] _GEN_10;
  wire [7:0] _GEN_11;
  wire [7:0] _GEN_14;
  wire [7:0] _GEN_15;
  wire [7:0] _GEN_16;
  wire [7:0] _GEN_17;
  wire [31:0] _GEN_20;
  wire [31:0] _GEN_21;
  wire  _GEN_22;
  wire  _GEN_23;
  wire  _GEN_24;
  wire  _GEN_25;
  wire  _GEN_28;
  wire  _GEN_29;
  wire  _GEN_30;
  wire  _GEN_31;
  wire [3:0] _GEN_34;
  wire [3:0] _GEN_35;
  mem_ext mem_ext (
    .R0_addr(mem_ext_R0_addr),
    .R0_en(mem_ext_R0_en),
    .R0_clk(mem_ext_R0_clk),
    .R0_data(mem_ext_R0_data),
    .W0_addr(mem_ext_W0_addr),
    .W0_en(mem_ext_W0_en),
    .W0_clk(mem_ext_W0_clk),
    .W0_data(mem_ext_W0_data),
    .W0_mask(mem_ext_W0_mask)
  );
  assign mem_ext_R0_clk = R0_clk;
  assign mem_ext_R0_en = R0_en;
  assign mem_ext_R0_addr = R0_addr;
  assign _GEN_0 = mem_ext_R0_data[7:0];
  assign R0_data_0 = $unsigned(_GEN_0);
  assign _GEN_1 = mem_ext_R0_data[15:8];
  assign R0_data_1 = $unsigned(_GEN_1);
  assign _GEN_2 = mem_ext_R0_data[23:16];
  assign R0_data_2 = $unsigned(_GEN_2);
  assign _GEN_3 = mem_ext_R0_data[31:24];
  assign R0_data_3 = $unsigned(_GEN_3);
  assign _GEN_4 = mem_ext_R0_data[39:32];
  assign R0_data_4 = $unsigned(_GEN_4);
  assign _GEN_5 = mem_ext_R0_data[47:40];
  assign R0_data_5 = $unsigned(_GEN_5);
  assign _GEN_6 = mem_ext_R0_data[55:48];
  assign R0_data_6 = $unsigned(_GEN_6);
  assign _GEN_7 = mem_ext_R0_data[63:56];
  assign R0_data_7 = $unsigned(_GEN_7);
  assign mem_ext_W0_clk = W0_clk;
  assign mem_ext_W0_en = W0_en;
  assign mem_ext_W0_addr = W0_addr;
  assign _GEN_8 = $unsigned(W0_data_7);
  assign _GEN_9 = $unsigned(W0_data_6);
  assign _GEN_10 = $unsigned(W0_data_5);
  assign _GEN_11 = $unsigned(W0_data_4);
  assign _GEN_14 = $unsigned(W0_data_3);
  assign _GEN_15 = $unsigned(W0_data_2);
  assign _GEN_16 = $unsigned(W0_data_1);
  assign _GEN_17 = $unsigned(W0_data_0);
  assign _GEN_20 = {_GEN_8,_GEN_9,_GEN_10,_GEN_11};
  assign _GEN_21 = {_GEN_14,_GEN_15,_GEN_16,_GEN_17};
  assign mem_ext_W0_data = {_GEN_20,_GEN_21};
  assign _GEN_22 = $unsigned(W0_mask_7);
  assign _GEN_23 = $unsigned(W0_mask_6);
  assign _GEN_24 = $unsigned(W0_mask_5);
  assign _GEN_25 = $unsigned(W0_mask_4);
  assign _GEN_28 = $unsigned(W0_mask_3);
  assign _GEN_29 = $unsigned(W0_mask_2);
  assign _GEN_30 = $unsigned(W0_mask_1);
  assign _GEN_31 = $unsigned(W0_mask_0);
  assign _GEN_34 = {_GEN_22,_GEN_23,_GEN_24,_GEN_25};
  assign _GEN_35 = {_GEN_28,_GEN_29,_GEN_30,_GEN_31};
  assign mem_ext_W0_mask = {_GEN_34,_GEN_35};
endmodule
module mem_ext(
  input W0_clk,
  input [27:0] W0_addr,
  input W0_en,
  input [63:0] W0_data,
  input [7:0] W0_mask,
  input R0_clk,
  input [27:0] R0_addr,
  input R0_en,
  output [63:0] R0_data
);

  reg reg_R0_ren;
  reg [27:0] reg_R0_addr;
  reg [63:0] ram [65536:0];
  `ifdef RANDOMIZE_MEM_INIT
    integer initvar;
    initial begin
      #`RANDOMIZE_DELAY begin end
      for (initvar = 0; initvar < 268435456; initvar = initvar+1)
        ram[initvar] = {2 {$random}};
      reg_R0_addr = {1 {$random}};
    end
  `endif
  integer i;
  always @(posedge R0_clk)
    reg_R0_ren <= R0_en;
  always @(posedge R0_clk)
    if (R0_en) reg_R0_addr <= R0_addr;
  always @(posedge W0_clk)
    if (W0_en) begin
      if (W0_mask[0]) ram[W0_addr][7:0] <= W0_data[7:0];
      if (W0_mask[1]) ram[W0_addr][15:8] <= W0_data[15:8];
      if (W0_mask[2]) ram[W0_addr][23:16] <= W0_data[23:16];
      if (W0_mask[3]) ram[W0_addr][31:24] <= W0_data[31:24];
      if (W0_mask[4]) ram[W0_addr][39:32] <= W0_data[39:32];
      if (W0_mask[5]) ram[W0_addr][47:40] <= W0_data[47:40];
      if (W0_mask[6]) ram[W0_addr][55:48] <= W0_data[55:48];
      if (W0_mask[7]) ram[W0_addr][63:56] <= W0_data[63:56];
    end
  `ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [63:0] R0_random;
  `ifdef RANDOMIZE_MEM_INIT
    initial begin
      #`RANDOMIZE_DELAY begin end
      R0_random = {$random, $random};
      reg_R0_ren = R0_random[0];
    end
  `endif
  always @(posedge R0_clk) R0_random <= {$random, $random};
  assign R0_data = reg_R0_ren ? ram[reg_R0_addr] : R0_random[63:0];
  `else
  assign R0_data = ram[reg_R0_addr];
  `endif

endmodule

module Queue_46( // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44151.2]
  input         clock, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44152.4]
  input         reset, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44153.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44154.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44154.4]
  input  [63:0] io_enq_bits_data, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44154.4]
  input  [7:0]  io_enq_bits_strb, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44154.4]
  input         io_enq_bits_last, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44154.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44154.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44154.4]
  output [63:0] io_deq_bits_data, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44154.4]
  output [7:0]  io_deq_bits_strb, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44154.4]
  output        io_deq_bits_last // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44154.4]
);
  reg [63:0] _T_data [0:0]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  reg [63:0] _RAND_0;
  wire [63:0] _T_data__T_14_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  wire  _T_data__T_14_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  wire [63:0] _T_data__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  wire  _T_data__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  wire  _T_data__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  wire  _T_data__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  reg [7:0] _T_strb [0:0]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  reg [31:0] _RAND_1;
  wire [7:0] _T_strb__T_14_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  wire  _T_strb__T_14_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  wire [7:0] _T_strb__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  wire  _T_strb__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  wire  _T_strb__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  wire  _T_strb__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  reg  _T_last [0:0]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  reg [31:0] _RAND_2;
  wire  _T_last__T_14_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  wire  _T_last__T_14_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  wire  _T_last__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  wire  _T_last__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  wire  _T_last__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  wire  _T_last__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  reg  _T_1; // @[Decoupled.scala 218:35:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44157.4]
  reg [31:0] _RAND_3;
  wire  _T_3; // @[Decoupled.scala 221:36:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44159.4]
  wire  _T_6; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44162.4]
  wire  _T_8; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44165.4]
  wire  _GEN_9; // @[Decoupled.scala 246:27:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44196.6]
  wire  _GEN_14; // @[Decoupled.scala 243:18:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44191.4]
  wire  _GEN_13; // @[Decoupled.scala 243:18:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44191.4]
  wire  _T_11; // @[Decoupled.scala 233:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44176.4]
  wire  _T_12; // @[Decoupled.scala 237:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44180.4]
  assign _T_data__T_14_addr = 1'h0;
  assign _T_data__T_14_data = _T_data[_T_data__T_14_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  assign _T_data__T_10_data = io_enq_bits_data;
  assign _T_data__T_10_addr = 1'h0;
  assign _T_data__T_10_mask = 1'h1;
  assign _T_data__T_10_en = _T_3 ? _GEN_9 : _T_6;
  assign _T_strb__T_14_addr = 1'h0;
  assign _T_strb__T_14_data = _T_strb[_T_strb__T_14_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  assign _T_strb__T_10_data = io_enq_bits_strb;
  assign _T_strb__T_10_addr = 1'h0;
  assign _T_strb__T_10_mask = 1'h1;
  assign _T_strb__T_10_en = _T_3 ? _GEN_9 : _T_6;
  assign _T_last__T_14_addr = 1'h0;
  assign _T_last__T_14_data = _T_last[_T_last__T_14_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
  assign _T_last__T_10_data = io_enq_bits_last;
  assign _T_last__T_10_addr = 1'h0;
  assign _T_last__T_10_mask = 1'h1;
  assign _T_last__T_10_en = _T_3 ? _GEN_9 : _T_6;
  assign _T_3 = _T_1 == 1'h0; // @[Decoupled.scala 221:36:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44159.4]
  assign _T_6 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44162.4]
  assign _T_8 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44165.4]
  assign _GEN_9 = io_deq_ready ? 1'h0 : _T_6; // @[Decoupled.scala 246:27:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44196.6]
  assign _GEN_14 = _T_3 ? _GEN_9 : _T_6; // @[Decoupled.scala 243:18:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44191.4]
  assign _GEN_13 = _T_3 ? 1'h0 : _T_8; // @[Decoupled.scala 243:18:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44191.4]
  assign _T_11 = _GEN_14 != _GEN_13; // @[Decoupled.scala 233:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44176.4]
  assign _T_12 = _T_3 == 1'h0; // @[Decoupled.scala 237:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44180.4]
  assign io_enq_ready = _T_1 == 1'h0; // @[Decoupled.scala 238:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44183.4]
  assign io_deq_valid = io_enq_valid ? 1'h1 : _T_12; // @[Decoupled.scala 237:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44181.4 Decoupled.scala 242:40:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44189.6]
  assign io_deq_bits_data = _T_3 ? io_enq_bits_data : _T_data__T_14_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44187.4 Decoupled.scala 244:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44194.6]
  assign io_deq_bits_strb = _T_3 ? io_enq_bits_strb : _T_strb__T_14_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44186.4 Decoupled.scala 244:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44193.6]
  assign io_deq_bits_last = _T_3 ? io_enq_bits_last : _T_last__T_14_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44185.4 Decoupled.scala 244:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44192.6]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _T_data[initvar] = _RAND_0[63:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _T_strb[initvar] = _RAND_1[7:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _T_last[initvar] = _RAND_2[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_1 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if(_T_data__T_10_en & _T_data__T_10_mask) begin
      _T_data[_T_data__T_10_addr] <= _T_data__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
    end
    if(_T_strb__T_10_en & _T_strb__T_10_mask) begin
      _T_strb[_T_strb__T_10_addr] <= _T_strb__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
    end
    if(_T_last__T_10_en & _T_last__T_10_mask) begin
      _T_last[_T_last__T_10_addr] <= _T_last__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@44156.4]
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else begin
      if (_T_11) begin
        if (_T_3) begin
          if (io_deq_ready) begin
            _T_1 <= 1'h0;
          end else begin
            _T_1 <= _T_6;
          end
        end else begin
          _T_1 <= _T_6;
        end
      end
    end
  end
endmodule
module Queue_49( // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45910.2]
  input         clock, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45911.4]
  input         reset, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45912.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45913.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45913.4]
  input  [63:0] io_enq_bits_data, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45913.4]
  input  [7:0]  io_enq_bits_strb, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45913.4]
  input         io_enq_bits_last, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45913.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45913.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45913.4]
  output [63:0] io_deq_bits_data, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45913.4]
  output [7:0]  io_deq_bits_strb, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45913.4]
  output        io_deq_bits_last // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45913.4]
);
  reg [63:0] _T_data [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  reg [63:0] _RAND_0;
  wire [63:0] _T_data__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  wire  _T_data__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  wire [63:0] _T_data__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  wire  _T_data__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  wire  _T_data__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  wire  _T_data__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  reg [7:0] _T_strb [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  reg [31:0] _RAND_1;
  wire [7:0] _T_strb__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  wire  _T_strb__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  wire [7:0] _T_strb__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  wire  _T_strb__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  wire  _T_strb__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  wire  _T_strb__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  reg  _T_last [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  reg [31:0] _RAND_2;
  wire  _T_last__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  wire  _T_last__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  wire  _T_last__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  wire  _T_last__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  wire  _T_last__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  wire  _T_last__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  reg  value; // @[Counter.scala 26:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45916.4]
  reg [31:0] _RAND_3;
  reg  value_1; // @[Counter.scala 26:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45917.4]
  reg [31:0] _RAND_4;
  reg  _T_1; // @[Decoupled.scala 218:35:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45918.4]
  reg [31:0] _RAND_5;
  wire  _T_2; // @[Decoupled.scala 220:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45919.4]
  wire  _T_3; // @[Decoupled.scala 221:36:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45920.4]
  wire  _T_4; // @[Decoupled.scala 221:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45921.4]
  wire  _T_5; // @[Decoupled.scala 222:32:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45922.4]
  wire  _T_6; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45923.4]
  wire  _T_8; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45926.4]
  wire  _T_12; // @[Counter.scala 35:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45936.6]
  wire  _T_14; // @[Counter.scala 35:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45942.6]
  wire  _T_15; // @[Decoupled.scala 233:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45945.4]
  assign _T_data__T_18_addr = value_1;
  assign _T_data__T_18_data = _T_data[_T_data__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  assign _T_data__T_10_data = io_enq_bits_data;
  assign _T_data__T_10_addr = value;
  assign _T_data__T_10_mask = 1'h1;
  assign _T_data__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_strb__T_18_addr = value_1;
  assign _T_strb__T_18_data = _T_strb[_T_strb__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  assign _T_strb__T_10_data = io_enq_bits_strb;
  assign _T_strb__T_10_addr = value;
  assign _T_strb__T_10_mask = 1'h1;
  assign _T_strb__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_last__T_18_addr = value_1;
  assign _T_last__T_18_data = _T_last[_T_last__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
  assign _T_last__T_10_data = io_enq_bits_last;
  assign _T_last__T_10_addr = value;
  assign _T_last__T_10_mask = 1'h1;
  assign _T_last__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_2 = value == value_1; // @[Decoupled.scala 220:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45919.4]
  assign _T_3 = _T_1 == 1'h0; // @[Decoupled.scala 221:36:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45920.4]
  assign _T_4 = _T_2 & _T_3; // @[Decoupled.scala 221:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45921.4]
  assign _T_5 = _T_2 & _T_1; // @[Decoupled.scala 222:32:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45922.4]
  assign _T_6 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45923.4]
  assign _T_8 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45926.4]
  assign _T_12 = value + 1'h1; // @[Counter.scala 35:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45936.6]
  assign _T_14 = value_1 + 1'h1; // @[Counter.scala 35:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45942.6]
  assign _T_15 = _T_6 != _T_8; // @[Decoupled.scala 233:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45945.4]
  assign io_enq_ready = _T_5 == 1'h0; // @[Decoupled.scala 238:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45952.4]
  assign io_deq_valid = _T_4 == 1'h0; // @[Decoupled.scala 237:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45950.4]
  assign io_deq_bits_data = _T_data__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45956.4]
  assign io_deq_bits_strb = _T_strb__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45955.4]
  assign io_deq_bits_last = _T_last__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45954.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_data[initvar] = _RAND_0[63:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_strb[initvar] = _RAND_1[7:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_last[initvar] = _RAND_2[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  value = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  value_1 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_1 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if(_T_data__T_10_en & _T_data__T_10_mask) begin
      _T_data[_T_data__T_10_addr] <= _T_data__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
    end
    if(_T_strb__T_10_en & _T_strb__T_10_mask) begin
      _T_strb[_T_strb__T_10_addr] <= _T_strb__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
    end
    if(_T_last__T_10_en & _T_last__T_10_mask) begin
      _T_last[_T_last__T_10_addr] <= _T_last__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@45915.4]
    end
    if (reset) begin
      value <= 1'h0;
    end else begin
      if (_T_6) begin
        value <= _T_12;
      end
    end
    if (reset) begin
      value_1 <= 1'h0;
    end else begin
      if (_T_8) begin
        value_1 <= _T_14;
      end
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else begin
      if (_T_15) begin
        _T_1 <= _T_6;
      end
    end
  end
endmodule
module Queue_162( // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672210.2]
  input         clock, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672211.4]
  input         reset, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672212.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672213.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672213.4]
  input  [3:0]  io_enq_bits_id, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672213.4]
  input  [30:0] io_enq_bits_addr, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672213.4]
  input         io_enq_bits_user, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672213.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672213.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672213.4]
  output [3:0]  io_deq_bits_id, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672213.4]
  output [30:0] io_deq_bits_addr, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672213.4]
  output        io_deq_bits_user // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672213.4]
);
  reg [3:0] _T_id [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  reg [31:0] _RAND_0;
  wire [3:0] _T_id__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  wire  _T_id__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  wire [3:0] _T_id__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  wire  _T_id__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  wire  _T_id__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  wire  _T_id__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  reg [30:0] _T_addr [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  reg [31:0] _RAND_1;
  wire [30:0] _T_addr__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  wire  _T_addr__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  wire [30:0] _T_addr__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  wire  _T_addr__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  wire  _T_addr__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  wire  _T_addr__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  reg  _T_user [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  reg [31:0] _RAND_2;
  wire  _T_user__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  wire  _T_user__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  wire  _T_user__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  wire  _T_user__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  wire  _T_user__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  wire  _T_user__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  reg  value; // @[Counter.scala 26:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672216.4]
  reg [31:0] _RAND_3;
  reg  value_1; // @[Counter.scala 26:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672217.4]
  reg [31:0] _RAND_4;
  reg  _T_1; // @[Decoupled.scala 218:35:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672218.4]
  reg [31:0] _RAND_5;
  wire  _T_2; // @[Decoupled.scala 220:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672219.4]
  wire  _T_3; // @[Decoupled.scala 221:36:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672220.4]
  wire  _T_4; // @[Decoupled.scala 221:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672221.4]
  wire  _T_5; // @[Decoupled.scala 222:32:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672222.4]
  wire  _T_6; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672223.4]
  wire  _T_8; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672226.4]
  wire  _T_12; // @[Counter.scala 35:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672244.6]
  wire  _T_14; // @[Counter.scala 35:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672250.6]
  wire  _T_15; // @[Decoupled.scala 233:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672253.4]
  assign _T_id__T_18_addr = value_1;
  assign _T_id__T_18_data = _T_id[_T_id__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  assign _T_id__T_10_data = io_enq_bits_id;
  assign _T_id__T_10_addr = value;
  assign _T_id__T_10_mask = 1'h1;
  assign _T_id__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_addr__T_18_addr = value_1;
  assign _T_addr__T_18_data = _T_addr[_T_addr__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  assign _T_addr__T_10_data = io_enq_bits_addr;
  assign _T_addr__T_10_addr = value;
  assign _T_addr__T_10_mask = 1'h1;
  assign _T_addr__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_user__T_18_addr = value_1;
  assign _T_user__T_18_data = _T_user[_T_user__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
  assign _T_user__T_10_data = io_enq_bits_user;
  assign _T_user__T_10_addr = value;
  assign _T_user__T_10_mask = 1'h1;
  assign _T_user__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_2 = value == value_1; // @[Decoupled.scala 220:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672219.4]
  assign _T_3 = _T_1 == 1'h0; // @[Decoupled.scala 221:36:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672220.4]
  assign _T_4 = _T_2 & _T_3; // @[Decoupled.scala 221:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672221.4]
  assign _T_5 = _T_2 & _T_1; // @[Decoupled.scala 222:32:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672222.4]
  assign _T_6 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672223.4]
  assign _T_8 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672226.4]
  assign _T_12 = value + 1'h1; // @[Counter.scala 35:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672244.6]
  assign _T_14 = value_1 + 1'h1; // @[Counter.scala 35:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672250.6]
  assign _T_15 = _T_6 != _T_8; // @[Decoupled.scala 233:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672253.4]
  assign io_enq_ready = _T_5 == 1'h0; // @[Decoupled.scala 238:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672260.4]
  assign io_deq_valid = _T_4 == 1'h0; // @[Decoupled.scala 237:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672258.4]
  assign io_deq_bits_id = _T_id__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672272.4]
  assign io_deq_bits_addr = _T_addr__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672271.4]
  assign io_deq_bits_user = _T_user__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672263.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_id[initvar] = _RAND_0[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_addr[initvar] = _RAND_1[30:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_user[initvar] = _RAND_2[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  value = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  value_1 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_1 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if(_T_id__T_10_en & _T_id__T_10_mask) begin
      _T_id[_T_id__T_10_addr] <= _T_id__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
    end
    if(_T_addr__T_10_en & _T_addr__T_10_mask) begin
      _T_addr[_T_addr__T_10_addr] <= _T_addr__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
    end
    if(_T_user__T_10_en & _T_user__T_10_mask) begin
      _T_user[_T_user__T_10_addr] <= _T_user__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672215.4]
    end
    if (reset) begin
      value <= 1'h0;
    end else begin
      if (_T_6) begin
        value <= _T_12;
      end
    end
    if (reset) begin
      value_1 <= 1'h0;
    end else begin
      if (_T_8) begin
        value_1 <= _T_14;
      end
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else begin
      if (_T_15) begin
        _T_1 <= _T_6;
      end
    end
  end
endmodule
module Queue_164( // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672334.2]
  input         clock, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672335.4]
  input         reset, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672336.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672337.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672337.4]
  input  [3:0]  io_enq_bits_id, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672337.4]
  input  [1:0]  io_enq_bits_resp, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672337.4]
  input  [15:0] io_enq_bits_user, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672337.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672337.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672337.4]
  output [3:0]  io_deq_bits_id, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672337.4]
  output [1:0]  io_deq_bits_resp, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672337.4]
  output [15:0] io_deq_bits_user // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672337.4]
);
  reg [3:0] _T_id [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  reg [31:0] _RAND_0;
  wire [3:0] _T_id__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  wire  _T_id__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  wire [3:0] _T_id__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  wire  _T_id__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  wire  _T_id__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  wire  _T_id__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  reg [1:0] _T_resp [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  reg [31:0] _RAND_1;
  wire [1:0] _T_resp__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  wire  _T_resp__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  wire [1:0] _T_resp__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  wire  _T_resp__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  wire  _T_resp__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  wire  _T_resp__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  reg [15:0] _T_user [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  reg [31:0] _RAND_2;
  wire [15:0] _T_user__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  wire  _T_user__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  wire [15:0] _T_user__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  wire  _T_user__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  wire  _T_user__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  wire  _T_user__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  reg  value; // @[Counter.scala 26:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672340.4]
  reg [31:0] _RAND_3;
  reg  value_1; // @[Counter.scala 26:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672341.4]
  reg [31:0] _RAND_4;
  reg  _T_1; // @[Decoupled.scala 218:35:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672342.4]
  reg [31:0] _RAND_5;
  wire  _T_2; // @[Decoupled.scala 220:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672343.4]
  wire  _T_3; // @[Decoupled.scala 221:36:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672344.4]
  wire  _T_4; // @[Decoupled.scala 221:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672345.4]
  wire  _T_5; // @[Decoupled.scala 222:32:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672346.4]
  wire  _T_6; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672347.4]
  wire  _T_8; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672350.4]
  wire  _T_12; // @[Counter.scala 35:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672360.6]
  wire  _T_14; // @[Counter.scala 35:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672366.6]
  wire  _T_15; // @[Decoupled.scala 233:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672369.4]
  assign _T_id__T_18_addr = value_1;
  assign _T_id__T_18_data = _T_id[_T_id__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  assign _T_id__T_10_data = io_enq_bits_id;
  assign _T_id__T_10_addr = value;
  assign _T_id__T_10_mask = 1'h1;
  assign _T_id__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_resp__T_18_addr = value_1;
  assign _T_resp__T_18_data = _T_resp[_T_resp__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  assign _T_resp__T_10_data = io_enq_bits_resp;
  assign _T_resp__T_10_addr = value;
  assign _T_resp__T_10_mask = 1'h1;
  assign _T_resp__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_user__T_18_addr = value_1;
  assign _T_user__T_18_data = _T_user[_T_user__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
  assign _T_user__T_10_data = io_enq_bits_user;
  assign _T_user__T_10_addr = value;
  assign _T_user__T_10_mask = 1'h1;
  assign _T_user__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_2 = value == value_1; // @[Decoupled.scala 220:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672343.4]
  assign _T_3 = _T_1 == 1'h0; // @[Decoupled.scala 221:36:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672344.4]
  assign _T_4 = _T_2 & _T_3; // @[Decoupled.scala 221:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672345.4]
  assign _T_5 = _T_2 & _T_1; // @[Decoupled.scala 222:32:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672346.4]
  assign _T_6 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672347.4]
  assign _T_8 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672350.4]
  assign _T_12 = value + 1'h1; // @[Counter.scala 35:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672360.6]
  assign _T_14 = value_1 + 1'h1; // @[Counter.scala 35:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672366.6]
  assign _T_15 = _T_6 != _T_8; // @[Decoupled.scala 233:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672369.4]
  assign io_enq_ready = _T_5 == 1'h0; // @[Decoupled.scala 238:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672376.4]
  assign io_deq_valid = _T_4 == 1'h0; // @[Decoupled.scala 237:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672374.4]
  assign io_deq_bits_id = _T_id__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672380.4]
  assign io_deq_bits_resp = _T_resp__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672379.4]
  assign io_deq_bits_user = _T_user__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672378.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_id[initvar] = _RAND_0[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_resp[initvar] = _RAND_1[1:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_user[initvar] = _RAND_2[15:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  value = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  value_1 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_1 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if(_T_id__T_10_en & _T_id__T_10_mask) begin
      _T_id[_T_id__T_10_addr] <= _T_id__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
    end
    if(_T_resp__T_10_en & _T_resp__T_10_mask) begin
      _T_resp[_T_resp__T_10_addr] <= _T_resp__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
    end
    if(_T_user__T_10_en & _T_user__T_10_mask) begin
      _T_user[_T_user__T_10_addr] <= _T_user__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672339.4]
    end
    if (reset) begin
      value <= 1'h0;
    end else begin
      if (_T_6) begin
        value <= _T_12;
      end
    end
    if (reset) begin
      value_1 <= 1'h0;
    end else begin
      if (_T_8) begin
        value_1 <= _T_14;
      end
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else begin
      if (_T_15) begin
        _T_1 <= _T_6;
      end
    end
  end
endmodule
module Queue_166( // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672458.2]
  input         clock, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672459.4]
  input         reset, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672460.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672461.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672461.4]
  input  [3:0]  io_enq_bits_id, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672461.4]
  input  [63:0] io_enq_bits_data, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672461.4]
  input  [1:0]  io_enq_bits_resp, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672461.4]
  input  [15:0] io_enq_bits_user, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672461.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672461.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672461.4]
  output [3:0]  io_deq_bits_id, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672461.4]
  output [63:0] io_deq_bits_data, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672461.4]
  output [1:0]  io_deq_bits_resp, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672461.4]
  output [15:0] io_deq_bits_user, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672461.4]
  output        io_deq_bits_last // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672461.4]
);
  reg [3:0] _T_id [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  reg [31:0] _RAND_0;
  wire [3:0] _T_id__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire  _T_id__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire [3:0] _T_id__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire  _T_id__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire  _T_id__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire  _T_id__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  reg [63:0] _T_data [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  reg [63:0] _RAND_1;
  wire [63:0] _T_data__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire  _T_data__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire [63:0] _T_data__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire  _T_data__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire  _T_data__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire  _T_data__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  reg [1:0] _T_resp [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  reg [31:0] _RAND_2;
  wire [1:0] _T_resp__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire  _T_resp__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire [1:0] _T_resp__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire  _T_resp__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire  _T_resp__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire  _T_resp__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  reg [15:0] _T_user [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  reg [31:0] _RAND_3;
  wire [15:0] _T_user__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire  _T_user__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire [15:0] _T_user__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire  _T_user__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire  _T_user__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire  _T_user__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  reg  _T_last [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  reg [31:0] _RAND_4;
  wire  _T_last__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire  _T_last__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire  _T_last__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire  _T_last__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire  _T_last__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  wire  _T_last__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  reg  value; // @[Counter.scala 26:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672464.4]
  reg [31:0] _RAND_5;
  reg  value_1; // @[Counter.scala 26:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672465.4]
  reg [31:0] _RAND_6;
  reg  _T_1; // @[Decoupled.scala 218:35:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672466.4]
  reg [31:0] _RAND_7;
  wire  _T_2; // @[Decoupled.scala 220:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672467.4]
  wire  _T_3; // @[Decoupled.scala 221:36:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672468.4]
  wire  _T_4; // @[Decoupled.scala 221:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672469.4]
  wire  _T_5; // @[Decoupled.scala 222:32:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672470.4]
  wire  _T_6; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672471.4]
  wire  _T_8; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672474.4]
  wire  _T_12; // @[Counter.scala 35:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672486.6]
  wire  _T_14; // @[Counter.scala 35:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672492.6]
  wire  _T_15; // @[Decoupled.scala 233:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672495.4]
  assign _T_id__T_18_addr = value_1;
  assign _T_id__T_18_data = _T_id[_T_id__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  assign _T_id__T_10_data = io_enq_bits_id;
  assign _T_id__T_10_addr = value;
  assign _T_id__T_10_mask = 1'h1;
  assign _T_id__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_data__T_18_addr = value_1;
  assign _T_data__T_18_data = _T_data[_T_data__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  assign _T_data__T_10_data = io_enq_bits_data;
  assign _T_data__T_10_addr = value;
  assign _T_data__T_10_mask = 1'h1;
  assign _T_data__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_resp__T_18_addr = value_1;
  assign _T_resp__T_18_data = _T_resp[_T_resp__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  assign _T_resp__T_10_data = io_enq_bits_resp;
  assign _T_resp__T_10_addr = value;
  assign _T_resp__T_10_mask = 1'h1;
  assign _T_resp__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_user__T_18_addr = value_1;
  assign _T_user__T_18_data = _T_user[_T_user__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  assign _T_user__T_10_data = io_enq_bits_user;
  assign _T_user__T_10_addr = value;
  assign _T_user__T_10_mask = 1'h1;
  assign _T_user__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_last__T_18_addr = value_1;
  assign _T_last__T_18_data = _T_last[_T_last__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
  assign _T_last__T_10_data = 1'h1;
  assign _T_last__T_10_addr = value;
  assign _T_last__T_10_mask = 1'h1;
  assign _T_last__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_2 = value == value_1; // @[Decoupled.scala 220:41:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672467.4]
  assign _T_3 = _T_1 == 1'h0; // @[Decoupled.scala 221:36:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672468.4]
  assign _T_4 = _T_2 & _T_3; // @[Decoupled.scala 221:33:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672469.4]
  assign _T_5 = _T_2 & _T_1; // @[Decoupled.scala 222:32:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672470.4]
  assign _T_6 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672471.4]
  assign _T_8 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672474.4]
  assign _T_12 = value + 1'h1; // @[Counter.scala 35:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672486.6]
  assign _T_14 = value_1 + 1'h1; // @[Counter.scala 35:22:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672492.6]
  assign _T_15 = _T_6 != _T_8; // @[Decoupled.scala 233:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672495.4]
  assign io_enq_ready = _T_5 == 1'h0; // @[Decoupled.scala 238:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672502.4]
  assign io_deq_valid = _T_4 == 1'h0; // @[Decoupled.scala 237:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672500.4]
  assign io_deq_bits_id = _T_id__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672508.4]
  assign io_deq_bits_data = _T_data__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672507.4]
  assign io_deq_bits_resp = _T_resp__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672506.4]
  assign io_deq_bits_user = _T_user__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672505.4]
  assign io_deq_bits_last = _T_last__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672504.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_id[initvar] = _RAND_0[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_data[initvar] = _RAND_1[63:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_resp[initvar] = _RAND_2[1:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_user[initvar] = _RAND_3[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_last[initvar] = _RAND_4[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  value = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  value_1 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_1 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if(_T_id__T_10_en & _T_id__T_10_mask) begin
      _T_id[_T_id__T_10_addr] <= _T_id__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
    end
    if(_T_data__T_10_en & _T_data__T_10_mask) begin
      _T_data[_T_data__T_10_addr] <= _T_data__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
    end
    if(_T_resp__T_10_en & _T_resp__T_10_mask) begin
      _T_resp[_T_resp__T_10_addr] <= _T_resp__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
    end
    if(_T_user__T_10_en & _T_user__T_10_mask) begin
      _T_user[_T_user__T_10_addr] <= _T_user__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
    end
    if(_T_last__T_10_en & _T_last__T_10_mask) begin
      _T_last[_T_last__T_10_addr] <= _T_last__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672463.4]
    end
    if (reset) begin
      value <= 1'h0;
    end else begin
      if (_T_6) begin
        value <= _T_12;
      end
    end
    if (reset) begin
      value_1 <= 1'h0;
    end else begin
      if (_T_8) begin
        value_1 <= _T_14;
      end
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else begin
      if (_T_15) begin
        _T_1 <= _T_6;
      end
    end
  end
endmodule
module Queue_167( // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672642.2]
  input         clock, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672643.4]
  input         reset, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672644.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672645.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672645.4]
  input  [3:0]  io_enq_bits_id, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672645.4]
  input  [30:0] io_enq_bits_addr, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672645.4]
  input  [7:0]  io_enq_bits_len, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672645.4]
  input  [2:0]  io_enq_bits_size, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672645.4]
  input  [1:0]  io_enq_bits_burst, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672645.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672645.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672645.4]
  output [3:0]  io_deq_bits_id, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672645.4]
  output [30:0] io_deq_bits_addr, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672645.4]
  output [7:0]  io_deq_bits_len, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672645.4]
  output [2:0]  io_deq_bits_size, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672645.4]
  output [1:0]  io_deq_bits_burst // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672645.4]
);
  reg [3:0] _T_id [0:0]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  reg [31:0] _RAND_0;
  wire [3:0] _T_id__T_14_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire  _T_id__T_14_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire [3:0] _T_id__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire  _T_id__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire  _T_id__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire  _T_id__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  reg [30:0] _T_addr [0:0]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  reg [31:0] _RAND_1;
  wire [30:0] _T_addr__T_14_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire  _T_addr__T_14_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire [30:0] _T_addr__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire  _T_addr__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire  _T_addr__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire  _T_addr__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  reg [7:0] _T_len [0:0]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  reg [31:0] _RAND_2;
  wire [7:0] _T_len__T_14_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire  _T_len__T_14_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire [7:0] _T_len__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire  _T_len__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire  _T_len__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire  _T_len__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  reg [2:0] _T_size [0:0]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  reg [31:0] _RAND_3;
  wire [2:0] _T_size__T_14_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire  _T_size__T_14_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire [2:0] _T_size__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire  _T_size__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire  _T_size__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire  _T_size__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  reg [1:0] _T_burst [0:0]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  reg [31:0] _RAND_4;
  wire [1:0] _T_burst__T_14_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire  _T_burst__T_14_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire [1:0] _T_burst__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire  _T_burst__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire  _T_burst__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  wire  _T_burst__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  reg  _T_1; // @[Decoupled.scala 218:35:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672648.4]
  reg [31:0] _RAND_5;
  wire  _T_3; // @[Decoupled.scala 221:36:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672650.4]
  wire  _T_6; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672653.4]
  wire  _T_8; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672656.4]
  wire  _GEN_16; // @[Decoupled.scala 246:27:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672708.6]
  wire  _GEN_28; // @[Decoupled.scala 243:18:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672696.4]
  wire  _GEN_27; // @[Decoupled.scala 243:18:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672696.4]
  wire  _T_11; // @[Decoupled.scala 233:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672674.4]
  wire  _T_12; // @[Decoupled.scala 237:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672678.4]
  assign _T_id__T_14_addr = 1'h0;
  assign _T_id__T_14_data = _T_id[_T_id__T_14_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  assign _T_id__T_10_data = io_enq_bits_id;
  assign _T_id__T_10_addr = 1'h0;
  assign _T_id__T_10_mask = 1'h1;
  assign _T_id__T_10_en = _T_3 ? _GEN_16 : _T_6;
  assign _T_addr__T_14_addr = 1'h0;
  assign _T_addr__T_14_data = _T_addr[_T_addr__T_14_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  assign _T_addr__T_10_data = io_enq_bits_addr;
  assign _T_addr__T_10_addr = 1'h0;
  assign _T_addr__T_10_mask = 1'h1;
  assign _T_addr__T_10_en = _T_3 ? _GEN_16 : _T_6;
  assign _T_len__T_14_addr = 1'h0;
  assign _T_len__T_14_data = _T_len[_T_len__T_14_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  assign _T_len__T_10_data = io_enq_bits_len;
  assign _T_len__T_10_addr = 1'h0;
  assign _T_len__T_10_mask = 1'h1;
  assign _T_len__T_10_en = _T_3 ? _GEN_16 : _T_6;
  assign _T_size__T_14_addr = 1'h0;
  assign _T_size__T_14_data = _T_size[_T_size__T_14_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  assign _T_size__T_10_data = io_enq_bits_size;
  assign _T_size__T_10_addr = 1'h0;
  assign _T_size__T_10_mask = 1'h1;
  assign _T_size__T_10_en = _T_3 ? _GEN_16 : _T_6;
  assign _T_burst__T_14_addr = 1'h0;
  assign _T_burst__T_14_data = _T_burst[_T_burst__T_14_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
  assign _T_burst__T_10_data = io_enq_bits_burst;
  assign _T_burst__T_10_addr = 1'h0;
  assign _T_burst__T_10_mask = 1'h1;
  assign _T_burst__T_10_en = _T_3 ? _GEN_16 : _T_6;
  assign _T_3 = _T_1 == 1'h0; // @[Decoupled.scala 221:36:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672650.4]
  assign _T_6 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672653.4]
  assign _T_8 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672656.4]
  assign _GEN_16 = io_deq_ready ? 1'h0 : _T_6; // @[Decoupled.scala 246:27:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672708.6]
  assign _GEN_28 = _T_3 ? _GEN_16 : _T_6; // @[Decoupled.scala 243:18:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672696.4]
  assign _GEN_27 = _T_3 ? 1'h0 : _T_8; // @[Decoupled.scala 243:18:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672696.4]
  assign _T_11 = _GEN_28 != _GEN_27; // @[Decoupled.scala 233:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672674.4]
  assign _T_12 = _T_3 == 1'h0; // @[Decoupled.scala 237:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672678.4]
  assign io_enq_ready = _T_1 == 1'h0; // @[Decoupled.scala 238:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672681.4]
  assign io_deq_valid = io_enq_valid ? 1'h1 : _T_12; // @[Decoupled.scala 237:16:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672679.4 Decoupled.scala 242:40:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672694.6]
  assign io_deq_bits_id = _T_3 ? io_enq_bits_id : _T_id__T_14_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672692.4 Decoupled.scala 244:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672706.6]
  assign io_deq_bits_addr = _T_3 ? io_enq_bits_addr : _T_addr__T_14_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672691.4 Decoupled.scala 244:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672705.6]
  assign io_deq_bits_len = _T_3 ? io_enq_bits_len : _T_len__T_14_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672690.4 Decoupled.scala 244:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672704.6]
  assign io_deq_bits_size = _T_3 ? io_enq_bits_size : _T_size__T_14_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672689.4 Decoupled.scala 244:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672703.6]
  assign io_deq_bits_burst = _T_3 ? io_enq_bits_burst : _T_burst__T_14_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672688.4 Decoupled.scala 244:19:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672702.6]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _T_id[initvar] = _RAND_0[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _T_addr[initvar] = _RAND_1[30:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _T_len[initvar] = _RAND_2[7:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _T_size[initvar] = _RAND_3[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _T_burst[initvar] = _RAND_4[1:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_1 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if(_T_id__T_10_en & _T_id__T_10_mask) begin
      _T_id[_T_id__T_10_addr] <= _T_id__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
    end
    if(_T_addr__T_10_en & _T_addr__T_10_mask) begin
      _T_addr[_T_addr__T_10_addr] <= _T_addr__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
    end
    if(_T_len__T_10_en & _T_len__T_10_mask) begin
      _T_len[_T_len__T_10_addr] <= _T_len__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
    end
    if(_T_size__T_10_en & _T_size__T_10_mask) begin
      _T_size[_T_size__T_10_addr] <= _T_size__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
    end
    if(_T_burst__T_10_en & _T_burst__T_10_mask) begin
      _T_burst[_T_burst__T_10_addr] <= _T_burst__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@672647.4]
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else begin
      if (_T_11) begin
        if (_T_3) begin
          if (io_deq_ready) begin
            _T_1 <= 1'h0;
          end else begin
            _T_1 <= _T_6;
          end
        end else begin
          _T_1 <= _T_6;
        end
      end
    end
  end
endmodule
module SimAXIMem( // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673372.2]
  input         clock, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673373.4]
  input         reset, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673374.4]
  output        io_axi4_0_awready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  input         io_axi4_0_awvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  input  [3:0]  io_axi4_0_awid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  input  [30:0] io_axi4_0_awaddr, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  input  [7:0]  io_axi4_0_awlen, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  input  [2:0]  io_axi4_0_awsize, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  input  [1:0]  io_axi4_0_awburst, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  output        io_axi4_0_wready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  input         io_axi4_0_wvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  input  [63:0] io_axi4_0_wdata, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  input  [7:0]  io_axi4_0_wstrb, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  input         io_axi4_0_wlast, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  input         io_axi4_0_bready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  output        io_axi4_0_bvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  output [3:0]  io_axi4_0_bid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  output [1:0]  io_axi4_0_bresp, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  output        io_axi4_0_arready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  input         io_axi4_0_arvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  input  [3:0]  io_axi4_0_arid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  input  [30:0] io_axi4_0_araddr, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  input  [7:0]  io_axi4_0_arlen, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  input  [2:0]  io_axi4_0_arsize, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  input  [1:0]  io_axi4_0_arburst, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  input         io_axi4_0_rready, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  output        io_axi4_0_rvalid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  output [3:0]  io_axi4_0_rid, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  output [63:0] io_axi4_0_rdata, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  output [1:0]  io_axi4_0_rresp, // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
  output        io_axi4_0_rlast // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673376.4]
);
  wire  sram_clock; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire  sram_reset; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire  sram_auto_in_awready; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire  sram_auto_in_awvalid; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire [3:0] sram_auto_in_awid; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire [30:0] sram_auto_in_awaddr; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire [15:0] sram_auto_in_awuser; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire  sram_auto_in_wready; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire  sram_auto_in_wvalid; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire [63:0] sram_auto_in_wdata; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire [7:0] sram_auto_in_wstrb; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire  sram_auto_in_bready; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire  sram_auto_in_bvalid; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire [3:0] sram_auto_in_bid; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire [1:0] sram_auto_in_bresp; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire [15:0] sram_auto_in_buser; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire  sram_auto_in_arready; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire  sram_auto_in_arvalid; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire [3:0] sram_auto_in_arid; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire [30:0] sram_auto_in_araddr; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire [15:0] sram_auto_in_aruser; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire  sram_auto_in_rready; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire  sram_auto_in_rvalid; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire [3:0] sram_auto_in_rid; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire [63:0] sram_auto_in_rdata; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire [1:0] sram_auto_in_rresp; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire [15:0] sram_auto_in_ruser; // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
  wire  axi4buf_clock; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_reset; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_in_awready; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_in_awvalid; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [3:0] axi4buf_auto_in_awid; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [30:0] axi4buf_auto_in_awaddr; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_in_awuser; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_in_wready; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_in_wvalid; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [63:0] axi4buf_auto_in_wdata; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [7:0] axi4buf_auto_in_wstrb; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_in_wlast; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_in_bready; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_in_bvalid; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [3:0] axi4buf_auto_in_bid; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [1:0] axi4buf_auto_in_bresp; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_in_buser; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_in_arready; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_in_arvalid; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [3:0] axi4buf_auto_in_arid; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [30:0] axi4buf_auto_in_araddr; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_in_aruser; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_in_rready; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_in_rvalid; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [3:0] axi4buf_auto_in_rid; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [63:0] axi4buf_auto_in_rdata; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [1:0] axi4buf_auto_in_rresp; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_in_ruser; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_in_rlast; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_out_awready; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_out_awvalid; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [3:0] axi4buf_auto_out_awid; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [30:0] axi4buf_auto_out_awaddr; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [15:0] axi4buf_auto_out_awuser; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_out_wready; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_out_wvalid; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [63:0] axi4buf_auto_out_wdata; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [7:0] axi4buf_auto_out_wstrb; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_out_bready; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_out_bvalid; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [3:0] axi4buf_auto_out_bid; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [1:0] axi4buf_auto_out_bresp; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [15:0] axi4buf_auto_out_buser; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_out_arready; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_out_arvalid; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [3:0] axi4buf_auto_out_arid; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [30:0] axi4buf_auto_out_araddr; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [15:0] axi4buf_auto_out_aruser; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_out_rready; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4buf_auto_out_rvalid; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [3:0] axi4buf_auto_out_rid; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [63:0] axi4buf_auto_out_rdata; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [1:0] axi4buf_auto_out_rresp; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire [15:0] axi4buf_auto_out_ruser; // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
  wire  axi4frag_clock; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_reset; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_in_awready; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_in_awvalid; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [3:0] axi4frag_auto_in_awid; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [30:0] axi4frag_auto_in_awaddr; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [7:0] axi4frag_auto_in_awlen; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [2:0] axi4frag_auto_in_awsize; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [1:0] axi4frag_auto_in_awburst; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_in_wready; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_in_wvalid; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [63:0] axi4frag_auto_in_wdata; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [7:0] axi4frag_auto_in_wstrb; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_in_wlast; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_in_bready; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_in_bvalid; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [3:0] axi4frag_auto_in_bid; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [1:0] axi4frag_auto_in_bresp; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_in_arready; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_in_arvalid; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [3:0] axi4frag_auto_in_arid; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [30:0] axi4frag_auto_in_araddr; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [7:0] axi4frag_auto_in_arlen; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [2:0] axi4frag_auto_in_arsize; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [1:0] axi4frag_auto_in_arburst; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_in_rready; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_in_rvalid; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [3:0] axi4frag_auto_in_rid; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [63:0] axi4frag_auto_in_rdata; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [1:0] axi4frag_auto_in_rresp; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_in_rlast; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_out_awready; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_out_awvalid; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [3:0] axi4frag_auto_out_awid; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [30:0] axi4frag_auto_out_awaddr; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_out_awuser; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_out_wready; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_out_wvalid; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [63:0] axi4frag_auto_out_wdata; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [7:0] axi4frag_auto_out_wstrb; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_out_wlast; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_out_bready; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_out_bvalid; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [3:0] axi4frag_auto_out_bid; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [1:0] axi4frag_auto_out_bresp; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_out_buser; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_out_arready; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_out_arvalid; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [3:0] axi4frag_auto_out_arid; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [30:0] axi4frag_auto_out_araddr; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_out_aruser; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_out_rready; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_out_rvalid; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [3:0] axi4frag_auto_out_rid; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [63:0] axi4frag_auto_out_rdata; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire [1:0] axi4frag_auto_out_rresp; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_out_ruser; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  wire  axi4frag_auto_out_rlast; // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
  AXI4RAM sram ( // @[Ports.scala 229:24:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673382.4]
    .clock(sram_clock),
    .reset(sram_reset),
    .auto_in_awready(sram_auto_in_awready),
    .auto_in_awvalid(sram_auto_in_awvalid),
    .auto_in_awid(sram_auto_in_awid),
    .auto_in_awaddr(sram_auto_in_awaddr),
    .auto_in_awuser(sram_auto_in_awuser),
    .auto_in_wready(sram_auto_in_wready),
    .auto_in_wvalid(sram_auto_in_wvalid),
    .auto_in_wdata(sram_auto_in_wdata),
    .auto_in_wstrb(sram_auto_in_wstrb),
    .auto_in_bready(sram_auto_in_bready),
    .auto_in_bvalid(sram_auto_in_bvalid),
    .auto_in_bid(sram_auto_in_bid),
    .auto_in_bresp(sram_auto_in_bresp),
    .auto_in_buser(sram_auto_in_buser),
    .auto_in_arready(sram_auto_in_arready),
    .auto_in_arvalid(sram_auto_in_arvalid),
    .auto_in_arid(sram_auto_in_arid),
    .auto_in_araddr(sram_auto_in_araddr),
    .auto_in_aruser(sram_auto_in_aruser),
    .auto_in_rready(sram_auto_in_rready),
    .auto_in_rvalid(sram_auto_in_rvalid),
    .auto_in_rid(sram_auto_in_rid),
    .auto_in_rdata(sram_auto_in_rdata),
    .auto_in_rresp(sram_auto_in_rresp),
    .auto_in_ruser(sram_auto_in_ruser)
  );
  AXI4Buffer_1 axi4buf ( // @[Buffer.scala 58:29:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673388.4]
    .clock(axi4buf_clock),
    .reset(axi4buf_reset),
    .auto_in_awready(axi4buf_auto_in_awready),
    .auto_in_awvalid(axi4buf_auto_in_awvalid),
    .auto_in_awid(axi4buf_auto_in_awid),
    .auto_in_awaddr(axi4buf_auto_in_awaddr),
    .auto_in_awuser(axi4buf_auto_in_awuser),
    .auto_in_wready(axi4buf_auto_in_wready),
    .auto_in_wvalid(axi4buf_auto_in_wvalid),
    .auto_in_wdata(axi4buf_auto_in_wdata),
    .auto_in_wstrb(axi4buf_auto_in_wstrb),
    .auto_in_wlast(axi4buf_auto_in_wlast),
    .auto_in_bready(axi4buf_auto_in_bready),
    .auto_in_bvalid(axi4buf_auto_in_bvalid),
    .auto_in_bid(axi4buf_auto_in_bid),
    .auto_in_bresp(axi4buf_auto_in_bresp),
    .auto_in_buser(axi4buf_auto_in_buser),
    .auto_in_arready(axi4buf_auto_in_arready),
    .auto_in_arvalid(axi4buf_auto_in_arvalid),
    .auto_in_arid(axi4buf_auto_in_arid),
    .auto_in_araddr(axi4buf_auto_in_araddr),
    .auto_in_aruser(axi4buf_auto_in_aruser),
    .auto_in_rready(axi4buf_auto_in_rready),
    .auto_in_rvalid(axi4buf_auto_in_rvalid),
    .auto_in_rid(axi4buf_auto_in_rid),
    .auto_in_rdata(axi4buf_auto_in_rdata),
    .auto_in_rresp(axi4buf_auto_in_rresp),
    .auto_in_ruser(axi4buf_auto_in_ruser),
    .auto_in_rlast(axi4buf_auto_in_rlast),
    .auto_out_awready(axi4buf_auto_out_awready),
    .auto_out_awvalid(axi4buf_auto_out_awvalid),
    .auto_out_awid(axi4buf_auto_out_awid),
    .auto_out_awaddr(axi4buf_auto_out_awaddr),
    .auto_out_awuser(axi4buf_auto_out_awuser),
    .auto_out_wready(axi4buf_auto_out_wready),
    .auto_out_wvalid(axi4buf_auto_out_wvalid),
    .auto_out_wdata(axi4buf_auto_out_wdata),
    .auto_out_wstrb(axi4buf_auto_out_wstrb),
    .auto_out_bready(axi4buf_auto_out_bready),
    .auto_out_bvalid(axi4buf_auto_out_bvalid),
    .auto_out_bid(axi4buf_auto_out_bid),
    .auto_out_bresp(axi4buf_auto_out_bresp),
    .auto_out_buser(axi4buf_auto_out_buser),
    .auto_out_arready(axi4buf_auto_out_arready),
    .auto_out_arvalid(axi4buf_auto_out_arvalid),
    .auto_out_arid(axi4buf_auto_out_arid),
    .auto_out_araddr(axi4buf_auto_out_araddr),
    .auto_out_aruser(axi4buf_auto_out_aruser),
    .auto_out_rready(axi4buf_auto_out_rready),
    .auto_out_rvalid(axi4buf_auto_out_rvalid),
    .auto_out_rid(axi4buf_auto_out_rid),
    .auto_out_rdata(axi4buf_auto_out_rdata),
    .auto_out_rresp(axi4buf_auto_out_rresp),
    .auto_out_ruser(axi4buf_auto_out_ruser)
  );
  AXI4Fragmenter_1 axi4frag ( // @[Fragmenter.scala 205:30:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673394.4]
    .clock(axi4frag_clock),
    .reset(axi4frag_reset),
    .auto_in_awready(axi4frag_auto_in_awready),
    .auto_in_awvalid(axi4frag_auto_in_awvalid),
    .auto_in_awid(axi4frag_auto_in_awid),
    .auto_in_awaddr(axi4frag_auto_in_awaddr),
    .auto_in_awlen(axi4frag_auto_in_awlen),
    .auto_in_awsize(axi4frag_auto_in_awsize),
    .auto_in_awburst(axi4frag_auto_in_awburst),
    .auto_in_wready(axi4frag_auto_in_wready),
    .auto_in_wvalid(axi4frag_auto_in_wvalid),
    .auto_in_wdata(axi4frag_auto_in_wdata),
    .auto_in_wstrb(axi4frag_auto_in_wstrb),
    .auto_in_wlast(axi4frag_auto_in_wlast),
    .auto_in_bready(axi4frag_auto_in_bready),
    .auto_in_bvalid(axi4frag_auto_in_bvalid),
    .auto_in_bid(axi4frag_auto_in_bid),
    .auto_in_bresp(axi4frag_auto_in_bresp),
    .auto_in_arready(axi4frag_auto_in_arready),
    .auto_in_arvalid(axi4frag_auto_in_arvalid),
    .auto_in_arid(axi4frag_auto_in_arid),
    .auto_in_araddr(axi4frag_auto_in_araddr),
    .auto_in_arlen(axi4frag_auto_in_arlen),
    .auto_in_arsize(axi4frag_auto_in_arsize),
    .auto_in_arburst(axi4frag_auto_in_arburst),
    .auto_in_rready(axi4frag_auto_in_rready),
    .auto_in_rvalid(axi4frag_auto_in_rvalid),
    .auto_in_rid(axi4frag_auto_in_rid),
    .auto_in_rdata(axi4frag_auto_in_rdata),
    .auto_in_rresp(axi4frag_auto_in_rresp),
    .auto_in_rlast(axi4frag_auto_in_rlast),
    .auto_out_awready(axi4frag_auto_out_awready),
    .auto_out_awvalid(axi4frag_auto_out_awvalid),
    .auto_out_awid(axi4frag_auto_out_awid),
    .auto_out_awaddr(axi4frag_auto_out_awaddr),
    .auto_out_awuser(axi4frag_auto_out_awuser),
    .auto_out_wready(axi4frag_auto_out_wready),
    .auto_out_wvalid(axi4frag_auto_out_wvalid),
    .auto_out_wdata(axi4frag_auto_out_wdata),
    .auto_out_wstrb(axi4frag_auto_out_wstrb),
    .auto_out_wlast(axi4frag_auto_out_wlast),
    .auto_out_bready(axi4frag_auto_out_bready),
    .auto_out_bvalid(axi4frag_auto_out_bvalid),
    .auto_out_bid(axi4frag_auto_out_bid),
    .auto_out_bresp(axi4frag_auto_out_bresp),
    .auto_out_buser(axi4frag_auto_out_buser),
    .auto_out_arready(axi4frag_auto_out_arready),
    .auto_out_arvalid(axi4frag_auto_out_arvalid),
    .auto_out_arid(axi4frag_auto_out_arid),
    .auto_out_araddr(axi4frag_auto_out_araddr),
    .auto_out_aruser(axi4frag_auto_out_aruser),
    .auto_out_rready(axi4frag_auto_out_rready),
    .auto_out_rvalid(axi4frag_auto_out_rvalid),
    .auto_out_rid(axi4frag_auto_out_rid),
    .auto_out_rdata(axi4frag_auto_out_rdata),
    .auto_out_rresp(axi4frag_auto_out_rresp),
    .auto_out_ruser(axi4frag_auto_out_ruser),
    .auto_out_rlast(axi4frag_auto_out_rlast)
  );
  assign io_axi4_0_awready = axi4frag_auto_in_awready; // @[Ports.scala 234:71:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673405.4]
  assign io_axi4_0_wready = axi4frag_auto_in_wready; // @[Ports.scala 234:71:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673405.4]
  assign io_axi4_0_bvalid = axi4frag_auto_in_bvalid; // @[Ports.scala 234:71:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673405.4]
  assign io_axi4_0_bid = axi4frag_auto_in_bid; // @[Ports.scala 234:71:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673405.4]
  assign io_axi4_0_bresp = axi4frag_auto_in_bresp; // @[Ports.scala 234:71:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673405.4]
  assign io_axi4_0_arready = axi4frag_auto_in_arready; // @[Ports.scala 234:71:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673405.4]
  assign io_axi4_0_rvalid = axi4frag_auto_in_rvalid; // @[Ports.scala 234:71:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673405.4]
  assign io_axi4_0_rid = axi4frag_auto_in_rid; // @[Ports.scala 234:71:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673405.4]
  assign io_axi4_0_rdata = axi4frag_auto_in_rdata; // @[Ports.scala 234:71:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673405.4]
  assign io_axi4_0_rresp = axi4frag_auto_in_rresp; // @[Ports.scala 234:71:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673405.4]
  assign io_axi4_0_rlast = axi4frag_auto_in_rlast; // @[Ports.scala 234:71:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673405.4]
  assign sram_clock = clock; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673386.4]
  assign sram_reset = reset; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673387.4]
  assign sram_auto_in_awvalid = axi4buf_auto_out_awvalid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign sram_auto_in_awid = axi4buf_auto_out_awid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign sram_auto_in_awaddr = axi4buf_auto_out_awaddr; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign sram_auto_in_awuser = axi4buf_auto_out_awuser; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign sram_auto_in_wvalid = axi4buf_auto_out_wvalid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign sram_auto_in_wdata = axi4buf_auto_out_wdata; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign sram_auto_in_wstrb = axi4buf_auto_out_wstrb; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign sram_auto_in_bready = axi4buf_auto_out_bready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign sram_auto_in_arvalid = axi4buf_auto_out_arvalid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign sram_auto_in_arid = axi4buf_auto_out_arid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign sram_auto_in_araddr = axi4buf_auto_out_araddr; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign sram_auto_in_aruser = axi4buf_auto_out_aruser; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign sram_auto_in_rready = axi4buf_auto_out_rready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign axi4buf_clock = clock; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673392.4]
  assign axi4buf_reset = reset; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673393.4]
  assign axi4buf_auto_in_awvalid = axi4frag_auto_out_awvalid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4buf_auto_in_awid = axi4frag_auto_out_awid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4buf_auto_in_awaddr = axi4frag_auto_out_awaddr; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4buf_auto_in_awuser = axi4frag_auto_out_awuser; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4buf_auto_in_wvalid = axi4frag_auto_out_wvalid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4buf_auto_in_wdata = axi4frag_auto_out_wdata; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4buf_auto_in_wstrb = axi4frag_auto_out_wstrb; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4buf_auto_in_wlast = axi4frag_auto_out_wlast; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4buf_auto_in_bready = axi4frag_auto_out_bready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4buf_auto_in_arvalid = axi4frag_auto_out_arvalid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4buf_auto_in_arid = axi4frag_auto_out_arid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4buf_auto_in_araddr = axi4frag_auto_out_araddr; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4buf_auto_in_aruser = axi4frag_auto_out_aruser; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4buf_auto_in_rready = axi4frag_auto_out_rready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4buf_auto_out_awready = sram_auto_in_awready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign axi4buf_auto_out_wready = sram_auto_in_wready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign axi4buf_auto_out_bvalid = sram_auto_in_bvalid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign axi4buf_auto_out_bid = sram_auto_in_bid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign axi4buf_auto_out_bresp = sram_auto_in_bresp; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign axi4buf_auto_out_buser = sram_auto_in_buser; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign axi4buf_auto_out_arready = sram_auto_in_arready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign axi4buf_auto_out_rvalid = sram_auto_in_rvalid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign axi4buf_auto_out_rid = sram_auto_in_rid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign axi4buf_auto_out_rdata = sram_auto_in_rdata; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign axi4buf_auto_out_rresp = sram_auto_in_rresp; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign axi4buf_auto_out_ruser = sram_auto_in_ruser; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673403.4]
  assign axi4frag_clock = clock; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673398.4]
  assign axi4frag_reset = reset; // @[:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673399.4]
  assign axi4frag_auto_in_awvalid = io_axi4_0_awvalid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673402.4]
  assign axi4frag_auto_in_awid = io_axi4_0_awid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673402.4]
  assign axi4frag_auto_in_awaddr = io_axi4_0_awaddr; // @[LazyModule.scala 167:57:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673402.4]
  assign axi4frag_auto_in_awlen = io_axi4_0_awlen; // @[LazyModule.scala 167:57:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673402.4]
  assign axi4frag_auto_in_awsize = io_axi4_0_awsize; // @[LazyModule.scala 167:57:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673402.4]
  assign axi4frag_auto_in_awburst = io_axi4_0_awburst; // @[LazyModule.scala 167:57:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673402.4]
  assign axi4frag_auto_in_wvalid = io_axi4_0_wvalid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673402.4]
  assign axi4frag_auto_in_wdata = io_axi4_0_wdata; // @[LazyModule.scala 167:57:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673402.4]
  assign axi4frag_auto_in_wstrb = io_axi4_0_wstrb; // @[LazyModule.scala 167:57:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673402.4]
  assign axi4frag_auto_in_wlast = io_axi4_0_wlast; // @[LazyModule.scala 167:57:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673402.4]
  assign axi4frag_auto_in_bready = io_axi4_0_bready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673402.4]
  assign axi4frag_auto_in_arvalid = io_axi4_0_arvalid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673402.4]
  assign axi4frag_auto_in_arid = io_axi4_0_arid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673402.4]
  assign axi4frag_auto_in_araddr = io_axi4_0_araddr; // @[LazyModule.scala 167:57:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673402.4]
  assign axi4frag_auto_in_arlen = io_axi4_0_arlen; // @[LazyModule.scala 167:57:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673402.4]
  assign axi4frag_auto_in_arsize = io_axi4_0_arsize; // @[LazyModule.scala 167:57:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673402.4]
  assign axi4frag_auto_in_arburst = io_axi4_0_arburst; // @[LazyModule.scala 167:57:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673402.4]
  assign axi4frag_auto_in_rready = io_axi4_0_rready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673402.4]
  assign axi4frag_auto_out_awready = axi4buf_auto_in_awready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4frag_auto_out_wready = axi4buf_auto_in_wready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4frag_auto_out_bvalid = axi4buf_auto_in_bvalid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4frag_auto_out_bid = axi4buf_auto_in_bid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4frag_auto_out_bresp = axi4buf_auto_in_bresp; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4frag_auto_out_buser = axi4buf_auto_in_buser; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4frag_auto_out_arready = axi4buf_auto_in_arready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4frag_auto_out_rvalid = axi4buf_auto_in_rvalid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4frag_auto_out_rid = axi4buf_auto_in_rid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4frag_auto_out_rdata = axi4buf_auto_in_rdata; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4frag_auto_out_rresp = axi4buf_auto_in_rresp; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4frag_auto_out_ruser = axi4buf_auto_in_ruser; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
  assign axi4frag_auto_out_rlast = axi4buf_auto_in_rlast; // @[LazyModule.scala 167:31:freechips.rocketchip.system.LvNAFPGAConfigsidewinder.fir@673404.4]
endmodule
