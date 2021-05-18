transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/GitHub/ev21g1/project/modules {C:/GitHub/ev21g1/project/modules/register32.v}
vlog -vlog01compat -work work +incdir+C:/GitHub/ev21g1/project/modules {C:/GitHub/ev21g1/project/modules/eregister32.v}

