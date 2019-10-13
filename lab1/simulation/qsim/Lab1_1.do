onerror {quit -f}
vlib work
vlog -work work Lab1_1.vo
vlog -work work Lab1_1.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Block4_vlg_vec_tst
vcd file -direction Lab1_1.msim.vcd
vcd add -internal Block4_vlg_vec_tst/*
vcd add -internal Block4_vlg_vec_tst/i1/*
add wave /*
run -all
