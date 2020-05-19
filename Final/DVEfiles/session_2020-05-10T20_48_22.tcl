# Begin_DVE_Session_Save_Info
# DVE full session
# Saved on Sun May 10 20:48:22 2020
# Designs open: 1
#   V1: /home/dfb220/proj/ece350-014-spring2020/dfb220/Final/Final_Project.dump
# Toplevel windows open: 1
# 	TopLevel.2
#   Wave.1: 64 signals
#   Group count = 17
#   Group Group1 signal count = 1
#   Group sum0 signal count = 4
#   Group sum1 signal count = 4
#   Group sum2 signal count = 4
#   Group sum3 signal count = 4
#   Group sum4 signal count = 4
#   Group sum5 signal count = 4
#   Group sum6 signal count = 4
#   Group sum7 signal count = 4
#   Group sum8 signal count = 4
#   Group sum9 signal count = 4
#   Group sum10 signal count = 4
#   Group sum11 signal count = 4
#   Group sum12 signal count = 4
#   Group sum13 signal count = 4
#   Group sum14 signal count = 4
#   Group sum15 signal count = 4
# End_DVE_Session_Save_Info

# DVE version: O-2018.09-SP2-9_Full64
# DVE build date: Dec  5 2019 22:31:51


#<Session mode="Full" path="/home/dfb220/proj/ece350-014-spring2020/dfb220/Final/DVEfiles/session.tcl" type="Debug">

gui_set_loading_session_type Post
gui_continuetime_set

# Close design
if { [gui_sim_state -check active] } {
    gui_sim_terminate
}
gui_close_db -all
gui_expr_clear_all

# Close all windows
gui_close_window -type Console
gui_close_window -type Wave
gui_close_window -type Source
gui_close_window -type Schematic
gui_close_window -type Data
gui_close_window -type DriverLoad
gui_close_window -type List
gui_close_window -type Memory
gui_close_window -type HSPane
gui_close_window -type DLPane
gui_close_window -type Assertion
gui_close_window -type CovHier
gui_close_window -type CoverageTable
gui_close_window -type CoverageMap
gui_close_window -type CovDetail
gui_close_window -type Local
gui_close_window -type Stack
gui_close_window -type Watch
gui_close_window -type Group
gui_close_window -type Transaction



# Application preferences
gui_set_pref_value -key app_default_font -value {Helvetica,10,-1,5,50,0,0,0,0,0}
gui_src_preferences -tabstop 8 -maxbits 24 -windownumber 1
#<WindowLayout>

# DVE top-level session


# Create and position top-level window: TopLevel.2

if {![gui_exist_window -window TopLevel.2]} {
    set TopLevel.2 [ gui_create_window -type TopLevel \
       -icon $::env(DVE)/auxx/gui/images/toolbars/dvewin.xpm] 
} else { 
    set TopLevel.2 TopLevel.2
}
gui_show_window -window ${TopLevel.2} -show_state normal -rect {{116 137} {1430 875}}

# ToolBar settings
gui_set_toolbar_attributes -toolbar {TimeOperations} -dock_state top
gui_set_toolbar_attributes -toolbar {TimeOperations} -offset 0
gui_show_toolbar -toolbar {TimeOperations}
gui_hide_toolbar -toolbar {&File}
gui_set_toolbar_attributes -toolbar {&Edit} -dock_state top
gui_set_toolbar_attributes -toolbar {&Edit} -offset 0
gui_show_toolbar -toolbar {&Edit}
gui_hide_toolbar -toolbar {CopyPaste}
gui_set_toolbar_attributes -toolbar {&Trace} -dock_state top
gui_set_toolbar_attributes -toolbar {&Trace} -offset 0
gui_show_toolbar -toolbar {&Trace}
gui_hide_toolbar -toolbar {TraceInstance}
gui_hide_toolbar -toolbar {BackTrace}
gui_set_toolbar_attributes -toolbar {&Scope} -dock_state top
gui_set_toolbar_attributes -toolbar {&Scope} -offset 0
gui_show_toolbar -toolbar {&Scope}
gui_set_toolbar_attributes -toolbar {&Window} -dock_state top
gui_set_toolbar_attributes -toolbar {&Window} -offset 0
gui_show_toolbar -toolbar {&Window}
gui_set_toolbar_attributes -toolbar {Signal} -dock_state top
gui_set_toolbar_attributes -toolbar {Signal} -offset 0
gui_show_toolbar -toolbar {Signal}
gui_set_toolbar_attributes -toolbar {Zoom} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom} -offset 0
gui_show_toolbar -toolbar {Zoom}
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -offset 0
gui_show_toolbar -toolbar {Zoom And Pan History}
gui_set_toolbar_attributes -toolbar {Grid} -dock_state top
gui_set_toolbar_attributes -toolbar {Grid} -offset 0
gui_show_toolbar -toolbar {Grid}
gui_hide_toolbar -toolbar {Simulator}
gui_hide_toolbar -toolbar {Interactive Rewind}
gui_set_toolbar_attributes -toolbar {Testbench} -dock_state top
gui_set_toolbar_attributes -toolbar {Testbench} -offset 0
gui_show_toolbar -toolbar {Testbench}

