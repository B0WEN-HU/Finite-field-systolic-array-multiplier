# clock
create_clock -name clk -period 0.5 [get_ports clk]
set_dont_touch_network [get_clocks clk]
set_clock_latency 0.1 [get_clocks clk]
set_clock_uncertainty  0.1 [get_clocks clk]
set_input_delay -max 0.01 -clock clk [remove_from_collection [all_inputs] [get_ports "clk reset"]]
set_input_delay -min -0.01 -clock clk [remove_from_collection [all_inputs] [get_ports "clk reset"]] 
set_output_delay -max 0.02 -clock clk [all_outputs]
set_output_delay -min -0.01 -clock clk [all_outputs]
set_max_delay -from [all_inputs] -to [all_outputs] 2

# area
set_max_area 0

# set false paths
set_ideal_network [get_ports reset]
set_dont_touch_network [get_ports reset]
#set_false_path -from reset

# driving and loading)
set_driving_cell  -lib_cell DRNHSV1 -pin Q [all_inputs]
set MAX_LOAD [load_of scc65nll_hs_rvt_ss_v1p08_125c_ccs/INAND2HSV2/A1]
set_max_capacitance [expr $MAX_LOAD*8] [get_designs *]
set_load [expr $MAX_LOAD*5] [all_outputs]
