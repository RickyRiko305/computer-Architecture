onerror {quit -f}
vlib work
vlog -work work lab_5_alu.vo
vlog -work work lab_5_alu.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ALU32_vlg_vec_tst
vcd file -direction lab_5_alu.msim.vcd
vcd add -internal ALU32_vlg_vec_tst/*
vcd add -internal ALU32_vlg_vec_tst/i1/*
add wave /*
run -all