# End ToolBar settings

# Docked window settings
gui_sync_global -id ${TopLevel.2} -option true

# MDI window settings
set Wave.1 [gui_create_window -type {Wave}  -parent ${TopLevel.2}]
gui_show_window -window ${Wave.1} -show_state maximized
gui_update_layout -id ${Wave.1} {{show_state maximized} {dock_state undocked} {dock_on_new_line false} {child_wave_left 381} {child_wave_right 928} {child_wave_colname 188} {child_wave_colvalue 188} {child_wave_col1 0} {child_wave_col2 1}}

# End MDI window settings

gui_set_env TOPLEVELS::TARGET_FRAME(Source) none
gui_set_env TOPLEVELS::TARGET_FRAME(Schematic) none
gui_set_env TOPLEVELS::TARGET_FRAME(PathSchematic) none
gui_set_env TOPLEVELS::TARGET_FRAME(Wave) none
gui_set_env TOPLEVELS::TARGET_FRAME(List) none
gui_set_env TOPLEVELS::TARGET_FRAME(Memory) none
gui_set_env TOPLEVELS::TARGET_FRAME(DriverLoad) none
gui_update_statusbar_target_frame ${TopLevel.2}

#</WindowLayout>

#<Database>

# DVE Open design session: 

if { ![gui_is_db_opened -db {/home/dfb220/proj/ece350-014-spring2020/dfb220/Final/Final_Project.dump.vpd}] } {
	gui_open_db -design V1 -file /home/dfb220/proj/ece350-014-spring2020/dfb220/Final/Final_Project.dump.vpd -nosource
}
gui_set_precision 1ns
gui_set_time_units 1ns
#</Database>

# DVE Global setting session: 


# Global: Bus

# Global: Expressions

# Global: Signal Time Shift

# Global: Signal Compare

# Global: Signal Groups
gui_load_child_values {Final_Proj_Testbench.uut.sum0}
gui_load_child_values {Final_Proj_Testbench.uut.sum1}
gui_load_child_values {Final_Proj_Testbench.uut.sum2}
gui_load_child_values {Final_Proj_Testbench.uut.sum3}
gui_load_child_values {Final_Proj_Testbench.uut.sum4}
gui_load_child_values {Final_Proj_Testbench.uut.sum5}
gui_load_child_values {Final_Proj_Testbench.uut.sum6}
gui_load_child_values {Final_Proj_Testbench.uut.sum7}
gui_load_child_values {Final_Proj_Testbench.uut.sum8}
gui_load_child_values {Final_Proj_Testbench.uut.sum9}
gui_load_child_values {Final_Proj_Testbench.uut.sum10}
gui_load_child_values {Final_Proj_Testbench.uut.sum11}
gui_load_child_values {Final_Proj_Testbench.uut.sum12}
gui_load_child_values {Final_Proj_Testbench.uut}
gui_load_child_values {Final_Proj_Testbench.uut.sum13}
gui_load_child_values {Final_Proj_Testbench.uut.sum14}
gui_load_child_values {Final_Proj_Testbench.uut.sum15}


set _session_group_1 Group1
gui_sg_create "$_session_group_1"
set Group1 "$_session_group_1"

gui_sg_addsignal -group "$_session_group_1" { Final_Proj_Testbench.uut.inselect }

set _session_group_2 sum0
gui_sg_create "$_session_group_2"
set sum0 "$_session_group_2"

gui_sg_addsignal -group "$_session_group_2" { Final_Proj_Testbench.uut.sum0.delay Final_Proj_Testbench.uut.sum0.multout Final_Proj_Testbench.uut.sum0.feedback Final_Proj_Testbench.uut.sum0.out }

set _session_group_3 sum1
gui_sg_create "$_session_group_3"
set sum1 "$_session_group_3"

