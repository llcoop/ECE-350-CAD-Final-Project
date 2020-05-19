read_verilog Final_Project.v

source Final_Project.con

set_operating_conditions -max slow -max_library NangateOpenCellLibrary_SS -min fast -min_library NangateOpenCellLibrary_FF

uniquify
#current_design
link
check_design
report_clock
report_wire_load
current_design DFE

compile

redirect -append ./report/constriant.rpt {report_constraint}
redirect -append ./constriant.rpt
report_constraint
report_timing -delay_type max
report_timing -delay_type min
report_area
report_power

current_design DFE
foreach_in_collection des [get_designs] {current_design $des
set verilogout_no_tri true
}

set hdlout_internal busses true
set bus_inference style "%s\[%d\]"
set verilogout_equation false
set verilogout_unconnected_prefix "SYNOPSYS_UNCONNECTED_"
define_name_rules my_rules -allowed {a-zA-Z0-9_} -equal_ports_nets -first_restricted "\\" -replacement_char "_" -flatten_fulti_dimension_busses -add_dummy_nets_in_verilog_out "SYNOPSYS_UNCONNECTED_%d" -map { {{"\\*cell\\*", "u"}, {"\*-return", "RET"}} }
change_name -rule my_rules -hierarchy
write -format verilog -hierarchy -output "./Final_Project_out.v"
write_sdc Final_Project.sdc -nosplit
history > cmd_test

