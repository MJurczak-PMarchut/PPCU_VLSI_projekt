#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 09/08/2019 12:18:30
#
#####################################################################


read_mmmc RESULTS/mtmAlu.mmmc.tcl

read_physical -lef {/cad/dk/umc180/SUS/SUSLIB_UCL_tech.lef /cad/dk/umc180/SUS/SUSLIB_UCL.lef}

read_netlist RESULTS/mtmAlu.v

init_design
