RTL_FLIST :=  ../amba/rtl/*.v \
             ../dev/gpio/rtl/*.v \
             ../dev/spi/rtl/*.v \
             ../dev/uart/rtl/uart_apb.v \
             ../dev/uart/rtl/uart16550/*.v \
             ../cpu/core.v ../cpu/uncore.v \
             ../top/soc_top.v \
             ../dev/spi/rtl/spi_defines.v \
             ../dev/spi/rtl/spi_clgen.v \
             ../dev/spi/rtl/spi_shift.v \
             ../dev/spi/rtl/spi_top.v \
             ../dev/spi/rtl/spi_flash.v \
             ../lib/mem/*




TB_FLIST :=   ../tb/*.v \
              ../dev/spiFlash/N25Q128A13E_VG12/code/N25Qxxx.v \









NOVAS        := /eda/tools/snps/verdi/O-2018.09-SP2/share/PLI/VCS/linux64
EXTRA        := -cpp g++ -cc gcc -LDFLAGS -Wl,--no-as-needed -P ${NOVAS}/novas.tab ${NOVAS}/pli.a
SIM_TOOL     := vcs
SIM_OPTIONS  := -full64 -debug_access+nomemcbk+dmptf -debug_region+cell +v2k +sv -timescale=1ns/10ps \
                ${EXTRA} \
                -sverilog \
                +vcd+vcdpluson \
                +notimingcheck \
                +vcs+flush+all \
                +lint=TFIPC-L \
                +define+S50 \
                +define+RANDOMIZE_REG_INIT \
                +define+RANDOMIZE_MEM_INIT \
				+incdir+../amba/rtl \
                +incdir+../dev/gpio/rtl \
                +incdir+../dev/spiFlash/N25Q128A13E_VG12 \
                +incdir+../dev/spiFlash/N25Q128A13E_VG12/include \
                +incdir+../dev/uart/rtl \
                +incdir+../dev/spi/rtl \
                +incdir+../top \
                +incdir+../dev/spiFlash/N25Q128A13E_VG12 \
                +incdir+../dev/spiFlash/N25Q128A13E_VG12/include \


simv : ${TB_FLIST} ${RTL_FLIST}
	${SIM_TOOL} ${SIM_OPTIONS} ${TB_FLIST} ${RTL_FLIST} -top soc_system

all: simv 

.PHONY : clean
clean :
	rm -fr csrc simv.daidir simv ucli.key vcdplus.vpd DVEfiles INCA_libs
