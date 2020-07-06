`timescale 1ns / 1ps

module spi_flash_ctrl
(
rst_n,    // 复位信号
clk,      // 25MHz时钟信号

spi_clk,  // SPI总线串行时钟线
spi_cs,   // SPI总线片选信号
spi_mosi, // SPI总线输出信号线，也是QSPI Flash的输入信号线
spi_miso, // SPI总线输入信号线，也是QSPI Flash的输出信号线

cmd_type, // 命令类型
cmd_code, // 命令码
cmd_addr,// QSPI Flash地址
cmd_done,        // 指令执行结束标志
cmd_rdata,       // 从QSPI Flash读出的数据
cmd_rvalid, // 读一个字节完成的标志
cmd_spi_state       // 状态机，用于在顶层调试用
);

`define CMD_RD_ID      4'h0 //read id
`define CMD_WR_EN      4'h1 //write enable
`define CMD_ERASE_SEC  4'h2 //erase sector
`define CMD_RD_ST_REG  4'h3 //read state register
`define CMD_WR_DIS     4'h4 //write disable
`define CMD_PROG_PAGE  4'h5 //programm page
`define CMD_RD_DATA    4'h7 //read data

input           rst_n;    // 复位信号
input           clk;      // 25MHz时钟信号

output          spi_clk;  // SPI总线串行时钟线
output          spi_cs;   // SPI总线片选信号
output          spi_mosi; // SPI总线输出信号线，也是QSPI Flash的输入信号线
input           spi_miso; // SPI总线输入信号线，也是QSPI Flash的输出信号线

input   [4:0]   cmd_type; // 命令类型
input   [7:0]   cmd_code; // 命令码
input   [23:0]  cmd_addr;// QSPI Flash地址
output          cmd_done;        // 指令执行结束标志
output  [7:0]   cmd_rdata;       // 从QSPI Flash读出的数据
output          cmd_rvalid; // 读一个字节完成的标志
output  [3:0]   cmd_spi_state;       // 状态机，用于在顶层调试用

reg                spi_cs;            // SPI总线片选信号
reg                spi_mosi;          // SPI总线输出信号线，也是QSPI Flash的输入信号线

wire   [4:0]       cmd_type;        // 命令类型
wire   [7:0]       cmd_code;        // 命令码
wire   [23:0]      cmd_addr;       // QSPI Flash地址

reg                cmd_done;        // 指令执行结束标志
reg    [7:0]       cmd_rdata;       // 从QSPI Flash读出的数据
reg                cmd_rvalid; // 读一个字节完成的标志
reg    [3:0]       cmd_spi_state;      // 状态机，用于在顶层调试用

parameter   C_IDLE            =   4'b0000; // 空闲状态
parameter   C_SEND_CMD        =   4'b0001; // 发送命令码
parameter   C_SEND_ADDR       =   4'b0010; // 发送地址码
parameter   C_READ_WAIT       =   4'b0011; // 读等待
parameter   C_WRITE_DATA      =   4'b0101; // 写数据
parameter   C_FINISH_DONE     =   4'b0110; // 一条指令执行结束

reg         [7:0]   read_data_reg; // 从Flash中读出的数据用这个变量进行缓存，等读完了在把这个变量的值给输出
reg                 qspi_clk_en; // 串行时钟使能信号
reg                 data_come_single; // 单线操作读数据使能信号，当这个信号为高时
            
reg         [7:0]   cmd_reg; // 命令码寄存器
reg         [23:0]  address_reg; // 地址码寄存器 
reg         [7:0]   write_bits_cnt; // 写bit计数器，写数据之前把它初始化为7，发送一个bit就减1
reg         [8:0]   write_bytes_cnt; // 写字节计数器，发送一个字节数据就把它加1
reg         [7:0]   read_bits_cnt; // 写bit计数器，接收一个bit就加1
reg         [8:0]   read_bytes_cnt; // 读字节计数器，接收一个字节数据就把它加1
reg         [8:0]   read_bytes_num; // 要接收的数据总数
reg                 read_finish; // 读数据结束标志位

