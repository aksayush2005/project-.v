## ===============================
## Basys 3 - 3x8 Decoder
## Device: xc7a35tcpg236-1
## ===============================

## -------- Switch Inputs --------

set_property PACKAGE_PIN V17 [get_ports {sw0}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw0}]

set_property PACKAGE_PIN V16 [get_ports {sw1}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw1}]

set_property PACKAGE_PIN W16 [get_ports {sw2}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw2}]

set_property PACKAGE_PIN W17 [get_ports {sw3}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw3}]


## -------- LED Outputs --------

set_property PACKAGE_PIN U16 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]

set_property PACKAGE_PIN E19 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]

set_property PACKAGE_PIN U19 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]

set_property PACKAGE_PIN V19 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]

set_property PACKAGE_PIN W18 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]

set_property PACKAGE_PIN U15 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]

set_property PACKAGE_PIN U14 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]

set_property PACKAGE_PIN V14 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]