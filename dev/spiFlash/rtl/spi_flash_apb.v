`timescale 1ns / 1ps

module spi_flash_apb
(
//APB interface signals
input PRESETn,
input PCLK,
input [31:0] PADDR,
input PSELx,
input PENABLE,
input PWRITE,
input [31:0] PWDATA,

output [31:0] PRDATA,
output PRSLVERR,
output PREADY,
output reg [3:0]   state,

//To spi_flash_controller signal
output              spi_clk,
output              spi_resetn,
output reg [4:0]        cmd_type,
output [7:0]        cmd_code,
output [23:0]       cmd_addr,
input               cmd_done,
input [7:0]         cmd_rdata,
input               cmd_rvalid

);

parameter CMD_NONE  =   5'b00000; //no request
parameter CMD_RD_ID   =   5'b10000; //read id
parameter CMD_WR_EN    =  5'b10001; //write enable
parameter CMD_ERASE_SEC = 5'b10010; //erase sector
parameter CMD_RD_ST_REG = 5'b10011; //read state register
parameter CMD_WR_DIS    = 5'b10100; //write disable
parameter CMD_PROG_PAGE = 5'b10101; //programm page
parameter CMD_RD_DATA   = 5'b10111; //read data

parameter SPI_NOTHING  = 8'h00;
parameter SPI_CMD_WRITE= 8'h02;
parameter SPI_CMD_READ = 8'h03;


parameter   STATE_IDLE            =   4'b0000;
parameter   STATE_SEND_CODE_ADDR  =   4'b0001;
parameter   STATE_READ_WAIT       =   4'b0010;
parameter   STATE_WRITE_DATA      =   4'b0011;
parameter   STATE_FINISH_DONE     =   4'b0100;

//reg   [3:0]   state;
reg   [31:0]  data_to_AXI;
reg           cmd_done_delay;
reg   [7:0]   code_reg;
reg   [23:0]  addr_reg;


//----------------APB clock -> spi clock--------------------//
wire            spi_clk_div_in;
wire            spi_clk_div_out;

assign spi_clk_div_in = PCLK;

spi_clock_div 
#(
  .N(4),                 // N = (APB freq/spi Frequncy)/2
  .WIDTH(4)
)
u0_spi_clock_div(
  .clk(spi_clk_div_in),
  .rst(spi_resetn),
  .clk_out(spi_clk_div_out)
);



assign spi_clk = spi_clk_div_out;
assign spi_resetn = PRESETn;
assign PRSLVERR =1'b0;

always@(posedge PCLK) begin
    if(!PRESETn) begin
        state <=STATE_IDLE;
        cmd_type <= CMD_NONE;
        code_reg <= SPI_NOTHING;
        addr_reg <= 24'd0;
    end
    else begin
        case(state)
            STATE_IDLE: begin
                if(PENABLE == 1'b1 && PWRITE == 1'b0) begin
                    state    <= STATE_READ_WAIT;
                    cmd_type <= CMD_RD_DATA;
                    code_reg <= SPI_CMD_READ;
                    addr_reg <= PADDR[23:0];
                end
                else if(PENABLE == 1'b1 && PWRITE == 1'b1) begin
                    state    <= STATE_WRITE_DATA;
                    cmd_type <= CMD_PROG_PAGE;
                    code_reg <= SPI_CMD_WRITE;
                    addr_reg <= PADDR[23:0];
                end
                else begin
                    state    <= STATE_IDLE;
                    cmd_type <= CMD_NONE;
                    code_reg <= SPI_NOTHING;
                    addr_reg <= 24'd0;
                end
            end

            STATE_READ_WAIT:    begin
                if(cmd_done) begin
                    state <= STATE_FINISH_DONE;
                    cmd_type <= CMD_NONE;
                    code_reg <= SPI_NOTHING;
                    addr_reg <= 24'd0;
                end
                else if(cmd_rvalid == 1'b1) begin
                    state <= STATE_READ_WAIT;
                    cmd_type <= CMD_NONE;
                    code_reg <= SPI_NOTHING;
                    addr_reg <= 24'd0;           
                end
            end

            STATE_WRITE_DATA: begin
                state <= STATE_READ_WAIT;
                cmd_type <= CMD_NONE;
                code_reg <= SPI_NOTHING;
                addr_reg <= 24'd0; 
            end

            STATE_FINISH_DONE: begin
                state <= STATE_IDLE;
                cmd_type <= CMD_NONE;
                code_reg <= SPI_NOTHING;
                addr_reg <= 24'd0;
            end
        endcase
    end
end

always@(posedge PCLK)
begin
    if(!PRESETn)   cmd_done_delay <= 1'd0;
    else           cmd_done_delay <= cmd_done;
end

assign data_valid = (cmd_done && ~cmd_done_delay);
assign PREADY     = (data_valid)? 1'b1 :1'b0;
assign PRDATA     = (data_valid)? data_to_AXI :32'd0;


assign cmd_code = code_reg;
assign cmd_addr = addr_reg;

spi_flash_data_collecter u0_collecer(
    .spi_clk(spi_clk),
    .spi_resetn(spi_resetn),
    .state(state),
    .cmd_done(cmd_done),
    .cmd_rvalid(cmd_rvalid),
    .cmd_rdata(cmd_rdata),
    .data_to_AXI(data_to_AXI)
);


endmodule