wire        [7:0]   rom_addr;  
wire        [7:0]   rom_out;  

assign spi_clk = qspi_clk_en ? clk : 0; // 产生串行时钟信号
assign rom_addr = write_bytes_cnt;

////////////////////////////////////////////////////////////////////////////////////////////
// 功能：用时钟的下降沿发送数据
////////////////////////////////////////////////////////////////////////////////////////////
always @(negedge clk) begin
  if(!rst_n) begin
    spi_cs            <=  1'b1;        
    cmd_spi_state     <=  C_IDLE;
    cmd_reg           <=  0;
    address_reg       <=  0;
    qspi_clk_en       <=  1'b0;  //SPI clock输出不使能
    write_bits_cnt    <=  0;
    write_bytes_cnt   <=  0;
    read_bytes_num    <=  0;    
    address_reg       <=  0;
    cmd_done          <=  1'b0;
    data_come_single  <=  1'b0;           
  end
  else begin
    case(cmd_spi_state)
      C_IDLE:  begin// 初始化各个寄存器，当检测到命令类型有效(命令类型的最高位位1)以后,进入发送命令码状态
	qspi_clk_en  <=   1'b0;
	spi_cs      <=   1'b1;
	spi_mosi    <=   1'b0;    
	cmd_reg      <=   cmd_code;
	address_reg  <=   cmd_addr;
	cmd_done     <=   1'b0;            
	if(cmd_type[4] == 1'b1) begin //如果flash操作命令请求
	  cmd_spi_state        <=  C_SEND_CMD;
	  write_bits_cnt    <=  7;        
	  write_bytes_cnt   <=  0;
	  read_bytes_num    <=  0;                    
	end
      end
      C_SEND_CMD: begin// 发送8-bit命令码状态 
        qspi_clk_en       <=  1'b1; // 打开SPI串行时钟SCLK的使能开关
        spi_cs           <=  1'b0; // 拉低片选信号CS
        if(write_bits_cnt > 0) begin //如果cmd_reg还没有发送完
          spi_mosi        <=  cmd_reg[write_bits_cnt];         //发送bit7~bit1位
          write_bits_cnt   <=  write_bits_cnt-1'b1;
        end                            
        else begin  //发送bit0
          spi_mosi <=  cmd_reg[0];
          if ((cmd_type[3:0] == `CMD_WR_EN) | (cmd_type[3:0] == `CMD_WR_DIS)) begin //如果是写使能指令(Write Enable)或者写不使能指令(Write Disable)
            cmd_spi_state    <=  C_FINISH_DONE;
          end                          
          else if (cmd_type[3:0] == `CMD_RD_ST_REG) begin //如果是读状态寄存器指令(Read Register)
            cmd_spi_state        <=  C_READ_WAIT;
            write_bits_cnt    <=  7;
            read_bytes_num    <=  1;//读状态寄存器指令需要接收一个数据 
          end                             
          else if( (cmd_type[3:0] == `CMD_ERASE_SEC) || (cmd_type[3:0] == `CMD_PROG_PAGE) || (cmd_type[3:0] == `CMD_RD_DATA) || (cmd_type[3:0] == `CMD_RD_ID) ) begin
            // 如果是扇区擦除(Sector Erase),页编程指令(Page Program),读数据指令(Read Data),读设备ID指令(Read Device ID)                          
            cmd_spi_state        <=  C_SEND_ADDR;
            write_bits_cnt    <=  23; // 这几条指令后面都需要跟一个24-bit的地址码
          end
        end
      end
      C_SEND_ADDR: begin // 发送地址状态
        if(write_bits_cnt > 0) begin //如果cmd_reg还没有发送完
          spi_mosi        <=  address_reg[write_bits_cnt]; //发送bit23~bit1位
          write_bits_cnt   <=  write_bits_cnt    -   1;    
        end                                 
        else begin 
          spi_mosi <=  address_reg[0];   //发送bit0
          if(cmd_type[3:0] == `CMD_ERASE_SEC) begin // 扇区擦除(Sector Erase)指令
            //扇区擦除(Sector Erase)指令发完24-bit地址码就执行结束了，所以直接跳到结束状态
            cmd_spi_state <= C_FINISH_DONE;    
          end
          else if (cmd_type[3:0] == `CMD_PROG_PAGE) begin // 页编程(Page Program)指令
            cmd_spi_state        <=  C_WRITE_DATA;
            write_bits_cnt    <=  7;                       
          end
          else if (cmd_type[3:0] == `CMD_RD_ID) begin // 读Device ID指令
            cmd_spi_state        <=  C_READ_WAIT;
            read_bytes_num    <=  2; //接收2个数据的Device ID
          end                                                         
          else if (cmd_type[3:0] == `CMD_RD_DATA) begin // 读数据(Read Data)指令
            cmd_spi_state        <=  C_READ_WAIT;
            read_bytes_num    <=  4;   //接收256个数据        
            //read_bytes_num    <=  1;
          end                                        
        end
      end                  
      C_READ_WAIT: begin // 读等待状态
        if(read_finish)  begin
          cmd_spi_state        <=  C_FINISH_DONE;
          data_come_single  <=  1'b0;
        end
        else begin
          data_come_single  <=  1'b1; // 单线模式下读数据标志信号，此信号为高标志正在接收数据
        end
      end
      C_WRITE_DATA: begin // 写数据状态
        if(write_bytes_cnt < 256) begin// 往QSPI Flash中写入 256个数据
          if(write_bits_cnt > 0) begin//如果数据还没有发送完
            spi_mosi         <=  rom_out[write_bits_cnt]; //发送bit7~bit1位
            write_bits_cnt    <=  write_bits_cnt  - 1'b1;                        
          end                 
          else begin                                 
            spi_mosi         <=  rom_out[0]; //发送bit0
            write_bits_cnt    <=  7;
            write_bytes_cnt   <=  write_bytes_cnt + 1'b1;
          end
        end
        else begin
          cmd_spi_state    <=  C_FINISH_DONE;
          qspi_clk_en   <=  1'b0;
        end
      end
      C_FINISH_DONE: begin
        spi_cs           <=  1'b1;
        spi_mosi         <=  1'b0;
        qspi_clk_en       <=  1'b0;
        cmd_done          <=  1'b1;
        data_come_single  <=  1'b0;
        cmd_spi_state        <=  C_IDLE;
      end
      default:cmd_spi_state    <=  C_IDLE;
    endcase         
  end
end

//////////////////////////////////////////////////////////////////////////////
// 功能：接收QSPI Flash发送过来的数据    
//////////////////////////////////////////////////////////////////////////////
always @(posedge clk) begin
  if(!rst_n) begin
    read_bytes_cnt    <=  0;
    read_bits_cnt     <=  0;
    read_finish       <=  1'b0;
    cmd_rvalid   <=  1'b0;
    read_data_reg     <=  0;
    cmd_rdata         <=  0;
  end
  else if(data_come_single) begin  // 此信号为高表示接收数据从QSPI Flash发过来的数据
    if(read_bytes_cnt < read_bytes_num) begin            
      if(read_bits_cnt < 7) begin //接收一个Byte的bit0~bit6    
        cmd_rvalid   <=  1'b0;
        read_data_reg     <=  {read_data_reg[6:0],spi_miso};
        read_bits_cnt     <=  read_bits_cnt +   1'b1;
      end
      else  begin
        cmd_rvalid   <=  1'b1;  //一个byte数据有效
        cmd_rdata         <=  {read_data_reg[6:0],spi_miso};  //接收bit7
        read_bits_cnt     <=  0;
        read_bytes_cnt    <=  read_bytes_cnt    +   1'b1;
      end
    end                               
      else begin 
        read_bytes_cnt    <=  0;
        read_finish       <=  1'b1;
        cmd_rvalid   <=  1'b0;
      end
  end                               
  else begin
    read_bytes_cnt    <=  0;
    read_bits_cnt     <=  0;
    read_finish       <=  1'b0;
    cmd_rvalid        <=  1'b0;
    read_data_reg     <=  0;
  end
end         

endmodule
