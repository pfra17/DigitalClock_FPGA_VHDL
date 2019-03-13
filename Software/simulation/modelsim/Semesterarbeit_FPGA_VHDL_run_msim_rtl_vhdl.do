transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/frase/Google\ Drive/Juventus_Technikerschule/4.Semester_ED/FPGA_VHDL/Semesterarbeit/Software/db {C:/Users/frase/Google Drive/Juventus_Technikerschule/4.Semester_ED/FPGA_VHDL/Semesterarbeit/Software/db/pll_altpll.v}
vcom -93 -work work {C:/Users/frase/Google Drive/Juventus_Technikerschule/4.Semester_ED/FPGA_VHDL/Semesterarbeit/Software/Semesterarbeit_FPGA_VHDL.vhd}
vcom -93 -work work {C:/Users/frase/Google Drive/Juventus_Technikerschule/4.Semester_ED/FPGA_VHDL/Semesterarbeit/Software/VGA_SYNC.vhd}
vcom -93 -work work {C:/Users/frase/Google Drive/Juventus_Technikerschule/4.Semester_ED/FPGA_VHDL/Semesterarbeit/Software/pll.vhd}

