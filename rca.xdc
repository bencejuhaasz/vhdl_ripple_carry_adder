set_property PACKAGE_PIN F22 [get_ports {A[0]}];  # "SW0"
set_property PACKAGE_PIN G22 [get_ports {A[1]}];  # "SW1"
set_property PACKAGE_PIN H22 [get_ports {A[2]}];  # "SW2"
set_property PACKAGE_PIN F21 [get_ports {A[3]}];  # "SW3"
set_property PACKAGE_PIN H19 [get_ports {B[0]}];  # "SW4"
set_property PACKAGE_PIN H18 [get_ports {B[1]}];  # "SW5"
set_property PACKAGE_PIN H17 [get_ports {B[2]}];  # "SW6"
set_property PACKAGE_PIN M15 [get_ports {B[3]}];  # "SW7"


set_property PACKAGE_PIN T22 [get_ports {S[0]}];  # "LD0"
set_property PACKAGE_PIN T21 [get_ports {S[1]}];  # "LD1"
set_property PACKAGE_PIN U22 [get_ports {S[2]}];  # "LD2"
set_property PACKAGE_PIN U21 [get_ports {S[3]}];  # "LD3"
set_property PACKAGE_PIN V22 [get_ports {C_out}];  # "LD4"


set_property PACKAGE_PIN J15 [get_ports C_in];
set_property IOSTANDARD LVCMOS33 [get_ports C_in];
set_property PULLDOWN true [get_ports C_in];




# ----------------------------------------------------------------------------
# IOSTANDARD Constraints
#
# Note that these IOSTANDARD constraints are applied to all IOs currently
# assigned within an I/O bank.  If these IOSTANDARD constraints are 
# evaluated prior to other PACKAGE_PIN constraints being applied, then 
# the IOSTANDARD specified will likely not be applied properly to those 
# pins.  Therefore, bank wide IOSTANDARD constraints should be placed 
# within the XDC file in a location that is evaluated AFTER all 
# PACKAGE_PIN constraints within the target bank have been evaluated.
#
# Un-comment one or more of the following IOSTANDARD constraints according to
# the bank pin assignments that are required within a design.
# ---------------------------------------------------------------------------- 

# Note that the bank voltage for IO Bank 33 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];

# Set the bank voltage for IO Bank 34 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 34]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 34]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];

# Set the bank voltage for IO Bank 35 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 35]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 35]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];

# Note that the bank voltage for IO Bank 13 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];

set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];
