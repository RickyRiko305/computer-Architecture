onerror {quit -f}
vlib work
vlog -work work lab7.vo
vlog -work work lab7.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.final_vlg_vec_tst
vcd file -direction lab7.msim.vcd
vcd add -internal final_vlg_vec_tst/*
vcd add -internal final_vlg_vec_tst/i1/*
add wave /*
run -all
