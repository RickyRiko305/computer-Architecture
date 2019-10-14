onerror {quit -f}
vlib work
vlog -work work register32_bit.vo
vlog -work work register32_bit.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.q2_pc_vlg_vec_tst
vcd file -direction register32_bit.msim.vcd
vcd add -internal q2_pc_vlg_vec_tst/*
vcd add -internal q2_pc_vlg_vec_tst/i1/*
add wave /*
run -all
