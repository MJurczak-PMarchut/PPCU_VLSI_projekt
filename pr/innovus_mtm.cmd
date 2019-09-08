#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sun Sep  8 20:47:55 2019                
#                                                     
#######################################################

#@(#)CDS: Innovus v17.13-s098_1 (64bit) 02/08/2018 11:26 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 17.13-s098_1 NR180117-1602/17_13-UB (database version 2.30, 414.7.1) {superthreading v1.44}
#@(#)CDS: AAE 17.13-s036 (64bit) 02/08/2018 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 17.13-s031_1 () Feb  1 2018 09:16:44 ( )
#@(#)CDS: SYNTECH 17.13-s011_1 () Jan 14 2018 01:24:42 ( )
#@(#)CDS: CPE v17.13-s062
#@(#)CDS: IQRC/TQRC 16.1.1-s220 (64bit) Fri Aug  4 09:53:48 PDT 2017 (Linux 2.6.18-194.el5)

set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
set_db init_power_nets {vddd vddb}
set_db init_ground_nets {gndd gndb}
is_attribute flow_edit_wildcard_end_steps -obj_type root
set_db flow_edit_wildcard_end_steps {}
is_attribute flow_edit_wildcard_start_steps -obj_type root
set_db flow_edit_wildcard_start_steps {}
is_attribute flow_footer_tcl -obj_type root
set_db flow_footer_tcl {}
is_attribute flow_header_tcl -obj_type root
set_db flow_header_tcl {}
is_attribute flow_metadata -obj_type root
set_db flow_metadata {}
is_attribute flow_step_begin_tcl -obj_type root
set_db flow_step_begin_tcl {}
is_attribute flow_step_check_tcl -obj_type root
set_db flow_step_check_tcl {}
is_attribute flow_step_end_tcl -obj_type root
set_db flow_step_end_tcl {}
is_attribute flow_step_order -obj_type root
set_db flow_step_order {}
is_attribute flow_summary_tcl -obj_type root
set_db flow_summary_tcl {}
is_attribute flow_template_feature_definition -obj_type root
set_db flow_template_feature_definition {}
is_attribute flow_template_type -obj_type root
set_db flow_template_type {}
is_attribute flow_template_version -obj_type root
set_db flow_template_version {}
is_attribute flow_user_templates -obj_type root
set_db flow_user_templates {}
is_attribute flow_branch -obj_type root
set_db flow_branch {}
is_attribute flow_caller_data -obj_type root
set_db flow_caller_data {}
is_attribute flow_current -obj_type root
set_db flow_current {}
is_attribute flow_hier_path -obj_type root
set_db flow_hier_path {}
is_attribute flow_database_directory -obj_type root
set_db flow_database_directory dbs
is_attribute flow_exit_when_done -obj_type root
set_db flow_exit_when_done false
is_attribute flow_history -obj_type root
set_db flow_history {}
is_attribute flow_log_directory -obj_type root
set_db flow_log_directory logs
is_attribute flow_mail_on_error -obj_type root
set_db flow_mail_on_error false
is_attribute flow_mail_to -obj_type root
set_db flow_mail_to {}
is_attribute flow_metrics_file -obj_type root
set_db flow_metrics_file {}
is_attribute flow_metrics_snapshot_parent_uuid -obj_type root
set_db flow_metrics_snapshot_parent_uuid {}
is_attribute flow_metrics_snapshot_uuid -obj_type root
set_db flow_metrics_snapshot_uuid 0a71b8d0
is_attribute flow_overwrite_database -obj_type root
set_db flow_overwrite_database false
is_attribute flow_report_directory -obj_type root
set_db flow_report_directory reports
is_attribute flow_run_tag -obj_type root
set_db flow_run_tag {}
is_attribute flow_schedule -obj_type root
set_db flow_schedule {}
is_attribute flow_script -obj_type root
set_db flow_script {}
is_attribute flow_starting_db -obj_type root
set_db flow_starting_db {}
is_attribute flow_status_file -obj_type root
set_db flow_status_file {}
is_attribute flow_step_canonical_current -obj_type root
set_db flow_step_canonical_current {}
is_attribute flow_step_current -obj_type root
set_db flow_step_current {}
is_attribute flow_step_last -obj_type root
set_db flow_step_last {}
is_attribute flow_step_last_msg -obj_type root
set_db flow_step_last_msg {}
is_attribute flow_step_last_status -obj_type root
set_db flow_step_last_status not_run
is_attribute flow_step_next -obj_type root
set_db flow_step_next {}
is_attribute flow_working_directory -obj_type root
set_db flow_working_directory .
read_mmmc RESULTS/mtm_Alu.mmmc.tcl
read_physical -lef {/cad/dk/umc180/SUS/SUSLIB_UCL_tech.lef /cad/dk/umc180/SUS/SUSLIB_UCL.lef}
read_netlist RESULTS/mtm_Alu.v
init_design
read_metric -id current RESULTS/mtm_Alu.metrics.json
set_db timing_apply_default_primary_input_assertion false
set_db timing_clock_phase_propagation both
set_db timing_analysis_async_checks no_async
set_db extract_rc_layer_independent 1
set_db design_process_node 180
set_db place_global_reorder_scan false
set_db extract_rc_engine pre_route
is_attribute -obj_type port original_name
is_attribute -obj_type pin original_name
is_attribute -obj_type pin is_phase_inverted
set_db port:mtm_Alu/clk .original_name clk
set_db port:mtm_Alu/rst_n .original_name rst_n
set_db port:mtm_Alu/sin .original_name sin
set_db port:mtm_Alu/sout .original_name sout
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_reg[1]/NQ} .original_name {u_mtm_Alu_core/CTL[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_reg[1]/Q} .original_name {u_mtm_Alu_core/CTL[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_reg[2]/NQ} .original_name {u_mtm_Alu_core/CTL[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_reg[2]/Q} .original_name {u_mtm_Alu_core/CTL[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_reg[3]/NQ} .original_name {u_mtm_Alu_core/CTL[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_reg[3]/Q} .original_name {u_mtm_Alu_core/CTL[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_reg[4]/NQ} .original_name {u_mtm_Alu_core/CTL[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_reg[4]/Q} .original_name {u_mtm_Alu_core/CTL[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_reg[5]/NQ} .original_name {u_mtm_Alu_core/CTL[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_reg[5]/Q} .original_name {u_mtm_Alu_core/CTL[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_reg[6]/NQ} .original_name {u_mtm_Alu_core/CTL[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_reg[6]/Q} .original_name {u_mtm_Alu_core/CTL[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_reg[7]/NQ} .original_name {u_mtm_Alu_core/CTL[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_reg[7]/Q} .original_name {u_mtm_Alu_core/CTL[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[0]/NQ} .original_name {u_mtm_Alu_core/C[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[0]/Q} .original_name {u_mtm_Alu_core/C[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[1]/NQ} .original_name {u_mtm_Alu_core/C[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[1]/Q} .original_name {u_mtm_Alu_core/C[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[2]/NQ} .original_name {u_mtm_Alu_core/C[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[2]/Q} .original_name {u_mtm_Alu_core/C[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[3]/NQ} .original_name {u_mtm_Alu_core/C[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[3]/Q} .original_name {u_mtm_Alu_core/C[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[4]/NQ} .original_name {u_mtm_Alu_core/C[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[4]/Q} .original_name {u_mtm_Alu_core/C[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[5]/NQ} .original_name {u_mtm_Alu_core/C[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[5]/Q} .original_name {u_mtm_Alu_core/C[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[6]/NQ} .original_name {u_mtm_Alu_core/C[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[6]/Q} .original_name {u_mtm_Alu_core/C[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[7]/NQ} .original_name {u_mtm_Alu_core/C[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[7]/Q} .original_name {u_mtm_Alu_core/C[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[8]/NQ} .original_name {u_mtm_Alu_core/C[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[8]/Q} .original_name {u_mtm_Alu_core/C[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[9]/NQ} .original_name {u_mtm_Alu_core/C[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[9]/Q} .original_name {u_mtm_Alu_core/C[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[10]/NQ} .original_name {u_mtm_Alu_core/C[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[10]/Q} .original_name {u_mtm_Alu_core/C[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[11]/NQ} .original_name {u_mtm_Alu_core/C[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[11]/Q} .original_name {u_mtm_Alu_core/C[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[12]/NQ} .original_name {u_mtm_Alu_core/C[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[12]/Q} .original_name {u_mtm_Alu_core/C[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[13]/NQ} .original_name {u_mtm_Alu_core/C[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[13]/Q} .original_name {u_mtm_Alu_core/C[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[14]/NQ} .original_name {u_mtm_Alu_core/C[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[14]/Q} .original_name {u_mtm_Alu_core/C[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[15]/NQ} .original_name {u_mtm_Alu_core/C[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[15]/Q} .original_name {u_mtm_Alu_core/C[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[16]/NQ} .original_name {u_mtm_Alu_core/C[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[16]/Q} .original_name {u_mtm_Alu_core/C[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[17]/NQ} .original_name {u_mtm_Alu_core/C[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[17]/Q} .original_name {u_mtm_Alu_core/C[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[18]/NQ} .original_name {u_mtm_Alu_core/C[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[18]/Q} .original_name {u_mtm_Alu_core/C[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[19]/NQ} .original_name {u_mtm_Alu_core/C[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[19]/Q} .original_name {u_mtm_Alu_core/C[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[20]/NQ} .original_name {u_mtm_Alu_core/C[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[20]/Q} .original_name {u_mtm_Alu_core/C[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[21]/NQ} .original_name {u_mtm_Alu_core/C[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[21]/Q} .original_name {u_mtm_Alu_core/C[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[22]/NQ} .original_name {u_mtm_Alu_core/C[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[22]/Q} .original_name {u_mtm_Alu_core/C[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[23]/NQ} .original_name {u_mtm_Alu_core/C[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[23]/Q} .original_name {u_mtm_Alu_core/C[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[24]/NQ} .original_name {u_mtm_Alu_core/C[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[24]/Q} .original_name {u_mtm_Alu_core/C[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[25]/NQ} .original_name {u_mtm_Alu_core/C[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[25]/Q} .original_name {u_mtm_Alu_core/C[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[26]/NQ} .original_name {u_mtm_Alu_core/C[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[26]/Q} .original_name {u_mtm_Alu_core/C[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[27]/NQ} .original_name {u_mtm_Alu_core/C[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[27]/Q} .original_name {u_mtm_Alu_core/C[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[28]/NQ} .original_name {u_mtm_Alu_core/C[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[28]/Q} .original_name {u_mtm_Alu_core/C[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[29]/NQ} .original_name {u_mtm_Alu_core/C[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[29]/Q} .original_name {u_mtm_Alu_core/C[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[30]/NQ} .original_name {u_mtm_Alu_core/C[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[30]/Q} .original_name {u_mtm_Alu_core/C[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[31]/NQ} .original_name {u_mtm_Alu_core/C[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[31]/Q} .original_name {u_mtm_Alu_core/C[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/counter_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/counter[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/counter_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/counter[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/counter_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/counter[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/counter_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/counter[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/counter_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/counter[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/counter_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/counter[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/counter_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/counter[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/counter_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/counter[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/crc_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/crc[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/crc_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/crc[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/crc_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/crc[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/crc_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/crc[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/crc_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/crc[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/crc_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/crc[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/crc_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/crc[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/crc_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/crc[3]/q}
set_db pin:mtm_Alu/u_mtm_Alu_deserializer/drdy_reg/NQ .original_name u_mtm_Alu_deserializer/drdy/q
set_db pin:mtm_Alu/u_mtm_Alu_deserializer/drdy_reg/Q .original_name u_mtm_Alu_deserializer/drdy/q
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/err_flags_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/err_flags[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/err_flags_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/err_flags[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/err_flags_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/err_flags[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/err_flags_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/err_flags[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/err_flags_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/err_flags[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/err_flags_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/err_flags[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/err_flags_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/err_flags[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/err_flags_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/err_flags[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/err_flags_reg[4]/NQ} .original_name {u_mtm_Alu_deserializer/err_flags[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/err_flags_reg[4]/Q} .original_name {u_mtm_Alu_deserializer/err_flags[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/err_flags_reg[5]/NQ} .original_name {u_mtm_Alu_deserializer/err_flags[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/err_flags_reg[5]/Q} .original_name {u_mtm_Alu_deserializer/err_flags[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/err_flags_reg[6]/NQ} .original_name {u_mtm_Alu_deserializer/err_flags[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/err_flags_reg[6]/Q} .original_name {u_mtm_Alu_deserializer/err_flags[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/frame_counter_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/frame_counter[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/frame_counter_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/frame_counter[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/frame_counter_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/frame_counter[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/frame_counter_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/frame_counter[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/frame_counter_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/frame_counter[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/frame_counter_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/frame_counter[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/frame_counter_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/frame_counter[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/frame_counter_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/frame_counter[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/out[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/out[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/out[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/out[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/out[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/out[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/out[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/out[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[4]/NQ} .original_name {u_mtm_Alu_deserializer/out[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[4]/Q} .original_name {u_mtm_Alu_deserializer/out[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[5]/NQ} .original_name {u_mtm_Alu_deserializer/out[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[5]/Q} .original_name {u_mtm_Alu_deserializer/out[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[6]/NQ} .original_name {u_mtm_Alu_deserializer/out[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[6]/Q} .original_name {u_mtm_Alu_deserializer/out[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[7]/NQ} .original_name {u_mtm_Alu_deserializer/out[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[7]/Q} .original_name {u_mtm_Alu_deserializer/out[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[8]/NQ} .original_name {u_mtm_Alu_deserializer/out[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[8]/Q} .original_name {u_mtm_Alu_deserializer/out[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[9]/NQ} .original_name {u_mtm_Alu_deserializer/out[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[9]/Q} .original_name {u_mtm_Alu_deserializer/out[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[10]/NQ} .original_name {u_mtm_Alu_deserializer/out[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[10]/Q} .original_name {u_mtm_Alu_deserializer/out[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[11]/NQ} .original_name {u_mtm_Alu_deserializer/out[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[11]/Q} .original_name {u_mtm_Alu_deserializer/out[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[12]/NQ} .original_name {u_mtm_Alu_deserializer/out[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[12]/Q} .original_name {u_mtm_Alu_deserializer/out[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[13]/NQ} .original_name {u_mtm_Alu_deserializer/out[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[13]/Q} .original_name {u_mtm_Alu_deserializer/out[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[14]/NQ} .original_name {u_mtm_Alu_deserializer/out[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[14]/Q} .original_name {u_mtm_Alu_deserializer/out[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[15]/NQ} .original_name {u_mtm_Alu_deserializer/out[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[15]/Q} .original_name {u_mtm_Alu_deserializer/out[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[16]/NQ} .original_name {u_mtm_Alu_deserializer/out[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[16]/Q} .original_name {u_mtm_Alu_deserializer/out[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[17]/NQ} .original_name {u_mtm_Alu_deserializer/out[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[17]/Q} .original_name {u_mtm_Alu_deserializer/out[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[18]/NQ} .original_name {u_mtm_Alu_deserializer/out[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[18]/Q} .original_name {u_mtm_Alu_deserializer/out[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[19]/NQ} .original_name {u_mtm_Alu_deserializer/out[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[19]/Q} .original_name {u_mtm_Alu_deserializer/out[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[20]/NQ} .original_name {u_mtm_Alu_deserializer/out[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[20]/Q} .original_name {u_mtm_Alu_deserializer/out[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[21]/NQ} .original_name {u_mtm_Alu_deserializer/out[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[21]/Q} .original_name {u_mtm_Alu_deserializer/out[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[22]/NQ} .original_name {u_mtm_Alu_deserializer/out[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[22]/Q} .original_name {u_mtm_Alu_deserializer/out[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[23]/NQ} .original_name {u_mtm_Alu_deserializer/out[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[23]/Q} .original_name {u_mtm_Alu_deserializer/out[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[24]/NQ} .original_name {u_mtm_Alu_deserializer/out[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[24]/Q} .original_name {u_mtm_Alu_deserializer/out[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[25]/NQ} .original_name {u_mtm_Alu_deserializer/out[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[25]/Q} .original_name {u_mtm_Alu_deserializer/out[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[26]/NQ} .original_name {u_mtm_Alu_deserializer/out[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[26]/Q} .original_name {u_mtm_Alu_deserializer/out[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[27]/NQ} .original_name {u_mtm_Alu_deserializer/out[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[27]/Q} .original_name {u_mtm_Alu_deserializer/out[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[28]/NQ} .original_name {u_mtm_Alu_deserializer/out[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[28]/Q} .original_name {u_mtm_Alu_deserializer/out[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[29]/NQ} .original_name {u_mtm_Alu_deserializer/out[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[29]/Q} .original_name {u_mtm_Alu_deserializer/out[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[30]/NQ} .original_name {u_mtm_Alu_deserializer/out[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[30]/Q} .original_name {u_mtm_Alu_deserializer/out[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[31]/NQ} .original_name {u_mtm_Alu_deserializer/out[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[31]/Q} .original_name {u_mtm_Alu_deserializer/out[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[32]/NQ} .original_name {u_mtm_Alu_deserializer/out[32]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[32]/Q} .original_name {u_mtm_Alu_deserializer/out[32]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[33]/NQ} .original_name {u_mtm_Alu_deserializer/out[33]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[33]/Q} .original_name {u_mtm_Alu_deserializer/out[33]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[34]/NQ} .original_name {u_mtm_Alu_deserializer/out[34]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[34]/Q} .original_name {u_mtm_Alu_deserializer/out[34]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[35]/NQ} .original_name {u_mtm_Alu_deserializer/out[35]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[35]/Q} .original_name {u_mtm_Alu_deserializer/out[35]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[36]/NQ} .original_name {u_mtm_Alu_deserializer/out[36]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[36]/Q} .original_name {u_mtm_Alu_deserializer/out[36]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[37]/NQ} .original_name {u_mtm_Alu_deserializer/out[37]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[37]/Q} .original_name {u_mtm_Alu_deserializer/out[37]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[38]/NQ} .original_name {u_mtm_Alu_deserializer/out[38]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[38]/Q} .original_name {u_mtm_Alu_deserializer/out[38]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[39]/NQ} .original_name {u_mtm_Alu_deserializer/out[39]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[39]/Q} .original_name {u_mtm_Alu_deserializer/out[39]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[40]/NQ} .original_name {u_mtm_Alu_deserializer/out[40]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[40]/Q} .original_name {u_mtm_Alu_deserializer/out[40]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[41]/NQ} .original_name {u_mtm_Alu_deserializer/out[41]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[41]/Q} .original_name {u_mtm_Alu_deserializer/out[41]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[42]/NQ} .original_name {u_mtm_Alu_deserializer/out[42]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[42]/Q} .original_name {u_mtm_Alu_deserializer/out[42]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[43]/NQ} .original_name {u_mtm_Alu_deserializer/out[43]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[43]/Q} .original_name {u_mtm_Alu_deserializer/out[43]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[44]/NQ} .original_name {u_mtm_Alu_deserializer/out[44]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[44]/Q} .original_name {u_mtm_Alu_deserializer/out[44]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[45]/NQ} .original_name {u_mtm_Alu_deserializer/out[45]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[45]/Q} .original_name {u_mtm_Alu_deserializer/out[45]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[46]/NQ} .original_name {u_mtm_Alu_deserializer/out[46]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[46]/Q} .original_name {u_mtm_Alu_deserializer/out[46]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[47]/NQ} .original_name {u_mtm_Alu_deserializer/out[47]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[47]/Q} .original_name {u_mtm_Alu_deserializer/out[47]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[48]/NQ} .original_name {u_mtm_Alu_deserializer/out[48]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[48]/Q} .original_name {u_mtm_Alu_deserializer/out[48]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[49]/NQ} .original_name {u_mtm_Alu_deserializer/out[49]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[49]/Q} .original_name {u_mtm_Alu_deserializer/out[49]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[50]/NQ} .original_name {u_mtm_Alu_deserializer/out[50]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[50]/Q} .original_name {u_mtm_Alu_deserializer/out[50]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[51]/NQ} .original_name {u_mtm_Alu_deserializer/out[51]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[51]/Q} .original_name {u_mtm_Alu_deserializer/out[51]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[52]/NQ} .original_name {u_mtm_Alu_deserializer/out[52]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[52]/Q} .original_name {u_mtm_Alu_deserializer/out[52]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[53]/NQ} .original_name {u_mtm_Alu_deserializer/out[53]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[53]/Q} .original_name {u_mtm_Alu_deserializer/out[53]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[54]/NQ} .original_name {u_mtm_Alu_deserializer/out[54]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[54]/Q} .original_name {u_mtm_Alu_deserializer/out[54]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[55]/NQ} .original_name {u_mtm_Alu_deserializer/out[55]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[55]/Q} .original_name {u_mtm_Alu_deserializer/out[55]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[56]/NQ} .original_name {u_mtm_Alu_deserializer/out[56]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[56]/Q} .original_name {u_mtm_Alu_deserializer/out[56]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[57]/NQ} .original_name {u_mtm_Alu_deserializer/out[57]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[57]/Q} .original_name {u_mtm_Alu_deserializer/out[57]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[58]/NQ} .original_name {u_mtm_Alu_deserializer/out[58]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[58]/Q} .original_name {u_mtm_Alu_deserializer/out[58]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[59]/NQ} .original_name {u_mtm_Alu_deserializer/out[59]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[59]/Q} .original_name {u_mtm_Alu_deserializer/out[59]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[60]/NQ} .original_name {u_mtm_Alu_deserializer/out[60]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[60]/Q} .original_name {u_mtm_Alu_deserializer/out[60]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[61]/NQ} .original_name {u_mtm_Alu_deserializer/out[61]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[61]/Q} .original_name {u_mtm_Alu_deserializer/out[61]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[62]/NQ} .original_name {u_mtm_Alu_deserializer/out[62]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[62]/Q} .original_name {u_mtm_Alu_deserializer/out[62]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[63]/NQ} .original_name {u_mtm_Alu_deserializer/out[63]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[63]/Q} .original_name {u_mtm_Alu_deserializer/out[63]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[64]/NQ} .original_name {u_mtm_Alu_deserializer/out[64]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[64]/Q} .original_name {u_mtm_Alu_deserializer/out[64]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[65]/NQ} .original_name {u_mtm_Alu_deserializer/out[65]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[65]/Q} .original_name {u_mtm_Alu_deserializer/out[65]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[66]/NQ} .original_name {u_mtm_Alu_deserializer/out[66]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[66]/Q} .original_name {u_mtm_Alu_deserializer/out[66]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[67]/NQ} .original_name {u_mtm_Alu_deserializer/out[67]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[67]/Q} .original_name {u_mtm_Alu_deserializer/out[67]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[68]/NQ} .original_name {u_mtm_Alu_deserializer/out[68]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[68]/Q} .original_name {u_mtm_Alu_deserializer/out[68]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[69]/NQ} .original_name {u_mtm_Alu_deserializer/out[69]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[69]/Q} .original_name {u_mtm_Alu_deserializer/out[69]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[70]/NQ} .original_name {u_mtm_Alu_deserializer/out[70]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[70]/Q} .original_name {u_mtm_Alu_deserializer/out[70]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[71]/NQ} .original_name {u_mtm_Alu_deserializer/out[71]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/out_reg[71]/Q} .original_name {u_mtm_Alu_deserializer/out[71]/q}
set_db pin:mtm_Alu/u_mtm_Alu_serializer/out_reg/NQ .original_name u_mtm_Alu_serializer/out/q
set_db pin:mtm_Alu/u_mtm_Alu_serializer/out_reg/Q .original_name u_mtm_Alu_serializer/out/q
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/counter_reg[0]/NQ} .original_name {u_mtm_Alu_serializer/counter[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/counter_reg[0]/Q} .original_name {u_mtm_Alu_serializer/counter[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/counter_reg[1]/NQ} .original_name {u_mtm_Alu_serializer/counter[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/counter_reg[1]/Q} .original_name {u_mtm_Alu_serializer/counter[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/counter_reg[2]/NQ} .original_name {u_mtm_Alu_serializer/counter[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/counter_reg[2]/Q} .original_name {u_mtm_Alu_serializer/counter[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/counter_reg[3]/NQ} .original_name {u_mtm_Alu_serializer/counter[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/counter_reg[3]/Q} .original_name {u_mtm_Alu_serializer/counter[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[1]/NQ} .original_name {u_mtm_Alu_serializer/data[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[1]/Q} .original_name {u_mtm_Alu_serializer/data[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[2]/NQ} .original_name {u_mtm_Alu_serializer/data[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[2]/Q} .original_name {u_mtm_Alu_serializer/data[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[3]/NQ} .original_name {u_mtm_Alu_serializer/data[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[3]/Q} .original_name {u_mtm_Alu_serializer/data[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[4]/NQ} .original_name {u_mtm_Alu_serializer/data[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[4]/Q} .original_name {u_mtm_Alu_serializer/data[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[5]/NQ} .original_name {u_mtm_Alu_serializer/data[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[5]/Q} .original_name {u_mtm_Alu_serializer/data[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[6]/NQ} .original_name {u_mtm_Alu_serializer/data[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[6]/Q} .original_name {u_mtm_Alu_serializer/data[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[7]/NQ} .original_name {u_mtm_Alu_serializer/data[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[7]/Q} .original_name {u_mtm_Alu_serializer/data[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[8]/NQ} .original_name {u_mtm_Alu_serializer/data[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[8]/Q} .original_name {u_mtm_Alu_serializer/data[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[9]/NQ} .original_name {u_mtm_Alu_serializer/data[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[9]/Q} .original_name {u_mtm_Alu_serializer/data[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[10]/NQ} .original_name {u_mtm_Alu_serializer/data[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[10]/Q} .original_name {u_mtm_Alu_serializer/data[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[11]/NQ} .original_name {u_mtm_Alu_serializer/data[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[11]/Q} .original_name {u_mtm_Alu_serializer/data[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[12]/NQ} .original_name {u_mtm_Alu_serializer/data[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[12]/Q} .original_name {u_mtm_Alu_serializer/data[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[13]/NQ} .original_name {u_mtm_Alu_serializer/data[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[13]/Q} .original_name {u_mtm_Alu_serializer/data[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[14]/NQ} .original_name {u_mtm_Alu_serializer/data[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[14]/Q} .original_name {u_mtm_Alu_serializer/data[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[15]/NQ} .original_name {u_mtm_Alu_serializer/data[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[15]/Q} .original_name {u_mtm_Alu_serializer/data[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[16]/NQ} .original_name {u_mtm_Alu_serializer/data[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[16]/Q} .original_name {u_mtm_Alu_serializer/data[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[17]/NQ} .original_name {u_mtm_Alu_serializer/data[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[17]/Q} .original_name {u_mtm_Alu_serializer/data[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[18]/NQ} .original_name {u_mtm_Alu_serializer/data[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[18]/Q} .original_name {u_mtm_Alu_serializer/data[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[19]/NQ} .original_name {u_mtm_Alu_serializer/data[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[19]/Q} .original_name {u_mtm_Alu_serializer/data[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[20]/NQ} .original_name {u_mtm_Alu_serializer/data[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[20]/Q} .original_name {u_mtm_Alu_serializer/data[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[21]/NQ} .original_name {u_mtm_Alu_serializer/data[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[21]/Q} .original_name {u_mtm_Alu_serializer/data[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[22]/NQ} .original_name {u_mtm_Alu_serializer/data[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[22]/Q} .original_name {u_mtm_Alu_serializer/data[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[23]/NQ} .original_name {u_mtm_Alu_serializer/data[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[23]/Q} .original_name {u_mtm_Alu_serializer/data[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[24]/NQ} .original_name {u_mtm_Alu_serializer/data[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[24]/Q} .original_name {u_mtm_Alu_serializer/data[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[25]/NQ} .original_name {u_mtm_Alu_serializer/data[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[25]/Q} .original_name {u_mtm_Alu_serializer/data[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[26]/NQ} .original_name {u_mtm_Alu_serializer/data[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[26]/Q} .original_name {u_mtm_Alu_serializer/data[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[27]/NQ} .original_name {u_mtm_Alu_serializer/data[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[27]/Q} .original_name {u_mtm_Alu_serializer/data[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[28]/NQ} .original_name {u_mtm_Alu_serializer/data[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[28]/Q} .original_name {u_mtm_Alu_serializer/data[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[29]/NQ} .original_name {u_mtm_Alu_serializer/data[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[29]/Q} .original_name {u_mtm_Alu_serializer/data[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[30]/NQ} .original_name {u_mtm_Alu_serializer/data[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[30]/Q} .original_name {u_mtm_Alu_serializer/data[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[31]/NQ} .original_name {u_mtm_Alu_serializer/data[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[31]/Q} .original_name {u_mtm_Alu_serializer/data[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[32]/NQ} .original_name {u_mtm_Alu_serializer/data[32]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[32]/Q} .original_name {u_mtm_Alu_serializer/data[32]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[33]/NQ} .original_name {u_mtm_Alu_serializer/data[33]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[33]/Q} .original_name {u_mtm_Alu_serializer/data[33]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[34]/NQ} .original_name {u_mtm_Alu_serializer/data[34]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[34]/Q} .original_name {u_mtm_Alu_serializer/data[34]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[35]/NQ} .original_name {u_mtm_Alu_serializer/data[35]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[35]/Q} .original_name {u_mtm_Alu_serializer/data[35]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[36]/NQ} .original_name {u_mtm_Alu_serializer/data[36]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[36]/Q} .original_name {u_mtm_Alu_serializer/data[36]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[37]/NQ} .original_name {u_mtm_Alu_serializer/data[37]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[37]/Q} .original_name {u_mtm_Alu_serializer/data[37]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[38]/NQ} .original_name {u_mtm_Alu_serializer/data[38]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[38]/Q} .original_name {u_mtm_Alu_serializer/data[38]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[39]/NQ} .original_name {u_mtm_Alu_serializer/data[39]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_reg[39]/Q} .original_name {u_mtm_Alu_serializer/data[39]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/set_counter_reg[0]/NQ} .original_name {u_mtm_Alu_serializer/set_counter[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/set_counter_reg[0]/Q} .original_name {u_mtm_Alu_serializer/set_counter[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/set_counter_reg[1]/NQ} .original_name {u_mtm_Alu_serializer/set_counter[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/set_counter_reg[1]/Q} .original_name {u_mtm_Alu_serializer/set_counter[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/set_counter_reg[2]/NQ} .original_name {u_mtm_Alu_serializer/set_counter[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/set_counter_reg[2]/Q} .original_name {u_mtm_Alu_serializer/set_counter[2]/q}
eval_enc { set edi_pe::pegConsiderMacroLayersUnblocked 1 }
eval_enc { set edi_pe::pegPreRouteWireWidthBasedDensityCalModel 1 }
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
connect_global_net vddd -type pg_pin -pin_base_name vddd -verbose
connect_global_net gndd -type pg_pin -pin_base_name gndd -verbose
connect_global_net vddb -type pg_pin -pin_base_name vddb -verbose
connect_global_net gndb -type pg_pin -pin_base_name gndb -verbose
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
create_floorplan -site CoreSite -core_density_size 1.0 0.7 20u 20u 20u 20u
add_rings -nets {vddd gndd} -type core_rings -follow core -layer {top ME3 bottom ME3 left ME4 right ME4} -width {top 5 bottom 5 left 5 right 5} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corners {lt rt lb rb } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid none
add_rings -nets {vddb gndb} -type core_rings -follow core -layer {top ME3 bottom ME3 left ME4 right ME4} -width {top 2 bottom 2 left 2 right 2} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 13 bottom 13 left 13 right 13} -center 0 -extend_corners {lt rt lb rb } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid none
eval_legacy { addStripe -nets {vddd gndd} -layer ME5 -direction horizontal -width 5 -spacing 0.28 -set_to_set_distance 100 -start_from top -start_offset 107 -stop_offset 107 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit ME6 -padcore_ring_bottom_layer_limit ME1 -block_ring_top_layer_limit ME6 -block_ring_bottom_layer_limit ME1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape } }
eval_legacy { addStripe -nets {vddd gndd} -layer ME4 -direction vertical -width 5 -spacing 0.28 -set_to_set_distance 100 -start_from left -start_offset 105 -stop_offset 105 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit ME6 -padcore_ring_bottom_layer_limit ME1 -block_ring_top_layer_limit ME6 -block_ring_bottom_layer_limit ME1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape } }
set_db route_special_via_connect_to_shape stripe
route_special -connect core_pin -layer_change_range { ME1(1) ME6(6) } -block_pin_target nearest_target -core_pin_target first_after_row_end -allow_jogging 0 -crossover_via_layer_range { ME1(1) ME6(6) } -nets { vddb gndb } -allow_layer_change 1 -target_via_layer_range { ME1(1) ME6(6) }
route_special -connect core_pin -layer_change_range { ME1(1) ME6(6) } -block_pin_target nearest_target -core_pin_target first_after_row_end -allow_jogging 0 -crossover_via_layer_range { ME1(1) ME6(6) } -nets { vddd gndd } -allow_layer_change 1 -target_via_layer_range { ME1(1) ME6(6) }
suspend
resume
read_io_file mtm_Alu.io
suspend
resume
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
set_db timing_analysis_type ocv
set_db timing_analysis_cppr both
check_timing
time_design -pre_place -report_prefix 04_preplace -report_dir ./timingReports
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
place_opt_design -report_prefix 05_place_opt -report_dir ./timingReports
set_db add_tieoffs_cells { UCL_TIEHI UCL_TIELO }
add_tieoffs
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
time_design -pre_cts -report_prefix 06_prects -report_dir ./timingReports
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
set_db cts_inverter_cells UCL_INV4
set_db cts_buffer_cells {UCL_BUF4 UCL_BUF8 UCL_BUF8_2}
set_db cts_target_max_transition_time 0.3
clock_design
report_clock_trees -summary -out_file ./timingReports/07_clock_tree_summary.txt
report_clock_tree_structure -out_file ./timingReports/07_clock_tree_structure.txt
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
opt_design -post_cts -report_prefix 08a_postCts_setup -report_dir ./timingReports
opt_design -post_cts -hold -report_prefix 08b_postCts_hold -report_dir ./timingReports
opt_design -post_cts -drv -report_prefix 08c_postCts_drv -report_dir ./timingReports
time_design -post_cts -report_prefix 08d_time_postCts_setup -report_dir ./timingReports
time_design -post_cts -hold -report_prefix 08e_time_postCts_hold -report_dir ./timingReports
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
set_db add_fillers_cells { UCL_CAP9 UCL_CAP8 UCL_CAP7 UCL_CAP6 UCL_CAP5 UCL_FILL }
set_db add_fillers_prefix FILLER
add_fillers
set_db route_design_with_via_in_pin 1:1
set_db route_design_with_via_only_for_lib_cell_pin 1:1
set_db route_design_with_timing_driven 1
set_db route_design_with_si_driven 0
set_db route_design_detail_post_route_swap_via multiCut
route_design -global_detail -via_opt -wire_opt
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
set_db extract_rc_engine post_route
set_db extract_rc_effort_level medium
set_db delaycal_enable_si true
set_db opt_post_route_drv_recovery true
set_db opt_effort high
opt_design -post_route -drv -report_prefix 10a_opt_post_route_drv -report_dir ./timingReports
opt_design -post_route -setup -hold -report_prefix 10b_opt_post_route_setup_hold -report_dir ./timingReports
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
set_db extract_rc_engine post_route
set_db extract_rc_effort_level signoff
set_db extract_rc_coupled true
set_db extract_rc_lef_tech_file_map /cad/dk/umc180/SUS/lefdef.layermap
extract_rc
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
all_clocks
set_propagated_clock [all_clocks]
set_db timing_analysis_async_checks async
set_distributed_hosts -local
set_multi_cpu_usage -local_cpu 1 -remote_host 1 -cpu_per_remote_host 1
time_design_signoff -report_dir ./timingReports -report_prefix 12_signoff_time -report_only
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
delete_filler
set_db opt_signoff_setup_target_slack 0.2
opt_signoff -setup -no_eco_route -report_dir ./timingReports -report_prefix 12c_signoff_opt_setup
add_fillers
route_eco
extract_rc
time_design_signoff -report_dir ./timingReports -report_prefix 12d_signoff_time_opt -report_only
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
check_drc -out_file ./timingReports/14_check_drc.rpt
check_connectivity -out_file ./timingReports/14_check_connectivity.rpt
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
report_qor -format html -file ./timingReports/15_qor.html
report_area -out_file ./timingReports/15_area.rpt
write_db ./RESULTS_PR/mtm_Alu_innovus
write_sdf \
    -edges noedge \
    -max_view WC_av \
    -min_view BC_av \
    $resultDir/${DESIGN}.sdf.gz
write_netlist ./RESULTS_PR/mtm_Alu.noPower.v.gz
set_db write_stream_label_all_pin_shape true
set_db write_stream_check_map_file true
write_stream ./RESULTS_PR/mtm_Alu.gds.gz -map_file /cad/dk/umc180/SUS/UMC_18_CMOS.layermap
