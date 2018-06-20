# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set C_S00_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXI data bus} ${C_S00_AXI_DATA_WIDTH}
  set C_S00_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of S_AXI address bus} ${C_S00_AXI_ADDR_WIDTH}
  ipgui::add_param $IPINST -name "C_S00_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_HIGHADDR" -parent ${Page_0}

  ipgui::add_param $IPINST -name "DISPLAY_WIDTH" -widget comboBox
  ipgui::add_param $IPINST -name "DISPLAY_HEIGHT" -widget comboBox

}

proc update_PARAM_VALUE.DISPLAY_HEIGHT { PARAM_VALUE.DISPLAY_HEIGHT } {
	# Procedure called to update DISPLAY_HEIGHT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DISPLAY_HEIGHT { PARAM_VALUE.DISPLAY_HEIGHT } {
	# Procedure called to validate DISPLAY_HEIGHT
	return true
}

proc update_PARAM_VALUE.DISPLAY_WIDTH { PARAM_VALUE.DISPLAY_WIDTH } {
	# Procedure called to update DISPLAY_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DISPLAY_WIDTH { PARAM_VALUE.DISPLAY_WIDTH } {
	# Procedure called to validate DISPLAY_WIDTH
	return true
}

proc update_PARAM_VALUE.H_BP { PARAM_VALUE.H_BP } {
	# Procedure called to update H_BP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_BP { PARAM_VALUE.H_BP } {
	# Procedure called to validate H_BP
	return true
}

proc update_PARAM_VALUE.H_FP { PARAM_VALUE.H_FP } {
	# Procedure called to update H_FP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_FP { PARAM_VALUE.H_FP } {
	# Procedure called to validate H_FP
	return true
}

proc update_PARAM_VALUE.H_POL { PARAM_VALUE.H_POL } {
	# Procedure called to update H_POL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_POL { PARAM_VALUE.H_POL } {
	# Procedure called to validate H_POL
	return true
}

proc update_PARAM_VALUE.H_PW { PARAM_VALUE.H_PW } {
	# Procedure called to update H_PW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_PW { PARAM_VALUE.H_PW } {
	# Procedure called to validate H_PW
	return true
}

proc update_PARAM_VALUE.H_SP { PARAM_VALUE.H_SP } {
	# Procedure called to update H_SP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_SP { PARAM_VALUE.H_SP } {
	# Procedure called to validate H_SP
	return true
}

proc update_PARAM_VALUE.V_BP { PARAM_VALUE.V_BP } {
	# Procedure called to update V_BP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_BP { PARAM_VALUE.V_BP } {
	# Procedure called to validate V_BP
	return true
}

proc update_PARAM_VALUE.V_FP { PARAM_VALUE.V_FP } {
	# Procedure called to update V_FP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_FP { PARAM_VALUE.V_FP } {
	# Procedure called to validate V_FP
	return true
}

proc update_PARAM_VALUE.V_POL { PARAM_VALUE.V_POL } {
	# Procedure called to update V_POL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_POL { PARAM_VALUE.V_POL } {
	# Procedure called to validate V_POL
	return true
}

proc update_PARAM_VALUE.V_PW { PARAM_VALUE.V_PW } {
	# Procedure called to update V_PW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_PW { PARAM_VALUE.V_PW } {
	# Procedure called to validate V_PW
	return true
}

proc update_PARAM_VALUE.V_SP { PARAM_VALUE.V_SP } {
	# Procedure called to update V_SP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_SP { PARAM_VALUE.V_SP } {
	# Procedure called to validate V_SP
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to update C_S00_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to validate C_S00_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to update C_S00_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to validate C_S00_AXI_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.DISPLAY_WIDTH { MODELPARAM_VALUE.DISPLAY_WIDTH PARAM_VALUE.DISPLAY_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DISPLAY_WIDTH}] ${MODELPARAM_VALUE.DISPLAY_WIDTH}
}

proc update_MODELPARAM_VALUE.H_PW { MODELPARAM_VALUE.H_PW PARAM_VALUE.H_PW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_PW}] ${MODELPARAM_VALUE.H_PW}
}

proc update_MODELPARAM_VALUE.H_FP { MODELPARAM_VALUE.H_FP PARAM_VALUE.H_FP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_FP}] ${MODELPARAM_VALUE.H_FP}
}

proc update_MODELPARAM_VALUE.H_BP { MODELPARAM_VALUE.H_BP PARAM_VALUE.H_BP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_BP}] ${MODELPARAM_VALUE.H_BP}
}

proc update_MODELPARAM_VALUE.H_SP { MODELPARAM_VALUE.H_SP PARAM_VALUE.H_SP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_SP}] ${MODELPARAM_VALUE.H_SP}
}

proc update_MODELPARAM_VALUE.H_POL { MODELPARAM_VALUE.H_POL PARAM_VALUE.H_POL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_POL}] ${MODELPARAM_VALUE.H_POL}
}

proc update_MODELPARAM_VALUE.DISPLAY_HEIGHT { MODELPARAM_VALUE.DISPLAY_HEIGHT PARAM_VALUE.DISPLAY_HEIGHT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DISPLAY_HEIGHT}] ${MODELPARAM_VALUE.DISPLAY_HEIGHT}
}

proc update_MODELPARAM_VALUE.V_PW { MODELPARAM_VALUE.V_PW PARAM_VALUE.V_PW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_PW}] ${MODELPARAM_VALUE.V_PW}
}

proc update_MODELPARAM_VALUE.V_FP { MODELPARAM_VALUE.V_FP PARAM_VALUE.V_FP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_FP}] ${MODELPARAM_VALUE.V_FP}
}

proc update_MODELPARAM_VALUE.V_BP { MODELPARAM_VALUE.V_BP PARAM_VALUE.V_BP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_BP}] ${MODELPARAM_VALUE.V_BP}
}

proc update_MODELPARAM_VALUE.V_SP { MODELPARAM_VALUE.V_SP PARAM_VALUE.V_SP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_SP}] ${MODELPARAM_VALUE.V_SP}
}

proc update_MODELPARAM_VALUE.V_POL { MODELPARAM_VALUE.V_POL PARAM_VALUE.V_POL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_POL}] ${MODELPARAM_VALUE.V_POL}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

