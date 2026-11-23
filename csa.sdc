
# Create clock
create_clock -name CLK -period 10 [get_ports CLK]

# Clock uncertainty
set_clock_uncertainty 0.2 [get_clocks CLK]

# Clock transition
set_clock_transition 0.1 [get_clocks CLK]

# Input delay
set_input_delay 2 -clock CLK [get_ports {A[*] B[*] C[*]}]

# Input transition
set_input_transition 0.1 [get_ports {A[*] B[*] C[*]}]

# Output delay
set_output_delay 2 -clock CLK [get_ports {SUM[*] CARRY[*]}]

# Output load
set_load 0.05 [get_ports {SUM[*] CARRY[*]}]
