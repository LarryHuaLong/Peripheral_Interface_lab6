set_property SRC_FILE_INFO {cfile:e:/Peripheral_Interface_lab/ip_repo/vga/edit_VGA_Controllor_v1_0.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc rfile:../edit_VGA_Controllor_v1_0.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc id:1 order:EARLY scoped_inst:clk_devide/inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
