# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Settings [ipgui::add_page $IPINST -name "Settings"]
  ipgui::add_param $IPINST -name "UART_BAUD_RATE" -parent ${Settings} -widget comboBox


}

proc update_PARAM_VALUE.C_M00_AXIS_RX_TDATA_WIDTH { PARAM_VALUE.C_M00_AXIS_RX_TDATA_WIDTH } {
	# Procedure called to update C_M00_AXIS_RX_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXIS_RX_TDATA_WIDTH { PARAM_VALUE.C_M00_AXIS_RX_TDATA_WIDTH } {
	# Procedure called to validate C_M00_AXIS_RX_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXIS_TX_TDATA_WIDTH { PARAM_VALUE.C_S00_AXIS_TX_TDATA_WIDTH } {
	# Procedure called to update C_S00_AXIS_TX_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXIS_TX_TDATA_WIDTH { PARAM_VALUE.C_S00_AXIS_TX_TDATA_WIDTH } {
	# Procedure called to validate C_S00_AXIS_TX_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.UART_BAUD_RATE { PARAM_VALUE.UART_BAUD_RATE } {
	# Procedure called to update UART_BAUD_RATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.UART_BAUD_RATE { PARAM_VALUE.UART_BAUD_RATE } {
	# Procedure called to validate UART_BAUD_RATE
	return true
}

proc update_PARAM_VALUE.UART_CLOCK_FREQUENCY { PARAM_VALUE.UART_CLOCK_FREQUENCY } {
	# Procedure called to update UART_CLOCK_FREQUENCY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.UART_CLOCK_FREQUENCY { PARAM_VALUE.UART_CLOCK_FREQUENCY } {
	# Procedure called to validate UART_CLOCK_FREQUENCY
	return true
}

proc update_PARAM_VALUE.USE_BOARD_FLOW { PARAM_VALUE.USE_BOARD_FLOW } {
	# Procedure called to update USE_BOARD_FLOW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.USE_BOARD_FLOW { PARAM_VALUE.USE_BOARD_FLOW } {
	# Procedure called to validate USE_BOARD_FLOW
	return true
}

proc update_PARAM_VALUE.UART_BOARD_INTERFACE { PARAM_VALUE.UART_BOARD_INTERFACE } {
	# Procedure called to update UART_BOARD_INTERFACE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.UART_BOARD_INTERFACE { PARAM_VALUE.UART_BOARD_INTERFACE } {
	# Procedure called to validate UART_BOARD_INTERFACE
	return true
}


proc update_MODELPARAM_VALUE.UART_BAUD_RATE { MODELPARAM_VALUE.UART_BAUD_RATE PARAM_VALUE.UART_BAUD_RATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.UART_BAUD_RATE}] ${MODELPARAM_VALUE.UART_BAUD_RATE}
}

proc update_MODELPARAM_VALUE.UART_CLOCK_FREQUENCY { MODELPARAM_VALUE.UART_CLOCK_FREQUENCY PARAM_VALUE.UART_CLOCK_FREQUENCY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.UART_CLOCK_FREQUENCY}] ${MODELPARAM_VALUE.UART_CLOCK_FREQUENCY}
}

proc update_MODELPARAM_VALUE.C_M00_AXIS_RX_TDATA_WIDTH { MODELPARAM_VALUE.C_M00_AXIS_RX_TDATA_WIDTH PARAM_VALUE.C_M00_AXIS_RX_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXIS_RX_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXIS_RX_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXIS_TX_TDATA_WIDTH { MODELPARAM_VALUE.C_S00_AXIS_TX_TDATA_WIDTH PARAM_VALUE.C_S00_AXIS_TX_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXIS_TX_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXIS_TX_TDATA_WIDTH}
}