gui_sg_addsignal -group "$_session_group_3" { Final_Proj_Testbench.uut.sum1.delay Final_Proj_Testbench.uut.sum1.multout Final_Proj_Testbench.uut.sum1.feedback Final_Proj_Testbench.uut.sum1.out }

set _session_group_4 sum2
gui_sg_create "$_session_group_4"
set sum2 "$_session_group_4"

gui_sg_addsignal -group "$_session_group_4" { Final_Proj_Testbench.uut.sum2.delay Final_Proj_Testbench.uut.sum2.multout Final_Proj_Testbench.uut.sum2.feedback Final_Proj_Testbench.uut.sum2.out }

set _session_group_5 sum3
gui_sg_create "$_session_group_5"
set sum3 "$_session_group_5"

gui_sg_addsignal -group "$_session_group_5" { Final_Proj_Testbench.uut.sum3.delay Final_Proj_Testbench.uut.sum3.multout Final_Proj_Testbench.uut.sum3.feedback Final_Proj_Testbench.uut.sum3.out }

set _session_group_6 sum4
gui_sg_create "$_session_group_6"
set sum4 "$_session_group_6"

gui_sg_addsignal -group "$_session_group_6" { Final_Proj_Testbench.uut.sum4.delay Final_Proj_Testbench.uut.sum4.multout Final_Proj_Testbench.uut.sum4.feedback Final_Proj_Testbench.uut.sum4.out }

set _session_group_7 sum5
gui_sg_create "$_session_group_7"
set sum5 "$_session_group_7"

gui_sg_addsignal -group "$_session_group_7" { Final_Proj_Testbench.uut.sum5.delay Final_Proj_Testbench.uut.sum5.multout Final_Proj_Testbench.uut.sum5.feedback Final_Proj_Testbench.uut.sum5.out }

set _session_group_8 sum6
gui_sg_create "$_session_group_8"
set sum6 "$_session_group_8"

gui_sg_addsignal -group "$_session_group_8" { Final_Proj_Testbench.uut.sum6.delay Final_Proj_Testbench.uut.sum6.multout Final_Proj_Testbench.uut.sum6.feedback Final_Proj_Testbench.uut.sum6.out }

set _session_group_9 sum7
gui_sg_create "$_session_group_9"
set sum7 "$_session_group_9"

gui_sg_addsignal -group "$_session_group_9" { Final_Proj_Testbench.uut.sum7.delay Final_Proj_Testbench.uut.sum7.multout Final_Proj_Testbench.uut.sum7.feedback Final_Proj_Testbench.uut.sum7.out }

set _session_group_10 sum8
gui_sg_create "$_session_group_10"
set sum8 "$_session_group_10"

gui_sg_addsignal -group "$_session_group_10" { Final_Proj_Testbench.uut.sum8.delay Final_Proj_Testbench.uut.sum8.multout Final_Proj_Testbench.uut.sum8.feedback Final_Proj_Testbench.uut.sum8.out }

set _session_group_11 sum9
gui_sg_create "$_session_group_11"
set sum9 "$_session_group_11"

gui_sg_addsignal -group "$_session_group_11" { Final_Proj_Testbench.uut.sum9.delay Final_Proj_Testbench.uut.sum9.multout Final_Proj_Testbench.uut.sum9.feedback Final_Proj_Testbench.uut.sum9.out }

set _session_group_12 sum10
gui_sg_create "$_session_group_12"
set sum10 "$_session_group_12"

gui_sg_addsignal -group "$_session_group_12" { Final_Proj_Testbench.uut.sum10.delay Final_Proj_Testbench.uut.sum10.multout Final_Proj_Testbench.uut.sum10.feedback Final_Proj_Testbench.uut.sum10.out }

set _session_group_13 sum11
gui_sg_create "$_session_group_13"
set sum11 "$_session_group_13"

gui_sg_addsignal -group "$_session_group_13" { Final_Proj_Testbench.uut.sum11.delay Final_Proj_Testbench.uut.sum11.multout Final_Proj_Testbench.uut.sum11.feedback Final_Proj_Testbench.uut.sum11.out }

set _session_group_14 sum12
gui_sg_create "$_session_group_14"
set sum12 "$_session_group_14"

gui_sg_addsignal -group "$_session_group_14" { Final_Proj_Testbench.uut.sum12.delay Final_Proj_Testbench.uut.sum12.multout Final_Proj_Testbench.uut.sum12.feedback Final_Proj_Testbench.uut.sum12.out }

set _session_group_15 sum13
gui_sg_create "$_session_group_15"
set sum13 "$_session_group_15"

