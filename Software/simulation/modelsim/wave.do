onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group clk /semesterarbeit_fpga_vhdl_vhd_tst/i1/g_clk
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/i1/reset
add wave -noupdate -radix decimal /semesterarbeit_fpga_vhdl_vhd_tst/i1/clock_divider
add wave -noupdate -color Cyan /semesterarbeit_fpga_vhdl_vhd_tst/i1/sec_0_ena
add wave -noupdate -color Cyan /semesterarbeit_fpga_vhdl_vhd_tst/i1/sec_1_ena
add wave -noupdate -color Cyan /semesterarbeit_fpga_vhdl_vhd_tst/i1/min_0_ena
add wave -noupdate -color Cyan /semesterarbeit_fpga_vhdl_vhd_tst/i1/min_1_ena
add wave -noupdate -color Cyan /semesterarbeit_fpga_vhdl_vhd_tst/i1/hr_0_ena
add wave -noupdate -color Cyan /semesterarbeit_fpga_vhdl_vhd_tst/i1/hr_1_ena
add wave -noupdate -color Brown -radix unsigned /semesterarbeit_fpga_vhdl_vhd_tst/i1/counter_sec_0
add wave -noupdate -color Brown -radix unsigned /semesterarbeit_fpga_vhdl_vhd_tst/i1/counter_sec_1
add wave -noupdate -color Brown -radix unsigned /semesterarbeit_fpga_vhdl_vhd_tst/i1/counter_min_0
add wave -noupdate -color Brown -radix unsigned /semesterarbeit_fpga_vhdl_vhd_tst/i1/counter_min_1
add wave -noupdate -color Brown -radix unsigned /semesterarbeit_fpga_vhdl_vhd_tst/i1/counter_hr_0
add wave -noupdate -color Brown -radix unsigned /semesterarbeit_fpga_vhdl_vhd_tst/i1/counter_hr_1
add wave -noupdate -color Magenta -itemcolor Magenta /semesterarbeit_fpga_vhdl_vhd_tst/set_switch
add wave -noupdate -color Gold -itemcolor Gold /semesterarbeit_fpga_vhdl_vhd_tst/i1/state
add wave -noupdate -color Yellow /semesterarbeit_fpga_vhdl_vhd_tst/i1/counter_up
add wave -noupdate -color Yellow /semesterarbeit_fpga_vhdl_vhd_tst/i1/accept
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/i1/confirm
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/i1/accept_confirm
add wave -noupdate -radix binary -childformat {{/semesterarbeit_fpga_vhdl_vhd_tst/i1/segment0(6) -radix binary} {/semesterarbeit_fpga_vhdl_vhd_tst/i1/segment0(5) -radix binary} {/semesterarbeit_fpga_vhdl_vhd_tst/i1/segment0(4) -radix binary} {/semesterarbeit_fpga_vhdl_vhd_tst/i1/segment0(3) -radix binary} {/semesterarbeit_fpga_vhdl_vhd_tst/i1/segment0(2) -radix binary} {/semesterarbeit_fpga_vhdl_vhd_tst/i1/segment0(1) -radix binary} {/semesterarbeit_fpga_vhdl_vhd_tst/i1/segment0(0) -radix binary}} -subitemconfig {/semesterarbeit_fpga_vhdl_vhd_tst/i1/segment0(6) {-radix binary} /semesterarbeit_fpga_vhdl_vhd_tst/i1/segment0(5) {-radix binary} /semesterarbeit_fpga_vhdl_vhd_tst/i1/segment0(4) {-radix binary} /semesterarbeit_fpga_vhdl_vhd_tst/i1/segment0(3) {-radix binary} /semesterarbeit_fpga_vhdl_vhd_tst/i1/segment0(2) {-radix binary} /semesterarbeit_fpga_vhdl_vhd_tst/i1/segment0(1) {-radix binary} /semesterarbeit_fpga_vhdl_vhd_tst/i1/segment0(0) {-radix binary}} /semesterarbeit_fpga_vhdl_vhd_tst/i1/segment0
add wave -noupdate -radix binary /semesterarbeit_fpga_vhdl_vhd_tst/i1/segment1
add wave -noupdate -radix binary /semesterarbeit_fpga_vhdl_vhd_tst/i1/segment2
add wave -noupdate -radix binary /semesterarbeit_fpga_vhdl_vhd_tst/i1/segment3
add wave -noupdate -radix unsigned /semesterarbeit_fpga_vhdl_vhd_tst/i1/index
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/i1/set_LED
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/i1/show_LED
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/i1/index_0_LED
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/i1/index_1_LED
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/i1/index_2_LED
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/i1/index_3_LED
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/i1/sec_0_LED
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/index_1_LED
add wave -noupdate /semesterarbeit_fpga_vhdl_vhd_tst/i1/reset_LED
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4030000 ps} 1} {{Cursor 2} {3030000 ps} 1}
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
WaveRestoreZoom {208924 ps} {4294781 ps}
