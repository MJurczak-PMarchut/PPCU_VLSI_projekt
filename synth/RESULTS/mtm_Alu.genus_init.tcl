#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 09/08/2019 20:46:43
#
#####################################################################


read_mmmc RESULTS/mtm_Alu.mmmc.tcl

read_physical -lef {/cad/dk/umc180/SUS/SUSLIB_UCL_tech.lef /cad/dk/umc180/SUS/SUSLIB_UCL.lef}

read_netlist RESULTS/mtm_Alu.v

init_design -skip_sdc_read
