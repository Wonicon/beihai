#include <am.h>
#include <klib.h>

#define FREQ 50000000
#define BAUD 115200
#define DIV  434 //FREQ/(BAUD*16)

#define DL 27=0x1b

typedef unsigned char     uint8;
typedef unsigned short    uint16;
typedef unsigned long     uint32;

#define UART_BASE 	0x40600000

#define REG8(add)  *((volatile unsigned char *)  (add))
#define REG16(add) *((volatile unsigned short *) (add))
//#define REG32(add) *((volatile unsigned long *)  (add)) //rv32
#define REG32(add) *((volatile unsigned int*)  (add))  //rv64

//UART Register
#define CMD55 0x3700
 
void main()
{
  REG32(UART_BASE+0x0c+0x03) = 0x83332211; //enable DLAB
  REG32(UART_BASE+0x00+0x00) = 0x4433221b; //dl[`UART_DL1]=0x1b
  REG32(UART_BASE+0x04+0x01) = 0x44330011; //dl[`UART_DL2]=0x00
  REG32(UART_BASE+0x0c+0x03) = 0x03332211; //disable DLAB
  REG32(UART_BASE+0x00+0x00) = 0x44332241; //write to tx fifo
  REG32(UART_BASE+0x00+0x00) = 0x44332242; //write to tx fifo
  REG32(UART_BASE+0x00+0x00) = 0x44332243; //write to tx fifo
}

