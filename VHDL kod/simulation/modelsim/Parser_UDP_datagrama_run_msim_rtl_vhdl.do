transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {/home/tk-student/APC/APC_projekat-Parser_UDP_datagrama/VHDL kod/Parser_UDP_datagrama.vhd}

