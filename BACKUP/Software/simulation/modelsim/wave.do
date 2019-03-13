onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group clk /semesterarbeit_fpga_vhdl_vhd_tst/i1/g_clk
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/i1/reset
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/i1/sec_0_ena
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/i1/sec_1_ena
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/i1/min_0_ena
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/i1/min_1_ena
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/i1/hr_0_ena
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/i1/hr_1_ena
add wave -noupdate -radix decimal /semesterarbeit_fpga_vhdl_vhd_tst/i1/clock_divider
add wave -noupdate -radix unsigned /semesterarbeit_fpga_vhdl_vhd_tst/i1/counter_sec_0
add wave -noupdate -radix unsigned /semesterarbeit_fpga_vhdl_vhd_tst/i1/counter_sec_1
add wave -noupdate -radix unsigned /semesterarbeit_fpga_vhdl_vhd_tst/i1/counter_min_0
add wave -noupdate -radix unsigned /semesterarbeit_fpga_vhdl_vhd_tst/i1/counter_min_1
add wave -noupdate -radix unsigned /semesterarbeit_fpga_vhdl_vhd_tst/i1/counter_hr_0
add wave -noupdate -radix unsigned /semesterarbeit_fpga_vhdl_vhd_tst/i1/counter_hr_1
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/set_switch
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/show_LED
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/set_LED
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/i1/segment0
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/i1/segment1
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/i1/segment2
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/i1/segment3
add wave -noupdate -color Gold -itemcolor Gold /semesterarbeit_fpga_vhdl_vhd_tst/i1/state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {61607984 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {64370425 ps} {101875241 ps}
