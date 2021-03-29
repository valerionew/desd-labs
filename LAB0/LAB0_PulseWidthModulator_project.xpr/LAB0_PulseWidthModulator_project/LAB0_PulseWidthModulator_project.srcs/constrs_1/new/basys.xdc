## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

# Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

# Reset
set_property PACKAGE_PIN U18 [get_ports reset]
	set_property IOSTANDARD LVCMOS33 [get_ports reset]


# Switches
set_property PACKAGE_PIN V17 [get_ports {Period[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Period[0]}]
set_property PACKAGE_PIN V16 [get_ports {Period[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Period[1]}]
set_property PACKAGE_PIN W16 [get_ports {Period[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Period[2]}]
set_property PACKAGE_PIN W17 [get_ports {Period[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Period[3]}]
set_property PACKAGE_PIN W15 [get_ports {Period[4]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Period[4]}]
set_property PACKAGE_PIN V15 [get_ports {Period[5]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Period[5]}]
set_property PACKAGE_PIN W14 [get_ports {Period[6]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Period[6]}]
set_property PACKAGE_PIN W13 [get_ports {Period[7]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Period[7]}]
	
set_property PACKAGE_PIN V2 [get_ports {Ton[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Ton[0]}]
set_property PACKAGE_PIN T3 [get_ports {Ton[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Ton[1]}]
set_property PACKAGE_PIN T2 [get_ports {Ton[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Ton[2]}]
set_property PACKAGE_PIN R3 [get_ports {Ton[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Ton[3]}]
set_property PACKAGE_PIN W2 [get_ports {Ton[4]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Ton[4]}]
set_property PACKAGE_PIN U1 [get_ports {Ton[5]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Ton[5]}]
set_property PACKAGE_PIN T1 [get_ports {Ton[6]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Ton[6]}]
set_property PACKAGE_PIN R2 [get_ports {Ton[7]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Ton[7]}]


# LEDs
set_property PACKAGE_PIN U16 [get_ports {PWM}]
	set_property IOSTANDARD LVCMOS33 [get_ports {PWM}]


