# Begin_DVE_Session_Save_Info
# DVE full session
# Saved on Sun May 10 21:08:31 2020
# Designs open: 1
#   V1: /home/dfb220/proj/ece350-014-spring2020/dfb220/Final/Final_Project.dump
# Toplevel windows open: 1
# 	TopLevel.1
#   Source.1: 
#   Group count = 15
#   Group bmult0 signal count = 3
#   Group bmult1 signal count = 3
#   Group bmult2 signal count = 3
#   Group bmult3 signal count = 3
#   Group bmult4 signal count = 3
#   Group bmult5 signal count = 3
#   Group bmult6 signal count = 3
#   Group bmult7 signal count = 3
#   Group mult0 signal count = 3
#   Group mult1 signal count = 3
#   Group mult2 signal count = 3
#   Group mult3 signal count = 3
#   Group mult4 signal count = 3
#   Group mult5 signal count = 3
#   Group Group1 signal count = 8
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


# Create and position top-level window: TopLevel.1

if {![gui_exist_window -window TopLevel.1]} {
    set TopLevel.1 [ gui_create_window -type TopLevel \
       -icon $::env(DVE)/auxx/gui/images/toolbars/dvewin.xpm] 
} else { 
    set TopLevel.1 TopLevel.1
}
gui_show_window -window ${TopLevel.1} -show_state normal -rect {{91 84} {1331 837}}

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
gui_hide_toolbar -toolbar {Testbench}

# End ToolBar settings

