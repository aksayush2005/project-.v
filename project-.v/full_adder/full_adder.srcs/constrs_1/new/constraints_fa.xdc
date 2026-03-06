## =========================
## Basys 3 Full Adder XDC
## =========================

## -------- Switches --------

## SW0
set_property PACKAGE_PIN V17 [get_ports {sw0}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw0}]

## SW1
set_property PACKAGE_PIN V16 [get_ports {sw1}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw1}]

## SW2
set_property PACKAGE_PIN W16 [get_ports {sw2}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw2}]


## -------- LEDs --------

## LD0
set_property PACKAGE_PIN U16 [get_ports {led0}]
set_property IOSTANDARD LVCMOS33 [get_ports {led0}]

## LD1
set_property PACKAGE_PIN E19 [get_ports {led1}]
set_property IOSTANDARD LVCMOS33 [get_ports {led1}]