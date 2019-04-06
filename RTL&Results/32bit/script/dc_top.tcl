# environment variables are setted in .synopsys_dc.setup

set DESIGN_NAME "Top"

set src_path "./rtl"
set src_list "alucell cell_2xor cell_3xor cell_4xor delay_1bit delay_31bit delay_32bit firstrow generalrow pecell topcell"

# read rtl source file
foreach module $src_list {
    analyze -format verilog ${src_path}/${module}.v
    elaborate $module
}

# check and report
check_design > ./report/${DESIGN_NAME}_check.rpt

current_design ${DESIGN_NAME}
link

# constrains
source ./script/constraints_top.tcl

# compile the design
compile_ultra

# write netlist
write -format verilog -output ./netlist/${DESIGN_NAME}_mapped.v
write_sdf ./netlist/${DESIGN_NAME}.sdf
write_sdc -nosplit ./netlist/${DESIGN_NAME}.sdc

# check and report
report_area > ./report/${DESIGN_NAME}_area.rpt
report_timing -delay_type max -max 3 > ./report/${DESIGN_NAME}_max_timing.rpt
report_timing -delay_type min -max 3 > ./report/${DESIGN_NAME}_min_timing.rpt

report_power > ./report/${DESIGN_NAME}_power.rpt

report_qor > ./report/${DESIGN_NAME}_qor.rpt
