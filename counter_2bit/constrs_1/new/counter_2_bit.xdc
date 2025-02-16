set_property CLOCK_DEDICATED_ROUTE FLASE [get_nets clk_IBUF]
set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS18} [get_ports S]
set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS18} [get_ports R]
set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVCMOS18} [get_ports CLK]
set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS18} [get_ports Q]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS18} [get_ports NOTQ]
