#include <am.h>
#include <klib.h>

typedef unsigned char     uint8;
typedef unsigned short    uint16;
typedef unsigned long     uint32;

#define GPIO_BASE 	0x40900000

#define REG8(add)  *((volatile unsigned char *)  (add))
#define REG16(add) *((volatile unsigned short *) (add))
//#define REG32(add) *((volatile unsigned long *)  (add)) //rv32
#define REG32(add) *((volatile unsigned int*)  (add))  //rv64

void main()
{
  volatile uint32 gpio;
  gpio = REG32(GPIO_BASE+0x00);
  REG32(GPIO_BASE+0x08) = 0xffffffff;
  REG32(GPIO_BASE+0x04) = gpio & 0x0ffffff;
}