gui_sg_addsignal -group "$_session_group_15" { Final_Proj_Testbench.uut.sum13.delay Final_Proj_Testbench.uut.sum13.multout Final_Proj_Testbench.uut.sum13.feedback Final_Proj_Testbench.uut.sum13.out }

set _session_group_16 sum14
gui_sg_create "$_session_group_16"
set sum14 "$_session_group_16"

gui_sg_addsignal -group "$_session_group_16" { Final_Proj_Testbench.uut.sum14.delay Final_Proj_Testbench.uut.sum14.multout Final_Proj_Testbench.uut.sum14.feedback Final_Proj_Testbench.uut.sum14.out }

set _session_group_17 sum15
gui_sg_create "$_session_group_17"
set sum15 "$_session_group_17"

gui_sg_addsignal -group "$_session_group_17" { Final_Proj_Testbench.uut.sum15.delay Final_Proj_Testbench.uut.sum15.multout Final_Proj_Testbench.uut.sum15.feedback Final_Proj_Testbench.uut.sum15.out }

# Global: Highlighting

# Global: Stack
gui_change_stack_mode -mode list

# Post database loading setting...

# Restore C1 time
gui_set_time -C1_only 0



# Save global setting...

# Wave/List view global setting
gui_cov_show_value -switch false

# Close all empty TopLevel windows
foreach __top [gui_ekki_get_window_ids -type TopLevel] {
    if { [llength [gui_ekki_get_window_ids -parent $__top]] == 0} {
        gui_close_window -window $__top
    }
}
gui_set_loading_session_type noSession
# DVE View/pane content session: 


# View 'Wave.1'
gui_wv_sync -id ${Wave.1} -switch false
set groupExD [gui_get_pref_value -category Wave -key exclusiveSG]
gui_set_pref_value -category Wave -key exclusiveSG -value {false}
set origWaveHeight [gui_get_pref_value -category Wave -key waveRowHeight]
gui_list_set_height -id Wave -height 25
set origGroupCreationState [gui_list_create_group_when_add -wave]
gui_list_create_group_when_add -wave -disable
gui_marker_set_ref -id ${Wave.1}  C1
gui_wv_zoom_timerange -id ${Wave.1} 0 302
gui_list_add_group -id ${Wave.1} -after {New Group} {sum0}
gui_list_add_group -id ${Wave.1} -after {New Group} {sum1}
gui_list_add_group -id ${Wave.1} -after {New Group} {sum2}
gui_list_add_group -id ${Wave.1} -after {New Group} {sum3}
gui_list_add_group -id ${Wave.1} -after {New Group} {sum4}
gui_list_add_group -id ${Wave.1} -after {New Group} {sum5}
gui_list_add_group -id ${Wave.1} -after {New Group} {sum6}
gui_list_add_group -id ${Wave.1} -after {New Group} {sum7}
gui_list_add_group -id ${Wave.1} -after {New Group} {sum8}
gui_list_add_group -id ${Wave.1} -after {New Group} {sum9}
gui_list_add_group -id ${Wave.1} -after {New Group} {sum10}
gui_list_add_group -id ${Wave.1} -after {New Group} {sum11}
gui_list_add_group -id ${Wave.1} -after {New Group} {sum12}
gui_list_add_group -id ${Wave.1} -after {New Group} {sum13}
gui_list_add_group -id ${Wave.1} -after {New Group} {sum14}
gui_list_add_group -id ${Wave.1} -after {New Group} {sum15}
gui_seek_criteria -id ${Wave.1} {Any Edge}



gui_set_env TOGGLE::DEFAULT_WAVE_WINDOW ${Wave.1}
gui_set_pref_value -category Wave -key exclusiveSG -value $groupExD
gui_list_set_height -id Wave -height $origWaveHeight
if {$origGroupCreationState} {
	gui_list_create_group_when_add -wave -enable
}
if { $groupExD } {
 gui_msg_report -code DVWW028
}
gui_list_set_filter -id ${Wave.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Wave.1} -text {*}
gui_list_set_insertion_bar  -id ${Wave.1} -group sum15  -position in

gui_marker_move -id ${Wave.1} {C1} 0
gui_view_scroll -id ${Wave.1} -vertical -set 848
gui_show_grid -id ${Wave.1} -enable false
# Restore toplevel window zorder
# The toplevel window could be closed if it has no view/pane
if {[gui_exist_window -window ${TopLevel.2}]} {
	gui_set_active_window -window ${TopLevel.2}
	gui_set_active_window -window ${Wave.1}
}
#</Session>

