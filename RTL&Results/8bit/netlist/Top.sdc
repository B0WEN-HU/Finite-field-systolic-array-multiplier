###################################################################

# Created by write_sdc on Sat Dec 15 17:41:37 2018

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_max_capacitance 0.00746692 [current_design]
set_max_area 0
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports clk]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports ctr]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports rst]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {ai[8]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {ai[7]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {ai[6]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {ai[5]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {ai[4]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {ai[3]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {ai[2]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {ai[1]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {gi[8]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {gi[7]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {gi[6]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {gi[5]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {gi[4]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {gi[3]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {gi[2]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {gi[1]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {bi[8]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {bi[7]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {bi[6]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {bi[5]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {bi[4]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {bi[3]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {bi[2]}]
set_driving_cell -lib_cell DRNHSV1 -pin Q [get_ports {bi[1]}]
set_load -pin_load 0.00466682 [get_ports {po[1]}]
set_load -pin_load 0.00466682 [get_ports {po[2]}]
set_load -pin_load 0.00466682 [get_ports {po[3]}]
set_load -pin_load 0.00466682 [get_ports {po[4]}]
set_load -pin_load 0.00466682 [get_ports {po[5]}]
set_load -pin_load 0.00466682 [get_ports {po[6]}]
set_load -pin_load 0.00466682 [get_ports {po[7]}]
set_load -pin_load 0.00466682 [get_ports {po[8]}]
create_clock [get_ports clk]  -period 0.5  -waveform {0 0.25}
set_clock_latency 0.1  [get_clocks clk]
set_clock_uncertainty 0.1  [get_clocks clk]
set_max_delay 2  -from [list [get_ports clk] [get_ports ctr] [get_ports rst] [get_ports {ai[8]}] [get_ports {ai[7]}] [get_ports {ai[6]}] [get_ports {ai[5]}] [get_ports {ai[4]}] [get_ports {ai[3]}] [get_ports {ai[2]}] [get_ports {ai[1]}] [get_ports {gi[8]}] [get_ports {gi[7]}] [get_ports {gi[6]}] [get_ports {gi[5]}] [get_ports {gi[4]}] [get_ports {gi[3]}] [get_ports {gi[2]}] [get_ports {gi[1]}] [get_ports {bi[8]}] [get_ports {bi[7]}] [get_ports {bi[6]}] [get_ports {bi[5]}] [get_ports {bi[4]}] [get_ports {bi[3]}] [get_ports {bi[2]}] [get_ports {bi[1]}]]  -to [list [get_ports {po[1]}] [get_ports {po[2]}] [get_ports {po[3]}] [get_ports {po[4]}] [get_ports {po[5]}] [get_ports {po[6]}] [get_ports {po[7]}] [get_ports {po[8]}]]
set_input_delay -clock clk  -max 0.01  [get_ports ctr]
set_input_delay -clock clk  -min -0.01  [get_ports ctr]
set_input_delay -clock clk  -max 0.01  [get_ports rst]
set_input_delay -clock clk  -min -0.01  [get_ports rst]
set_input_delay -clock clk  -max 0.01  [get_ports {ai[8]}]
set_input_delay -clock clk  -min -0.01  [get_ports {ai[8]}]
set_input_delay -clock clk  -max 0.01  [get_ports {ai[7]}]
set_input_delay -clock clk  -min -0.01  [get_ports {ai[7]}]
set_input_delay -clock clk  -max 0.01  [get_ports {ai[6]}]
set_input_delay -clock clk  -min -0.01  [get_ports {ai[6]}]
set_input_delay -clock clk  -max 0.01  [get_ports {ai[5]}]
set_input_delay -clock clk  -min -0.01  [get_ports {ai[5]}]
set_input_delay -clock clk  -max 0.01  [get_ports {ai[4]}]
set_input_delay -clock clk  -min -0.01  [get_ports {ai[4]}]
set_input_delay -clock clk  -max 0.01  [get_ports {ai[3]}]
set_input_delay -clock clk  -min -0.01  [get_ports {ai[3]}]
set_input_delay -clock clk  -max 0.01  [get_ports {ai[2]}]
set_input_delay -clock clk  -min -0.01  [get_ports {ai[2]}]
set_input_delay -clock clk  -max 0.01  [get_ports {ai[1]}]
set_input_delay -clock clk  -min -0.01  [get_ports {ai[1]}]
set_input_delay -clock clk  -max 0.01  [get_ports {gi[8]}]
set_input_delay -clock clk  -min -0.01  [get_ports {gi[8]}]
set_input_delay -clock clk  -max 0.01  [get_ports {gi[7]}]
set_input_delay -clock clk  -min -0.01  [get_ports {gi[7]}]
set_input_delay -clock clk  -max 0.01  [get_ports {gi[6]}]
set_input_delay -clock clk  -min -0.01  [get_ports {gi[6]}]
set_input_delay -clock clk  -max 0.01  [get_ports {gi[5]}]
set_input_delay -clock clk  -min -0.01  [get_ports {gi[5]}]
set_input_delay -clock clk  -max 0.01  [get_ports {gi[4]}]
set_input_delay -clock clk  -min -0.01  [get_ports {gi[4]}]
set_input_delay -clock clk  -max 0.01  [get_ports {gi[3]}]
set_input_delay -clock clk  -min -0.01  [get_ports {gi[3]}]
set_input_delay -clock clk  -max 0.01  [get_ports {gi[2]}]
set_input_delay -clock clk  -min -0.01  [get_ports {gi[2]}]
set_input_delay -clock clk  -max 0.01  [get_ports {gi[1]}]
set_input_delay -clock clk  -min -0.01  [get_ports {gi[1]}]
set_input_delay -clock clk  -max 0.01  [get_ports {bi[8]}]
set_input_delay -clock clk  -min -0.01  [get_ports {bi[8]}]
set_input_delay -clock clk  -max 0.01  [get_ports {bi[7]}]
set_input_delay -clock clk  -min -0.01  [get_ports {bi[7]}]
set_input_delay -clock clk  -max 0.01  [get_ports {bi[6]}]
set_input_delay -clock clk  -min -0.01  [get_ports {bi[6]}]
set_input_delay -clock clk  -max 0.01  [get_ports {bi[5]}]
set_input_delay -clock clk  -min -0.01  [get_ports {bi[5]}]
set_input_delay -clock clk  -max 0.01  [get_ports {bi[4]}]
set_input_delay -clock clk  -min -0.01  [get_ports {bi[4]}]
set_input_delay -clock clk  -max 0.01  [get_ports {bi[3]}]
set_input_delay -clock clk  -min -0.01  [get_ports {bi[3]}]
set_input_delay -clock clk  -max 0.01  [get_ports {bi[2]}]
set_input_delay -clock clk  -min -0.01  [get_ports {bi[2]}]
set_input_delay -clock clk  -max 0.01  [get_ports {bi[1]}]
set_input_delay -clock clk  -min -0.01  [get_ports {bi[1]}]
set_output_delay -clock clk  -max 0.02  [get_ports {po[1]}]
set_output_delay -clock clk  -min -0.01  [get_ports {po[1]}]
set_output_delay -clock clk  -max 0.02  [get_ports {po[2]}]
set_output_delay -clock clk  -min -0.01  [get_ports {po[2]}]
set_output_delay -clock clk  -max 0.02  [get_ports {po[3]}]
set_output_delay -clock clk  -min -0.01  [get_ports {po[3]}]
set_output_delay -clock clk  -max 0.02  [get_ports {po[4]}]
set_output_delay -clock clk  -min -0.01  [get_ports {po[4]}]
set_output_delay -clock clk  -max 0.02  [get_ports {po[5]}]
set_output_delay -clock clk  -min -0.01  [get_ports {po[5]}]
set_output_delay -clock clk  -max 0.02  [get_ports {po[6]}]
set_output_delay -clock clk  -min -0.01  [get_ports {po[6]}]
set_output_delay -clock clk  -max 0.02  [get_ports {po[7]}]
set_output_delay -clock clk  -min -0.01  [get_ports {po[7]}]
set_output_delay -clock clk  -max 0.02  [get_ports {po[8]}]
set_output_delay -clock clk  -min -0.01  [get_ports {po[8]}]
