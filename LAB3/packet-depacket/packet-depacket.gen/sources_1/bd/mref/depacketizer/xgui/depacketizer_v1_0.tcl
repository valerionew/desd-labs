# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_M_AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FOOTER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HEADER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PACKET_LENGTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_M_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.FOOTER { PARAM_VALUE.FOOTER } {
	# Procedure called to update FOOTER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FOOTER { PARAM_VALUE.FOOTER } {
	# Procedure called to validate FOOTER
	return true
}

proc update_PARAM_VALUE.HEADER { PARAM_VALUE.HEADER } {
	# Procedure called to update HEADER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HEADER { PARAM_VALUE.HEADER } {
	# Procedure called to validate HEADER
	return true
}

proc update_PARAM_VALUE.PACKET_LENGTH { PARAM_VALUE.PACKET_LENGTH } {
	# Procedure called to update PACKET_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PACKET_LENGTH { PARAM_VALUE.PACKET_LENGTH } {
	# Procedure called to validate PACKET_LENGTH
	return true
}


proc update_MODELPARAM_VALUE.HEADER { MODELPARAM_VALUE.HEADER PARAM_VALUE.HEADER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HEADER}] ${MODELPARAM_VALUE.HEADER}
}

proc update_MODELPARAM_VALUE.FOOTER { MODELPARAM_VALUE.FOOTER PARAM_VALUE.FOOTER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FOOTER}] ${MODELPARAM_VALUE.FOOTER}
}

proc update_MODELPARAM_VALUE.PACKET_LENGTH { MODELPARAM_VALUE.PACKET_LENGTH PARAM_VALUE.PACKET_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PACKET_LENGTH}] ${MODELPARAM_VALUE.PACKET_LENGTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M_AXIS_TDATA_WIDTH PARAM_VALUE.C_M_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S_AXIS_TDATA_WIDTH PARAM_VALUE.C_S_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXIS_TDATA_WIDTH}
}

