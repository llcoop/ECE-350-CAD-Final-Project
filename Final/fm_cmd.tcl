set_svf -append { ./default.svf }
read_verilog -container r -libname WORK -05 { ./rtl/Final_Proj.v }
set_top r:/WORK/TOP
read_verilog -container i -libname WORK -05 { ./vg/Final_Proj.vg }
read_db { /proj/ece350-014-
spring2020/ClassShare/45nm_libs_front_end/NLDM/NangateOpenCellLibrary_fast.db /proj/ece350-
014-spring2020/ClassShare/45nm_libs_front_end/NLDM/NangateOpenCellLibrary_slow.db }
set_top i:/WORK/Final_Proj
set_implementation i:/WORK/Final_Proj
match
verify