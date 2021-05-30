# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "FOOTER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HEADER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SAMPLES_PER_PACKET" -parent ${Page_0}


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

proc update_PARAM_VALUE.SAMPLES_PER_PACKET { PARAM_VALUE.SAMPLES_PER_PACKET } {
	# Procedure called to update SAMPLES_PER_PACKET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SAMPLES_PER_PACKET { PARAM_VALUE.SAMPLES_PER_PACKET } {
	# Procedure called to validate SAMPLES_PER_PACKET
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

proc update_MODELPARAM_VALUE.SAMPLES_PER_PACKET { MODELPARAM_VALUE.SAMPLES_PER_PACKET PARAM_VALUE.SAMPLES_PER_PACKET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SAMPLES_PER_PACKET}] ${MODELPARAM_VALUE.SAMPLES_PER_PACKET}
}

