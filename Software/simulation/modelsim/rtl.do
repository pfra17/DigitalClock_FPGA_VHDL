if {[file exists rtl_work]} {
vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work
vcom -reportprogress 300 -work work ../../Semesterarbeit_FPGA_VHDL.vhd
vcom -reportprogress 300 -work work TB_Semesterarbeit_FPGA_VHDL.vht
quit -sim
vsim -t 1ps -gui -msgmode both -displaymsgmode both work.Semesterarbeit_FPGA_VHDL_vhd_tst
do wave.do
run 300 us