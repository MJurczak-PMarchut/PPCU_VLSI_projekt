#####################################################################
#
# Innovus setup file
# Created by Genus(TM) Synthesis Solution on 09/08/2019 04:11:31
#
# This file can only be run in Innovus Common UI mode.
#
#####################################################################


# Design Import
###########################################################
## Reading FlowKit settings file
source results/mtmAlu_.flowkit_settings.tcl

source results/mtmAlu_.invs_init.tcl

# Reading metrics file
######################
read_metric -id current results/mtmAlu_.metrics.json 



# Mode Setup
###########################################################
source results/mtmAlu_.mode

# Reading write_name_mapping file
#################################
if {[is_attribute -obj_type port original_name] && [is_attribute -obj_type pin original_name] && [is_attribute -obj_type pin is_phase_inverted]} {
  source results/mtmAlu_.wnm_attrs.tcl
}

eval_enc { set edi_pe::pegConsiderMacroLayersUnblocked 1 }
eval_enc { set edi_pe::pegPreRouteWireWidthBasedDensityCalModel 1 }
