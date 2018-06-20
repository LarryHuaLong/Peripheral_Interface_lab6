# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {Common-41} -limit 4294967295
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir E:/Peripheral_Interface_lab/MIPSfpga_keyboard/MIPSfpga_axi4.cache/wt [current_project]
set_property parent.project_path E:/Peripheral_Interface_lab/MIPSfpga_keyboard/MIPSfpga_axi4.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths e:/Peripheral_Interface_lab/ip_repo [current_project]
read_ip E:/Peripheral_Interface_lab/MIPSfpga_keyboard/MIPSfpga_axi4.srcs/sources_1/bd/MIPSfpga_system/ip/MIPSfpga_system_xlconcat_0_0/MIPSfpga_system_xlconcat_0_0.xci
set_property used_in_implementation false [get_files -all e:/Peripheral_Interface_lab/MIPSfpga_keyboard/MIPSfpga_axi4.srcs/sources_1/bd/MIPSfpga_system/ip/MIPSfpga_system_xlconcat_0_0/MIPSfpga_system_xlconcat_0_0.dcp]
set_property is_locked true [get_files E:/Peripheral_Interface_lab/MIPSfpga_keyboard/MIPSfpga_axi4.srcs/sources_1/bd/MIPSfpga_system/ip/MIPSfpga_system_xlconcat_0_0/MIPSfpga_system_xlconcat_0_0.xci]

synth_design -top MIPSfpga_system_xlconcat_0_0 -part xc7a100tcsg324-1 -mode out_of_context
rename_ref -prefix_all MIPSfpga_system_xlconcat_0_0_
write_checkpoint -noxdef MIPSfpga_system_xlconcat_0_0.dcp
catch { report_utilization -file MIPSfpga_system_xlconcat_0_0_utilization_synth.rpt -pb MIPSfpga_system_xlconcat_0_0_utilization_synth.pb }
if { [catch {
  file copy -force E:/Peripheral_Interface_lab/MIPSfpga_keyboard/MIPSfpga_axi4.runs/MIPSfpga_system_xlconcat_0_0_synth_1/MIPSfpga_system_xlconcat_0_0.dcp E:/Peripheral_Interface_lab/MIPSfpga_keyboard/MIPSfpga_axi4.srcs/sources_1/bd/MIPSfpga_system/ip/MIPSfpga_system_xlconcat_0_0/MIPSfpga_system_xlconcat_0_0.dcp
} _RESULT ] } { 
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}
if { [catch {
  write_verilog -force -mode synth_stub E:/Peripheral_Interface_lab/MIPSfpga_keyboard/MIPSfpga_axi4.srcs/sources_1/bd/MIPSfpga_system/ip/MIPSfpga_system_xlconcat_0_0/MIPSfpga_system_xlconcat_0_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode synth_stub E:/Peripheral_Interface_lab/MIPSfpga_keyboard/MIPSfpga_axi4.srcs/sources_1/bd/MIPSfpga_system/ip/MIPSfpga_system_xlconcat_0_0/MIPSfpga_system_xlconcat_0_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_verilog -force -mode funcsim E:/Peripheral_Interface_lab/MIPSfpga_keyboard/MIPSfpga_axi4.srcs/sources_1/bd/MIPSfpga_system/ip/MIPSfpga_system_xlconcat_0_0/MIPSfpga_system_xlconcat_0_0_funcsim.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode funcsim E:/Peripheral_Interface_lab/MIPSfpga_keyboard/MIPSfpga_axi4.srcs/sources_1/bd/MIPSfpga_system/ip/MIPSfpga_system_xlconcat_0_0/MIPSfpga_system_xlconcat_0_0_funcsim.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
