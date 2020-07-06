`timescale 1ns / 1ps

module spi_flash_tb(
);

parameter addr_1 = 32'hbf00aef3;
parameter addr_2 = 32'haaf00034;
parameter addr_3 = 32'h8010fecd;

//parameter data_1 = 8'h01;
//parameter data_2 = 8'hfe;
//parameter data_3 = 8'h93;

reg clk;
reg rst_n;
reg [31:0] data_1;
reg [31:0] data_2;
reg [31:0] data_3;

reg [31:0] data_1_big;
reg [31:0] data_2_big;
reg [31:0] data_3_big;
reg [31:0] code;

//--------------APB signal---------------//
//input
reg [31:0] paddr;
reg psel;
reg penable;
reg pwrite;
reg [31:0] pwdata;

//output
wire [31:0] prdata;
wire prslverr;
wire pready;

//--------------spi signal---------------//

reg spi_miso;


wire spi_clk;
wire spi_cs;
wire spi_mosi;

//--------------state info--------------//
wire   [3:0]    apb_state_o;
wire   [3:0]    cmd_spi_state_o;

reg   [3:0]    apb_state;
reg   [3:0]    cmd_spi_state;

always@(negedge clk) begin
    if(!rst_n) begin
        cmd_spi_state<=4'd0;
    end
    else begin
        cmd_spi_state<=cmd_spi_state_o;
    end
end


parameter   C_IDLE            =   4'b0000; // 空闲状态
parameter   C_SEND_CMD        =   4'b0001; // 发送命令码
parameter   C_SEND_ADDR       =   4'b0010; // 发送地址码
parameter   C_READ_WAIT       =   4'b0011; // 读等待
parameter   C_WRITE_DATA      =   4'b0101; // 写数据
parameter   C_FINISH_DONE     =   4'b0110; // 一条指令执行结束

spi_flash_top u0_spi_flash_top(
    .rst_n(rst_n),
    .clk(clk),

    .presetn(rst_n),
    .paddr(paddr),
    .psel(psel),
    .penable(penable),
    .pwrite(pwrite),
    .pwdata(pwdata),
    .prdata(prdata),
    .prslverr(prslverr),
    .pready(pready),

    .spi_clk(spi_clk),
    .spi_cs(spi_cs),
    .spi_mosi(spi_mosi),
    .spi_miso(spi_miso),

    .apb_state(apb_state_o),
    .cmd_spi_state(cmd_spi_state_o)
);


reg [3:0] state;

parameter APB_IDE       = 4'd0;
parameter APB_SEND_ADDR_1 = 4'd1;
parameter APB_SEND_ADDR_2 = 4'd2;
parameter APB_SEND_ADDR_3 = 4'd3;
parameter APB_SEND_WAIT_DATA_1 = 4'd4;
parameter APB_SEND_WAIT_DATA_2 = 4'd5;
parameter APB_SEND_WAIT_DATA_3 = 4'd6;


always@(posedge clk)
begin
    if(!rst_n) begin
        state<=APB_IDE;
    end
    else begin
        case(state)
            APB_IDE:begin
                state<=APB_SEND_ADDR_1;
            end

            APB_SEND_ADDR_1:begin
                state<=APB_SEND_WAIT_DATA_1;
            end

            APB_SEND_WAIT_DATA_1:begin
                if(pready)begin
                    state<=APB_SEND_ADDR_2;
                    $display("Got data_1 %h from %h !",prdata,paddr);
                    if(prdata == data_1_big) begin
                        $display("[TEST_1 PASS!!!!]");
                    end
                    else begin
                        $display("[DATA_1 FAIL...]");
                    end
                end
                else begin
                    state<=state;
                end
            end

            APB_SEND_ADDR_2:begin
                state<=APB_SEND_WAIT_DATA_2;
            end

            APB_SEND_WAIT_DATA_2:begin
                if(pready)begin
                    state<=APB_SEND_ADDR_3;
                    $display("Got data_2 %h from %h !",prdata,paddr);
                    if(prdata == data_2_big) begin
                        $display("[TEST_2 PASS!!!!]");
                    end
                    else begin
                        $display("[DATA_2 FAIL...]");
                    end
                end
                else begin
                    state<=state;
                end
            end

            APB_SEND_ADDR_3:begin
                state<=APB_SEND_WAIT_DATA_3;
            end

            APB_SEND_WAIT_DATA_3:begin
                if(pready)begin
                    state<=APB_IDE;
                    $display("Got data_3 %h from %h !",prdata,paddr);
                    if(prdata == data_3_big) begin
                        $display("[ALL PASS!!!!]");
                    end
                    else begin
                        $display("[DATA_3 FAIL...]");
                    end
                    $display("Test Over!!!");
                    $finish;
                end
                else begin
                    state<=state;
                end
            end
        endcase
    end
end

always@(posedge clk)
begin
    if(!rst_n) begin
        paddr<=32'd0;
        psel<=1'b0;
        penable<=1'b0;
        pwrite<=1'b0;
    end
    else begin
        if(state == APB_SEND_ADDR_1) begin
            paddr<=addr_1;
            psel<=1'b1;
            penable<=1'b1;
            pwrite<=1'b0;
        end
        else if(state == APB_SEND_ADDR_2) begin
            paddr<=addr_2;
            psel<=1'b1;
            penable<=1'b1;
            pwrite<=1'b0;
        end
        else if(state == APB_SEND_ADDR_3) begin
            paddr<=addr_3;
            psel<=1'b1;
            penable<=1'b1;
            pwrite<=1'b0;
        end
    end
end

reg [23:0] spi_addr;
reg [7:0]  spi_code;

reg [4:0] addr_pointer;
reg [4:0] data_pointer;
reg [3:0] code_pointer;
reg read_byte;


always@(posedge spi_clk) begin
    if(spi_cs) begin
        spi_addr<=24'h0;
        //spi_miso<=1'b0;
        spi_code<=8'd0;

        addr_pointer<=5'd23;
        data_pointer<=5'd31;
        code_pointer<=3'd7;

        read_byte<=1'b0;
        
    end
    else if(cmd_spi_state == C_SEND_CMD) begin
        if(code_pointer > 0 ) begin
            spi_code[code_pointer]<=spi_mosi;
            code_pointer<=code_pointer - 1'd1; 
        end
        else begin
            spi_code[code_pointer]<=spi_mosi;
            code_pointer<=3'd7; 
        end
    end
    else if(cmd_spi_state == C_SEND_ADDR) begin
        // if(spi_code == code) begin
        //     $display("Send Right SPI-code!!!!");
        // end
        // else begin
        //     $display("[expect %h][got %h]SPI-code send fail....",code,spi_code);
        // end
        if(addr_pointer > 0 ) begin
            spi_addr[addr_pointer]<=spi_mosi;
            addr_pointer<=addr_pointer - 1'd1; 
        end
        else begin
            spi_addr[addr_pointer]<=spi_mosi;
            addr_pointer<=5'd23; 
        end
    end 
    else if(cmd_spi_state_o == C_READ_WAIT ) begin
       case(state)
        APB_SEND_WAIT_DATA_1: begin
            // if(spi_addr == addr_1) begin
            //     $display("Send Right spi_addr_1!!!!");
            // end
            // else begin
            //     $display("[expect %h][got %h]spi_addr_1 send fail....",addr_1,spi_addr);
            // end

            if(data_pointer > 0) begin
                //spi_miso<=data_1[data_pointer];
                data_pointer<=data_pointer - 1'd1; 
                read_byte<=1'b0;
            end
            else begin
                //spi_miso<=data_1[data_pointer];
                data_pointer<=5'd0; 
                read_byte<=1'b1;
            end
        end

        APB_SEND_WAIT_DATA_2: begin
            // if(spi_addr == addr_2) begin
            //     $display("Send Right spi_addr_2!!!!");
            // end
            // else begin
            //     $display("[expect %h][got %h]spi_addr_2 send fail....",addr_2,spi_addr);
            // end

            if(data_pointer > 0) begin
                //spi_miso<=data_2[data_pointer];
                data_pointer<=data_pointer - 1'd1; 
                read_byte<=1'b0;
            end
            else begin
                //spi_miso<=data_2[data_pointer];
                data_pointer<=5'd0; 
                read_byte<=1'b1;
            end
        end
        
        APB_SEND_WAIT_DATA_3: begin
            // if(spi_addr == addr_3) begin
            //     $display("Send Right spi_addr_3!!!!");
            // end
            // else begin
            //     $display("[expect %h][got %h]spi_addr_3 send fail....",addr_3,spi_addr);
            // end

            if(data_pointer > 0) begin
                //spi_miso<=data_3[data_pointer];
                data_pointer<=data_pointer - 1'd1; 
                read_byte<=1'b0;
            end
            else begin
                //spi_miso<=data_3[data_pointer];
                data_pointer<=5'd0;
                read_byte<=1'b1; 
            end
        end
       endcase
    end
end

always@(*) begin
    if(!rst_n) begin
        spi_miso = 1'b0;
    end
    else if(cmd_spi_state_o == C_READ_WAIT && read_byte==1'b0) begin
        case(state)
            APB_SEND_WAIT_DATA_1: spi_miso=data_1[data_pointer];
            APB_SEND_WAIT_DATA_2: spi_miso=data_2[data_pointer];
            APB_SEND_WAIT_DATA_3: spi_miso=data_3[data_pointer];
        endcase 
    end
end

initial begin
  clk <= 0;
  rst_n <= 0;
  repeat (300) @(posedge clk);
  rst_n <= 1;

  data_1<=32'h01fe80dd;
  data_2<=32'hfeff4688;
  data_3<=32'h9d7794fa;

  data_1_big<=32'hdd80fe01;
  data_2_big<=32'h8846fffe;
  data_3_big<=32'hfa94779d;

  code<=8'h03;
end

always begin
  #2.000 clk <= ~clk;
end

initial begin
  $display("start vpd!!!");
  $vcdpluson;
end

endmodule