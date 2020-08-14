module SingleTop( // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551248.2]
  input         clock, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551249.4]
  input         reset, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551250.4]
  output        chip_c2b_clk, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551252.4]
  output        chip_c2b_rst, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551252.4]
  output        chip_c2b_send, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551252.4]
  output [31:0] chip_c2b_data, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551252.4]
  input         chip_b2c_clk, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551252.4]
  input         chip_b2c_rst, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551252.4]
  input         chip_b2c_send, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551252.4]
  input  [31:0] chip_b2c_data, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551252.4]
  input         debug_systemjtag_jtag_TCK, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551253.4]
  input         debug_systemjtag_jtag_TMS, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551253.4]
  input         debug_systemjtag_jtag_TDI, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551253.4]
  output        debug_systemjtag_jtag_TDO_data, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551253.4]
  output        debug_systemjtag_jtag_TDO_driven, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551253.4]
  input         debug_systemjtag_reset, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551253.4]
  input  [10:0] debug_systemjtag_mfr_id, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551253.4]
  output        debug_ndreset, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551253.4]
  output        debug_dmactive, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551253.4]
  input         coreclk, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551254.4]
  input         corerst, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551255.4]
  input  [6:0]  interrupts, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551256.4]
  input         reset_to_hang_en, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551257.4]
  input         mem_part_en, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551258.4]
  input         distinct_hart_dsid_en, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551259.4]
  output        mmio_apb_0_psel, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551260.4]
  output        mmio_apb_0_penable, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551260.4]
  output        mmio_apb_0_pwrite, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551260.4]
  output [29:0] mmio_apb_0_paddr, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551260.4]
  output [2:0]  mmio_apb_0_pprot, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551260.4]
  output [31:0] mmio_apb_0_pwdata, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551260.4]
  output [3:0]  mmio_apb_0_pstrb, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551260.4]
  input         mmio_apb_0_pready, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551260.4]
  input         mmio_apb_0_pslverr, // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551260.4]
  input  [31:0] mmio_apb_0_prdata // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551260.4]
);
  wire  rocket_top_clock; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_reset; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_debug_systemjtag_jtag_TCK; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_debug_systemjtag_jtag_TMS; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_debug_systemjtag_jtag_TDI; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_debug_systemjtag_jtag_TDO_data; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_debug_systemjtag_jtag_TDO_driven; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_debug_systemjtag_reset; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [10:0] rocket_top_debug_systemjtag_mfr_id; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_debug_ndreset; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_debug_dmactive; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_coreclk; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_corerst; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [6:0] rocket_top_interrupts; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_io_chip_c2b_clk; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_io_chip_c2b_rst; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_io_chip_c2b_send; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [31:0] rocket_top_io_chip_c2b_data; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_io_chip_b2c_clk; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_io_chip_b2c_rst; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_io_chip_b2c_send; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [31:0] rocket_top_io_chip_b2c_data; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_mem_tl_0_a_ready; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_mem_tl_0_a_valid; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [2:0] rocket_top_mem_tl_0_a_bits_opcode; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [2:0] rocket_top_mem_tl_0_a_bits_param; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [2:0] rocket_top_mem_tl_0_a_bits_size; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [3:0] rocket_top_mem_tl_0_a_bits_source; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [34:0] rocket_top_mem_tl_0_a_bits_address; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [5:0] rocket_top_mem_tl_0_a_bits_dsid; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [63:0] rocket_top_mem_tl_0_a_bits_instret; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [7:0] rocket_top_mem_tl_0_a_bits_mask; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [63:0] rocket_top_mem_tl_0_a_bits_data; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_mem_tl_0_a_bits_corrupt; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_mem_tl_0_d_ready; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_mem_tl_0_d_valid; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [2:0] rocket_top_mem_tl_0_d_bits_opcode; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [1:0] rocket_top_mem_tl_0_d_bits_param; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [2:0] rocket_top_mem_tl_0_d_bits_size; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [3:0] rocket_top_mem_tl_0_d_bits_source; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_mem_tl_0_d_bits_sink; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_mem_tl_0_d_bits_denied; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [63:0] rocket_top_mem_tl_0_d_bits_data; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_mem_tl_0_d_bits_corrupt; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_l2_frontend_bus_tl_0_a_ready; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_l2_frontend_bus_tl_0_a_valid; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [2:0] rocket_top_l2_frontend_bus_tl_0_a_bits_opcode; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [2:0] rocket_top_l2_frontend_bus_tl_0_a_bits_param; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [3:0] rocket_top_l2_frontend_bus_tl_0_a_bits_size; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [3:0] rocket_top_l2_frontend_bus_tl_0_a_bits_source; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [34:0] rocket_top_l2_frontend_bus_tl_0_a_bits_address; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [5:0] rocket_top_l2_frontend_bus_tl_0_a_bits_dsid; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [63:0] rocket_top_l2_frontend_bus_tl_0_a_bits_instret; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [7:0] rocket_top_l2_frontend_bus_tl_0_a_bits_mask; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [63:0] rocket_top_l2_frontend_bus_tl_0_a_bits_data; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_l2_frontend_bus_tl_0_a_bits_corrupt; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_l2_frontend_bus_tl_0_d_ready; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_l2_frontend_bus_tl_0_d_valid; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [2:0] rocket_top_l2_frontend_bus_tl_0_d_bits_opcode; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [1:0] rocket_top_l2_frontend_bus_tl_0_d_bits_param; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [3:0] rocket_top_l2_frontend_bus_tl_0_d_bits_size; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [3:0] rocket_top_l2_frontend_bus_tl_0_d_bits_source; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [1:0] rocket_top_l2_frontend_bus_tl_0_d_bits_sink; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_l2_frontend_bus_tl_0_d_bits_denied; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [63:0] rocket_top_l2_frontend_bus_tl_0_d_bits_data; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_l2_frontend_bus_tl_0_d_bits_corrupt; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_reset_to_hang_en; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_mem_part_en; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_distinct_hart_dsid_en; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_mmio_apb_0_psel; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_mmio_apb_0_penable; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_mmio_apb_0_pwrite; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [29:0] rocket_top_mmio_apb_0_paddr; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [31:0] rocket_top_mmio_apb_0_pwdata; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [3:0] rocket_top_mmio_apb_0_pstrb; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_mmio_apb_0_pready; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire  rocket_top_mmio_apb_0_pslverr; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  wire [31:0] rocket_top_mmio_apb_0_prdata; // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
  LvNAFPGATop rocket_top ( // @[ChiplinkTest.scala 422:30:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551274.4]
    .clock(rocket_top_clock),
    .reset(rocket_top_reset),
    .debug_systemjtag_jtag_TCK(rocket_top_debug_systemjtag_jtag_TCK),
    .debug_systemjtag_jtag_TMS(rocket_top_debug_systemjtag_jtag_TMS),
    .debug_systemjtag_jtag_TDI(rocket_top_debug_systemjtag_jtag_TDI),
    .debug_systemjtag_jtag_TDO_data(rocket_top_debug_systemjtag_jtag_TDO_data),
    .debug_systemjtag_jtag_TDO_driven(rocket_top_debug_systemjtag_jtag_TDO_driven),
    .debug_systemjtag_reset(rocket_top_debug_systemjtag_reset),
    .debug_systemjtag_mfr_id(rocket_top_debug_systemjtag_mfr_id),
    .debug_ndreset(rocket_top_debug_ndreset),
    .debug_dmactive(rocket_top_debug_dmactive),
    .coreclk(rocket_top_coreclk),
    .corerst(rocket_top_corerst),
    .interrupts(rocket_top_interrupts),
    .io_chip_c2b_clk(rocket_top_io_chip_c2b_clk),
    .io_chip_c2b_rst(rocket_top_io_chip_c2b_rst),
    .io_chip_c2b_send(rocket_top_io_chip_c2b_send),
    .io_chip_c2b_data(rocket_top_io_chip_c2b_data),
    .io_chip_b2c_clk(rocket_top_io_chip_b2c_clk),
    .io_chip_b2c_rst(rocket_top_io_chip_b2c_rst),
    .io_chip_b2c_send(rocket_top_io_chip_b2c_send),
    .io_chip_b2c_data(rocket_top_io_chip_b2c_data),
    .mem_tl_0_a_ready(rocket_top_mem_tl_0_a_ready),
    .mem_tl_0_a_valid(rocket_top_mem_tl_0_a_valid),
    .mem_tl_0_a_bits_opcode(rocket_top_mem_tl_0_a_bits_opcode),
    .mem_tl_0_a_bits_param(rocket_top_mem_tl_0_a_bits_param),
    .mem_tl_0_a_bits_size(rocket_top_mem_tl_0_a_bits_size),
    .mem_tl_0_a_bits_source(rocket_top_mem_tl_0_a_bits_source),
    .mem_tl_0_a_bits_address(rocket_top_mem_tl_0_a_bits_address),
    .mem_tl_0_a_bits_dsid(rocket_top_mem_tl_0_a_bits_dsid),
    .mem_tl_0_a_bits_instret(rocket_top_mem_tl_0_a_bits_instret),
    .mem_tl_0_a_bits_mask(rocket_top_mem_tl_0_a_bits_mask),
    .mem_tl_0_a_bits_data(rocket_top_mem_tl_0_a_bits_data),
    .mem_tl_0_a_bits_corrupt(rocket_top_mem_tl_0_a_bits_corrupt),
    .mem_tl_0_d_ready(rocket_top_mem_tl_0_d_ready),
    .mem_tl_0_d_valid(rocket_top_mem_tl_0_d_valid),
    .mem_tl_0_d_bits_opcode(rocket_top_mem_tl_0_d_bits_opcode),
    .mem_tl_0_d_bits_param(rocket_top_mem_tl_0_d_bits_param),
    .mem_tl_0_d_bits_size(rocket_top_mem_tl_0_d_bits_size),
    .mem_tl_0_d_bits_source(rocket_top_mem_tl_0_d_bits_source),
    .mem_tl_0_d_bits_sink(rocket_top_mem_tl_0_d_bits_sink),
    .mem_tl_0_d_bits_denied(rocket_top_mem_tl_0_d_bits_denied),
    .mem_tl_0_d_bits_data(rocket_top_mem_tl_0_d_bits_data),
    .mem_tl_0_d_bits_corrupt(rocket_top_mem_tl_0_d_bits_corrupt),
    .l2_frontend_bus_tl_0_a_ready(rocket_top_l2_frontend_bus_tl_0_a_ready),
    .l2_frontend_bus_tl_0_a_valid(rocket_top_l2_frontend_bus_tl_0_a_valid),
    .l2_frontend_bus_tl_0_a_bits_opcode(rocket_top_l2_frontend_bus_tl_0_a_bits_opcode),
    .l2_frontend_bus_tl_0_a_bits_param(rocket_top_l2_frontend_bus_tl_0_a_bits_param),
    .l2_frontend_bus_tl_0_a_bits_size(rocket_top_l2_frontend_bus_tl_0_a_bits_size),
    .l2_frontend_bus_tl_0_a_bits_source(rocket_top_l2_frontend_bus_tl_0_a_bits_source),
    .l2_frontend_bus_tl_0_a_bits_address(rocket_top_l2_frontend_bus_tl_0_a_bits_address),
    .l2_frontend_bus_tl_0_a_bits_dsid(rocket_top_l2_frontend_bus_tl_0_a_bits_dsid),
    .l2_frontend_bus_tl_0_a_bits_instret(rocket_top_l2_frontend_bus_tl_0_a_bits_instret),
    .l2_frontend_bus_tl_0_a_bits_mask(rocket_top_l2_frontend_bus_tl_0_a_bits_mask),
    .l2_frontend_bus_tl_0_a_bits_data(rocket_top_l2_frontend_bus_tl_0_a_bits_data),
    .l2_frontend_bus_tl_0_a_bits_corrupt(rocket_top_l2_frontend_bus_tl_0_a_bits_corrupt),
    .l2_frontend_bus_tl_0_d_ready(rocket_top_l2_frontend_bus_tl_0_d_ready),
    .l2_frontend_bus_tl_0_d_valid(rocket_top_l2_frontend_bus_tl_0_d_valid),
    .l2_frontend_bus_tl_0_d_bits_opcode(rocket_top_l2_frontend_bus_tl_0_d_bits_opcode),
    .l2_frontend_bus_tl_0_d_bits_param(rocket_top_l2_frontend_bus_tl_0_d_bits_param),
    .l2_frontend_bus_tl_0_d_bits_size(rocket_top_l2_frontend_bus_tl_0_d_bits_size),
    .l2_frontend_bus_tl_0_d_bits_source(rocket_top_l2_frontend_bus_tl_0_d_bits_source),
    .l2_frontend_bus_tl_0_d_bits_sink(rocket_top_l2_frontend_bus_tl_0_d_bits_sink),
    .l2_frontend_bus_tl_0_d_bits_denied(rocket_top_l2_frontend_bus_tl_0_d_bits_denied),
    .l2_frontend_bus_tl_0_d_bits_data(rocket_top_l2_frontend_bus_tl_0_d_bits_data),
    .l2_frontend_bus_tl_0_d_bits_corrupt(rocket_top_l2_frontend_bus_tl_0_d_bits_corrupt),
    .reset_to_hang_en(rocket_top_reset_to_hang_en),
    .mem_part_en(rocket_top_mem_part_en),
    .distinct_hart_dsid_en(rocket_top_distinct_hart_dsid_en),
    .mmio_apb_0_psel(rocket_top_mmio_apb_0_psel),
    .mmio_apb_0_penable(rocket_top_mmio_apb_0_penable),
    .mmio_apb_0_pwrite(rocket_top_mmio_apb_0_pwrite),
    .mmio_apb_0_paddr(rocket_top_mmio_apb_0_paddr),
    .mmio_apb_0_pwdata(rocket_top_mmio_apb_0_pwdata),
    .mmio_apb_0_pstrb(rocket_top_mmio_apb_0_pstrb),
    .mmio_apb_0_pready(rocket_top_mmio_apb_0_pready),
    .mmio_apb_0_pslverr(rocket_top_mmio_apb_0_pslverr),
    .mmio_apb_0_prdata(rocket_top_mmio_apb_0_prdata)
  );
  assign chip_c2b_clk = rocket_top_io_chip_c2b_clk; // @[ChiplinkTest.scala 430:10:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551294.4]
  assign chip_c2b_rst = rocket_top_io_chip_c2b_rst; // @[ChiplinkTest.scala 430:10:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551294.4]
  assign chip_c2b_send = rocket_top_io_chip_c2b_send; // @[ChiplinkTest.scala 430:10:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551294.4]
  assign chip_c2b_data = rocket_top_io_chip_c2b_data; // @[ChiplinkTest.scala 430:10:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551294.4]
  assign debug_systemjtag_jtag_TDO_data = rocket_top_debug_systemjtag_jtag_TDO_data; // @[ChiplinkTest.scala 433:11:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551295.4]
  assign debug_systemjtag_jtag_TDO_driven = rocket_top_debug_systemjtag_jtag_TDO_driven; // @[ChiplinkTest.scala 433:11:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551295.4]
  assign debug_ndreset = rocket_top_debug_ndreset; // @[ChiplinkTest.scala 433:11:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551295.4]
  assign debug_dmactive = rocket_top_debug_dmactive; // @[ChiplinkTest.scala 433:11:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551295.4]
  assign mmio_apb_0_psel = rocket_top_mmio_apb_0_psel; // @[ChiplinkTest.scala 448:14:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551302.4]
  assign mmio_apb_0_penable = rocket_top_mmio_apb_0_penable; // @[ChiplinkTest.scala 448:14:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551302.4]
  assign mmio_apb_0_pwrite = rocket_top_mmio_apb_0_pwrite; // @[ChiplinkTest.scala 448:14:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551302.4]
  assign mmio_apb_0_paddr = rocket_top_mmio_apb_0_paddr; // @[ChiplinkTest.scala 448:14:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551302.4]
  assign mmio_apb_0_pprot = 3'h1; // @[ChiplinkTest.scala 448:14:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551302.4]
  assign mmio_apb_0_pwdata = rocket_top_mmio_apb_0_pwdata; // @[ChiplinkTest.scala 448:14:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551302.4]
  assign mmio_apb_0_pstrb = rocket_top_mmio_apb_0_pstrb; // @[ChiplinkTest.scala 448:14:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551302.4]
  assign rocket_top_clock = clock; // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551289.4]
  assign rocket_top_reset = reset | rocket_top_debug_ndreset; // @[:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551290.4 ChiplinkTest.scala 427:18:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551293.4]
  assign rocket_top_debug_systemjtag_jtag_TCK = debug_systemjtag_jtag_TCK; // @[ChiplinkTest.scala 433:11:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551295.4]
  assign rocket_top_debug_systemjtag_jtag_TMS = debug_systemjtag_jtag_TMS; // @[ChiplinkTest.scala 433:11:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551295.4]
  assign rocket_top_debug_systemjtag_jtag_TDI = debug_systemjtag_jtag_TDI; // @[ChiplinkTest.scala 433:11:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551295.4]
  assign rocket_top_debug_systemjtag_reset = debug_systemjtag_reset; // @[ChiplinkTest.scala 433:11:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551295.4]
  assign rocket_top_debug_systemjtag_mfr_id = debug_systemjtag_mfr_id; // @[ChiplinkTest.scala 433:11:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551295.4]
  assign rocket_top_coreclk = coreclk; // @[ChiplinkTest.scala 435:13:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551296.4]
  assign rocket_top_corerst = corerst; // @[ChiplinkTest.scala 437:13:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551297.4]
  assign rocket_top_interrupts = interrupts; // @[ChiplinkTest.scala 439:16:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551298.4]
  assign rocket_top_io_chip_b2c_clk = chip_b2c_clk; // @[ChiplinkTest.scala 430:10:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551294.4]
  assign rocket_top_io_chip_b2c_rst = chip_b2c_rst; // @[ChiplinkTest.scala 430:10:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551294.4]
  assign rocket_top_io_chip_b2c_send = chip_b2c_send; // @[ChiplinkTest.scala 430:10:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551294.4]
  assign rocket_top_io_chip_b2c_data = chip_b2c_data; // @[ChiplinkTest.scala 430:10:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551294.4]
  assign rocket_top_mem_tl_0_a_ready = rocket_top_l2_frontend_bus_tl_0_a_ready; // @[ChiplinkTest.scala 450:31:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551303.4]
  assign rocket_top_mem_tl_0_d_valid = rocket_top_l2_frontend_bus_tl_0_d_valid; // @[ChiplinkTest.scala 450:31:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551303.4]
  assign rocket_top_mem_tl_0_d_bits_opcode = rocket_top_l2_frontend_bus_tl_0_d_bits_opcode; // @[ChiplinkTest.scala 450:31:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551303.4]
  assign rocket_top_mem_tl_0_d_bits_param = rocket_top_l2_frontend_bus_tl_0_d_bits_param; // @[ChiplinkTest.scala 450:31:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551303.4]
  assign rocket_top_mem_tl_0_d_bits_size = rocket_top_l2_frontend_bus_tl_0_d_bits_size[2:0]; // @[ChiplinkTest.scala 450:31:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551303.4]
  assign rocket_top_mem_tl_0_d_bits_source = rocket_top_l2_frontend_bus_tl_0_d_bits_source; // @[ChiplinkTest.scala 450:31:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551303.4]
  assign rocket_top_mem_tl_0_d_bits_sink = rocket_top_l2_frontend_bus_tl_0_d_bits_sink[0]; // @[ChiplinkTest.scala 450:31:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551303.4]
  assign rocket_top_mem_tl_0_d_bits_denied = rocket_top_l2_frontend_bus_tl_0_d_bits_denied; // @[ChiplinkTest.scala 450:31:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551303.4]
  assign rocket_top_mem_tl_0_d_bits_data = rocket_top_l2_frontend_bus_tl_0_d_bits_data; // @[ChiplinkTest.scala 450:31:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551303.4]
  assign rocket_top_mem_tl_0_d_bits_corrupt = rocket_top_l2_frontend_bus_tl_0_d_bits_corrupt; // @[ChiplinkTest.scala 450:31:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551303.4]
  assign rocket_top_l2_frontend_bus_tl_0_a_valid = rocket_top_mem_tl_0_a_valid; // @[ChiplinkTest.scala 450:31:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551303.4]
  assign rocket_top_l2_frontend_bus_tl_0_a_bits_opcode = rocket_top_mem_tl_0_a_bits_opcode; // @[ChiplinkTest.scala 450:31:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551303.4]
  assign rocket_top_l2_frontend_bus_tl_0_a_bits_param = rocket_top_mem_tl_0_a_bits_param; // @[ChiplinkTest.scala 450:31:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551303.4]
  assign rocket_top_l2_frontend_bus_tl_0_a_bits_size = {{1'd0}, rocket_top_mem_tl_0_a_bits_size}; // @[ChiplinkTest.scala 450:31:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551303.4]
  assign rocket_top_l2_frontend_bus_tl_0_a_bits_source = rocket_top_mem_tl_0_a_bits_source; // @[ChiplinkTest.scala 450:31:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551303.4]
  assign rocket_top_l2_frontend_bus_tl_0_a_bits_address = rocket_top_mem_tl_0_a_bits_address; // @[ChiplinkTest.scala 450:31:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551303.4]
  assign rocket_top_l2_frontend_bus_tl_0_a_bits_dsid = rocket_top_mem_tl_0_a_bits_dsid; // @[ChiplinkTest.scala 450:31:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551303.4]
  assign rocket_top_l2_frontend_bus_tl_0_a_bits_instret = rocket_top_mem_tl_0_a_bits_instret; // @[ChiplinkTest.scala 450:31:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551303.4]
  assign rocket_top_l2_frontend_bus_tl_0_a_bits_mask = rocket_top_mem_tl_0_a_bits_mask; // @[ChiplinkTest.scala 450:31:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551303.4]
  assign rocket_top_l2_frontend_bus_tl_0_a_bits_data = rocket_top_mem_tl_0_a_bits_data; // @[ChiplinkTest.scala 450:31:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551303.4]
  assign rocket_top_l2_frontend_bus_tl_0_a_bits_corrupt = rocket_top_mem_tl_0_a_bits_corrupt; // @[ChiplinkTest.scala 450:31:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551303.4]
  assign rocket_top_l2_frontend_bus_tl_0_d_ready = rocket_top_mem_tl_0_d_ready; // @[ChiplinkTest.scala 450:31:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551303.4]
  assign rocket_top_reset_to_hang_en = reset_to_hang_en; // @[ChiplinkTest.scala 441:22:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551299.4]
  assign rocket_top_mem_part_en = mem_part_en; // @[ChiplinkTest.scala 443:17:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551300.4]
  assign rocket_top_distinct_hart_dsid_en = distinct_hart_dsid_en; // @[ChiplinkTest.scala 445:27:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551301.4]
  assign rocket_top_mmio_apb_0_pready = mmio_apb_0_pready; // @[ChiplinkTest.scala 448:14:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551302.4]
  assign rocket_top_mmio_apb_0_pslverr = mmio_apb_0_pslverr; // @[ChiplinkTest.scala 448:14:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551302.4]
  assign rocket_top_mmio_apb_0_prdata = mmio_apb_0_prdata; // @[ChiplinkTest.scala 448:14:freechips.rocketchip.system.LvNAFPGAConfigzcu102.fir@551302.4]
endmodule
