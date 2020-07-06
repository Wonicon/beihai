`timescale 1ns / 1ps

module spi_flash_data_collecter(
    input spi_clk,
    input spi_resetn,
    input [3:0] state,
    input cmd_done,
    input cmd_rvalid,
    input [7:0] cmd_rdata,
    output reg [31:0] data_to_AXI 
);

parameter   STATE_IDLE            =   4'b0000;
parameter   STATE_SEND_CODE_ADDR  =   4'b0001;
parameter   STATE_READ_WAIT       =   4'b0010;
parameter   STATE_WRITE_DATA      =   4'b0011;
parameter   STATE_FINISH_DONE     =   4'b0100;

always@(posedge spi_clk) begin
    if(!spi_resetn) begin
        data_to_AXI <= 32'd0;
    end
    else begin
        if(state == STATE_READ_WAIT && cmd_done != 1'b1 && cmd_rvalid == 1'b1) begin
            data_to_AXI <= {cmd_rdata,data_to_AXI[31:8]}; //little-ending -> big-ending
        end
        else if(cmd_done == 1'b1) begin
            data_to_AXI <= data_to_AXI;
        end
        //data_valid only for 1 cycle
        else begin
            data_to_AXI <= data_to_AXI;
        end
    end
end

endmodule