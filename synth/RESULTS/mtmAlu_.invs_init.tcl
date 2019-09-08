#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 09/08/2019 04:11:31
#
#####################################################################


read_mmmc results/mtmAlu_.mmmc.tcl

read_physical -lef {/cad/dk/umc180/SUS/SUSLIB_UCL_tech.lef /cad/dk/umc180/SUS/SUSLIB_UCL.lef}

read_netlist results/mtmAlu_.v

init_design