# Docked window settings
set HSPane.1 [gui_create_window -type HSPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 159]
catch { set Hier.1 [gui_share_window -id ${HSPane.1} -type Hier] }
gui_set_window_pref_key -window ${HSPane.1} -key dock_width -value_type integer -value 159
gui_set_window_pref_key -window ${HSPane.1} -key dock_height -value_type integer -value -1
gui_set_window_pref_key -window ${HSPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${HSPane.1} {{left 0} {top 0} {width 158} {height 476} {dock_state left} {dock_on_new_line true} {child_hier_colhier 140} {child_hier_coltype 100} {child_hier_colpd 0} {child_hier_col1 0} {child_hier_col2 1} {child_hier_col3 -1}}
set DLPane.1 [gui_create_window -type DLPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 159]
catch { set Data.1 [gui_share_window -id ${DLPane.1} -type Data] }
gui_set_window_pref_key -window ${DLPane.1} -key dock_width -value_type integer -value 159
gui_set_window_pref_key -window ${DLPane.1} -key dock_height -value_type integer -value 476
gui_set_window_pref_key -window ${DLPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${DLPane.1} {{left 0} {top 0} {width 158} {height 476} {dock_state left} {dock_on_new_line true} {child_data_colvariable 140} {child_data_colvalue 100} {child_data_coltype 40} {child_data_col1 0} {child_data_col2 1} {child_data_col3 2}}
set Console.1 [gui_create_window -type Console -parent ${TopLevel.1} -dock_state bottom -dock_on_new_line true -dock_extent 164]
gui_set_window_pref_key -window ${Console.1} -key dock_width -value_type integer -value 1241
gui_set_window_pref_key -window ${Console.1} -key dock_height -value_type integer -value 164
gui_set_window_pref_key -window ${Console.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${Console.1} {{left 0} {top 0} {width 1240} {height 163} {dock_state bottom} {dock_on_new_line true}}
#### Start - Readjusting docked view's offset / size
set dockAreaList { top left right bottom }
foreach dockArea $dockAreaList {
  set viewList [gui_ekki_get_window_ids -active_parent -dock_area $dockArea]
  foreach view $viewList {
      if {[lsearch -exact [gui_get_window_pref_keys -window $view] dock_width] != -1} {
        set dockWidth [gui_get_window_pref_value -window $view -key dock_width]
        set dockHeight [gui_get_window_pref_value -window $view -key dock_height]
        set offset [gui_get_window_pref_value -window $view -key dock_offset]
        if { [string equal "top" $dockArea] || [string equal "bottom" $dockArea]} {
          gui_set_window_attributes -window $view -dock_offset $offset -width $dockWidth
        } else {
          gui_set_window_attributes -window $view -dock_offset $offset -height $dockHeight
        }
      }
  }
}
#### End - Readjusting docked view's offset / size
gui_sync_global -id ${TopLevel.1} -option true

# MDI window settings
set Source.1 [gui_create_window -type {Source}  -parent ${TopLevel.1}]
gui_show_window -window ${Source.1} -show_state maximized
gui_update_layout -id ${Source.1} {{show_state maximized} {dock_state undocked} {dock_on_new_line false}}

# End MDI window settings

gui_set_env TOPLEVELS::TARGET_FRAME(Source) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(Schematic) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(PathSchematic) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(Wave) none
gui_set_env TOPLEVELS::TARGET_FRAME(List) none
gui_set_env TOPLEVELS::TARGET_FRAME(Memory) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(DriverLoad) none
gui_update_statusbar_target_frame ${TopLevel.1}

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
gui_load_child_values {Final_Proj_Testbench.uut.bmult7}
gui_load_child_values {Final_Proj_Testbench.uut.mult0}
gui_load_child_values {Final_Proj_Testbench.uut.mult1}
gui_load_child_values {Final_Proj_Testbench.uut.mult2}
gui_load_child_values {Final_Proj_Testbench.uut.mult3}
gui_load_child_values {Final_Proj_Testbench.uut.mult4}
gui_load_child_values {Final_Proj_Testbench.uut.mult5}
gui_load_child_values {Final_Proj_Testbench.uut}
gui_load_child_values {Final_Proj_Testbench.uut.bmult0}
gui_load_child_values {Final_Proj_Testbench.uut.bmult1}
gui_load_child_values {Final_Proj_Testbench.uut.bmult2}
gui_load_child_values {Final_Proj_Testbench.uut.bmult3}
gui_load_child_values {Final_Proj_Testbench.uut.bmult4}
gui_load_child_values {Final_Proj_Testbench.uut.bmult5}
gui_load_child_values {Final_Proj_Testbench.uut.bmult6}


set _session_group_1 bmult0
gui_sg_create "$_session_group_1"
set bmult0 "$_session_group_1"

gui_sg_addsignal -group "$_session_group_1" { Final_Proj_Testbench.uut.bmult0.data Final_Proj_Testbench.uut.bmult0.coef Final_Proj_Testbench.uut.bmult0.product }

set _session_group_2 bmult1
gui_sg_create "$_session_group_2"
set bmult1 "$_session_group_2"

gui_sg_addsignal -group "$_session_group_2" { Final_Proj_Testbench.uut.bmult1.data Final_Proj_Testbench.uut.bmult1.coef Final_Proj_Testbench.uut.bmult1.product }

set _session_group_3 bmult2
gui_sg_create "$_session_group_3"
set bmult2 "$_session_group_3"

gui_sg_addsignal -group "$_session_group_3" { Final_Proj_Testbench.uut.bmult2.data Final_Proj_Testbench.uut.bmult2.coef Final_Proj_Testbench.uut.bmult2.product }

set _session_group_4 bmult3
gui_sg_create "$_session_group_4"
set bmult3 "$_session_group_4"

gui_sg_addsignal -group "$_session_group_4" { Final_Proj_Testbench.uut.bmult3.data Final_Proj_Testbench.uut.bmult3.coef Final_Proj_Testbench.uut.bmult3.product }

set _session_group_5 bmult4
gui_sg_create "$_session_group_5"
set bmult4 "$_session_group_5"

gui_sg_addsignal -group "$_session_group_5" { Final_Proj_Testbench.uut.bmult4.data Final_Proj_Testbench.uut.bmult4.coef Final_Proj_Testbench.uut.bmult4.product }

set _session_group_6 bmult5
gui_sg_create "$_session_group_6"
set bmult5 "$_session_group_6"

gui_sg_addsignal -group "$_session_group_6" { Final_Proj_Testbench.uut.bmult5.data Final_Proj_Testbench.uut.bmult5.coef Final_Proj_Testbench.uut.bmult5.product }

set _session_group_7 bmult6
gui_sg_create "$_session_group_7"
set bmult6 "$_session_group_7"

gui_sg_addsignal -group "$_session_group_7" { Final_Proj_Testbench.uut.bmult6.data Final_Proj_Testbench.uut.bmult6.coef Final_Proj_Testbench.uut.bmult6.product }

set _session_group_8 bmult7
gui_sg_create "$_session_group_8"
set bmult7 "$_session_group_8"

gui_sg_addsignal -group "$_session_group_8" { Final_Proj_Testbench.uut.bmult7.data Final_Proj_Testbench.uut.bmult7.coef Final_Proj_Testbench.uut.bmult7.product }

set _session_group_9 mult0
gui_sg_create "$_session_group_9"
set mult0 "$_session_group_9"

gui_sg_addsignal -group "$_session_group_9" { Final_Proj_Testbench.uut.mult0.data Final_Proj_Testbench.uut.mult0.coef Final_Proj_Testbench.uut.mult0.product }

set _session_group_10 mult1
gui_sg_create "$_session_group_10"
set mult1 "$_session_group_10"

gui_sg_addsignal -group "$_session_group_10" { Final_Proj_Testbench.uut.mult1.data Final_Proj_Testbench.uut.mult1.coef Final_Proj_Testbench.uut.mult1.product }

set _session_group_11 mult2
gui_sg_create "$_session_group_11"
set mult2 "$_session_group_11"

gui_sg_addsignal -group "$_session_group_11" { Final_Proj_Testbench.uut.mult2.data Final_Proj_Testbench.uut.mult2.coef Final_Proj_Testbench.uut.mult2.product }

set _session_group_12 mult3
gui_sg_create "$_session_group_12"
set mult3 "$_session_group_12"

gui_sg_addsignal -group "$_session_group_12" { Final_Proj_Testbench.uut.mult3.data Final_Proj_Testbench.uut.mult3.coef Final_Proj_Testbench.uut.mult3.product }

set _session_group_13 mult4
gui_sg_create "$_session_group_13"
set mult4 "$_session_group_13"

gui_sg_addsignal -group "$_session_group_13" { Final_Proj_Testbench.uut.mult4.data Final_Proj_Testbench.uut.mult4.coef Final_Proj_Testbench.uut.mult4.product }

set _session_group_14 mult5
gui_sg_create "$_session_group_14"
set mult5 "$_session_group_14"

gui_sg_addsignal -group "$_session_group_14" { Final_Proj_Testbench.uut.mult5.data Final_Proj_Testbench.uut.mult5.coef Final_Proj_Testbench.uut.mult5.product }

set _session_group_15 Group1
gui_sg_create "$_session_group_15"
set Group1 "$_session_group_15"

gui_sg_addsignal -group "$_session_group_15" { Final_Proj_Testbench.uut.clock Final_Proj_Testbench.uut.reset Final_Proj_Testbench.uut.status Final_Proj_Testbench.uut.data_en Final_Proj_Testbench.uut.i_rdata Final_Proj_Testbench.uut.i_traindata Final_Proj_Testbench.uut.flag Final_Proj_Testbench.uut.o_ry }

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


# Hier 'Hier.1'
gui_show_window -window ${Hier.1}
gui_list_set_filter -id ${Hier.1} -list { {Package 1} {All 0} {Process 1} {VirtPowSwitch 0} {UnnamedProcess 1} {UDP 0} {Function 1} {Block 1} {SrsnAndSpaCell 0} {OVA Unit 1} {LeafScCell 1} {LeafVlgCell 1} {Interface 1} {LeafVhdCell 1} {$unit 1} {NamedBlock 1} {Task 1} {VlgPackage 1} {ClassDef 1} {VirtIsoCell 0} }
gui_list_set_filter -id ${Hier.1} -text {*}
gui_hier_list_init -id ${Hier.1}
gui_change_design -id ${Hier.1} -design V1
catch {gui_list_expand -id ${Hier.1} Final_Proj_Testbench}
catch {gui_list_select -id ${Hier.1} {Final_Proj_Testbench.uut}}
gui_view_scroll -id ${Hier.1} -vertical -set 0
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Data 'Data.1'
gui_list_set_filter -id ${Data.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {LowPower 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Data.1} -text {*}
gui_list_show_data -id ${Data.1} {Final_Proj_Testbench.uut}
gui_show_window -window ${Data.1}
catch { gui_list_select -id ${Data.1} {Final_Proj_Testbench.uut.clock Final_Proj_Testbench.uut.reset Final_Proj_Testbench.uut.status Final_Proj_Testbench.uut.data_en Final_Proj_Testbench.uut.i_rdata Final_Proj_Testbench.uut.i_traindata Final_Proj_Testbench.uut.flag Final_Proj_Testbench.uut.o_ry }}
gui_view_scroll -id ${Data.1} -vertical -set 0
gui_view_scroll -id ${Data.1} -horizontal -set 0
gui_view_scroll -id ${Hier.1} -vertical -set 0
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Source 'Source.1'
gui_src_value_annotate -id ${Source.1} -switch false
gui_set_env TOGGLE::VALUEANNOTATE 0
gui_view_scroll -id ${Source.1} -vertical -set 0
gui_src_set_reusable -id ${Source.1}
# Restore toplevel window zorder
# The toplevel window could be closed if it has no view/pane
if {[gui_exist_window -window ${TopLevel.1}]} {
	gui_set_active_window -window ${TopLevel.1}
	gui_set_active_window -window ${Source.1}
	gui_set_active_window -window ${DLPane.1}
}
#</Session>

