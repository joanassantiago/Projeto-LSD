transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/joana/OneDrive/Ambiente de Trabalho/Projeto LSD/AirfryerFSM.vhd}

