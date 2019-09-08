#####################################################################
#
# Innovus setup file
# Created by Genus(TM) Synthesis Solution on 09/08/2019 12:18:30
#
# This file can only be run in Innovus Common UI mode.
#
#####################################################################


# Design Import
###########################################################
## Reading FlowKit settings file
source RESULTS/mtmAlu.flowkit_settings.tcl

source RESULTS/mtmAlu.invs_init.tcl

# Reading metrics file
######################
read_metric -id current RESULTS/mtmAlu.metrics.json 



# Mode Setup
###########################################################
source RESULTS/mtmAlu.mode

# Reading write_name_mapping file
#################################
if {[is_attribute -obj_type port original_name] && [is_attribute -obj_type pin original_name] && [is_attribute -obj_type pin is_phase_inverted]} {
  source RESULTS/mtmAlu.wnm_attrs.tcl
}

eval_enc { set edi_pe::pegConsiderMacroLayersUnblocked 1 }
eval_enc { set edi_pe::pegPreRouteWireWidthBasedDensityCalModel 1 }
