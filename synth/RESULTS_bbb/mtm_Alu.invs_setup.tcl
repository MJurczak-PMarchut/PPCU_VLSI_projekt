#####################################################################
#
# Innovus setup file
# Created by Genus(TM) Synthesis Solution on 09/08/2019 12:24:23
#
# This file can only be run in Innovus Common UI mode.
#
#####################################################################


# Design Import
###########################################################
## Reading FlowKit settings file
source RESULTS/mtm_Alu.flowkit_settings.tcl

source RESULTS/mtm_Alu.invs_init.tcl

# Reading metrics file
######################
read_metric -id current RESULTS/mtm_Alu.metrics.json 



# Mode Setup
###########################################################
source RESULTS/mtm_Alu.mode

# Reading write_name_mapping file
#################################
if {[is_attribute -obj_type port original_name] && [is_attribute -obj_type pin original_name] && [is_attribute -obj_type pin is_phase_inverted]} {
  source RESULTS/mtm_Alu.wnm_attrs.tcl
}

eval_enc { set edi_pe::pegConsiderMacroLayersUnblocked 1 }
eval_enc { set edi_pe::pegPreRouteWireWidthBasedDensityCalModel 1 }
