onerror {quit -f}
vlib work
vlog -work work milestone1.vo
vlog -work work milestone1.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.milestone1_vlg_vec_tst
vcd file -direction milestone1.msim.vcd
vcd add -internal milestone1_vlg_vec_tst/*
vcd add -internal milestone1_vlg_vec_tst/i1/*
add wave /*
run -all
