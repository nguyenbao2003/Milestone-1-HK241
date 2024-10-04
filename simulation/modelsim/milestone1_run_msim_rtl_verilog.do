transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/NCB/Documents/Quartus/milestone1 {C:/Users/NCB/Documents/Quartus/milestone1/milestone1.sv}

vlog -sv -work work +incdir+C:/Users/NCB/Documents/Quartus/milestone1 {C:/Users/NCB/Documents/Quartus/milestone1/milestone1_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L rtl_work -L work -voptargs="+acc"  milestone1_tb

add wave *
view structure
view signals
run -all
