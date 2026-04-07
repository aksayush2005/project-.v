## ================= CLOCK =================
set_property PACKAGE_PIN F14 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.000 [get_ports clk]


## ================= RESET (use switch sw[0]) =================
set_property PACKAGE_PIN V2 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]


## ================= UART RX =================
## ⚠️ You MUST confirm this from board manual
## (Do NOT guess - very important)
# set_property PACKAGE_PIN <UART_RX_PIN> [get_ports rx]
# set_property IOSTANDARD LVCMOS33 [get_ports rx]


## ================= OUTPUT LEDs =================
## Mapping data_out[0-7] → led[0-7]

set_property PACKAGE_PIN G1 [get_ports {data_out[0]}]
set_property PACKAGE_PIN G2 [get_ports {data_out[1]}]
set_property PACKAGE_PIN F1 [get_ports {data_out[2]}]
set_property PACKAGE_PIN F2 [get_ports {data_out[3]}]
set_property PACKAGE_PIN E1 [get_ports {data_out[4]}]
set_property PACKAGE_PIN E2 [get_ports {data_out[5]}]
set_property PACKAGE_PIN E3 [get_ports {data_out[6]}]
set_property PACKAGE_PIN E5 [get_ports {data_out[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports data_out[*]]


## ================= DATA VALID LED =================
## Use next LED (led[8])

set_property PACKAGE_PIN E6 [get_ports data_valid]
set_property IOSTANDARD LVCMOS33 [get_ports data_valid]