//APB
`define P_ADDR_W 30
`define P_DATA_W 32 
`define P_STRB_W `P_DATA_W/8


//24bit
`define SPI_FLASH_START  32'h10000000
`define SPI_FLASH_END    32'h10FFFFFF
`define SPI_END          32'h11FFFFFF
//20bit
`define UART_START       32'h12000000
`define UART_END         32'h121fffff


`define GPIO_START       32'h12200000
`define GPIO_END         32'h122fffff
