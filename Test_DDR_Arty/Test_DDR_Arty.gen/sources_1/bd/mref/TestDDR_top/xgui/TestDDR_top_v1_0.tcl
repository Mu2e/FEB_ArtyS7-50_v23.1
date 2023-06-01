# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "APP_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DDR3L_ADDR" -parent ${Page_0}


}

proc update_PARAM_VALUE.APP_ADDR { PARAM_VALUE.APP_ADDR } {
	# Procedure called to update APP_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.APP_ADDR { PARAM_VALUE.APP_ADDR } {
	# Procedure called to validate APP_ADDR
	return true
}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.DDR3L_ADDR { PARAM_VALUE.DDR3L_ADDR } {
	# Procedure called to update DDR3L_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DDR3L_ADDR { PARAM_VALUE.DDR3L_ADDR } {
	# Procedure called to validate DDR3L_ADDR
	return true
}


proc update_MODELPARAM_VALUE.DATA_WIDTH { MODELPARAM_VALUE.DATA_WIDTH PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_WIDTH}] ${MODELPARAM_VALUE.DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.DDR3L_ADDR { MODELPARAM_VALUE.DDR3L_ADDR PARAM_VALUE.DDR3L_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DDR3L_ADDR}] ${MODELPARAM_VALUE.DDR3L_ADDR}
}

proc update_MODELPARAM_VALUE.APP_ADDR { MODELPARAM_VALUE.APP_ADDR PARAM_VALUE.APP_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.APP_ADDR}] ${MODELPARAM_VALUE.APP_ADDR}
}

