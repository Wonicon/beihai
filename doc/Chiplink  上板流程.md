# Chiplink 上板流程

## 准备硬件

```bash
# @192.168.63.22
source /path/to/vivado/settings.sh
cd /proj/home/wanghuizhe/spawn/

# 生成 CPU Vivado 工程
vivado -mode batch -source 191_rocket_2-sidewinder.tcl
cd 191_rocket_2-sidewinder/
vivado 191_rocket_2-sidewinder.xpr # Generate bitstream

# 生成 Board Vivado 工程
vivado -mode batch -source 191_chiplink-sidewinder.tcl
cd 191_chiplink-sidewinder
vivado 191_chiplink-sidewinder.xpr # Generate bitstream
```

生成 bitstream 后，`spawn` 目录下的 `lvna-chip.bit` 和 `lvna-board.bit` 分别指向 `191_rocket_2-sidewinder` 和 `191_chiplink-sidewinder` 对应工程的 bitstream.

将其分别拷贝至 CPU 的 SD 卡和 Board 的 SD 卡，将 SD 卡插入对应的卡槽。

## 上板运行

将 CPU 和 Board 的 PS_UART 连接至主机，以波特率 115200 分别启动串口终端。

拨动电源上电。CPU 和 Board 的 PS 皆会在等待 5s 输入后进入自动 boot 并卡住。
复位 CPU PS，在 5s 内输入回车进入 u-boot，出现 `ZynqMP>` 提示符，输入 `run l` 并回车，这样会执行烧录 bitstream 的操作。
复位 Board PS，在 5s 内输入回车进入 u-boot，出现 `ZynqMP>` 提示符，输入 `run l` 并回车，接着输入 `run b` 并回车，这样会进一步登入 PS Linux.
使用 `print l`, `print b` 等查看环境变量的具体内容。

将 CPU PL UART 连接至主机，以波特率 115200 启动串口终端。
在 Board PS Linux 下，进入 huomiao_utils 目录，执行命令 `sh intc_run`，此操作会将 riscv 系统镜像写入内存。
在 CPU PS u-boot 下，执行命令 `mw 0x80010000 3`, 此操作撤离 PL 处理器核的复位信号，此时 CPU PL UART 应该有 riscv-linux 启动日志。
执行 `mw 0x80010000 0` 则进入复位状态，此时可以在 Board PS Linux 下执行别的 `xxx_run` 脚本装载不同镜像。

## 软件镜像（TODO）

/proj/home/wanghuizhe/sw/ 下为所使用的软件仓库，供参考。

要点：

1. riscv-pk 采用 beihai_uart 分支，适配北海 SPI UART 驱动。
2. riscv-linux 启用 drivers/irqchip/Kconfig 里 XILINX_AXI_INTC
3. riscv-linux 启用 m25p80, SPI_ON_MMC 等选项。
4. DTS 中需要描述中断控制器级联关系。