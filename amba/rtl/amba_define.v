//APB
`define P_ADDR_W 30
`define P_DATA_W 32 
`define P_STRB_W `P_DATA_W/8


//24bit
`define SPI_FLASH_START  32'h10000000
`define SPI_FLASH_END    32'h100FFFFF

//20bit
`define UART_START       32'h10100000
`define UART_END         32'h101fffff


`define GPIO_START       32'h41300000
`define GPIO_END         32'h413fffff


