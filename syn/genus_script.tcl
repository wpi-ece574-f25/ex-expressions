set_db init_lib_search_path /opt/cadence/libraries/gsclib045_all_v4.7/gsclib045/timing/ 
read_libs slow_vdd1v0_basicCells.lib

set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium

gui_show

#------------------
read_hdl -language sv ../rtl/ex1.sv
elaborate
set_top_module ex1

read_sdc ../constraints/constraints_comb.sdc

syn_generic
syn_map
syn_opt


#------------------
read_hdl -language sv ../rtl/ex2.sv
elaborate
set_top_module ex2

read_sdc ../constraints/constraints_comb.sdc

syn_generic
syn_map
syn_opt

report_timing


#------------------
read_hdl -language sv ../rtl/ex3.sv
elaborate
set_top_module ex3

read_sdc ../constraints/constraints_comb.sdc

syn_generic
syn_map
syn_opt

report_timing

#------------------
read_hdl -language sv ../rtl/ex4.sv
elaborate
set_top_module ex4

read_sdc ../constraints/constraints_comb.sdc

syn_generic
syn_map
syn_opt

report_timing


#------------------
read_hdl -language sv ../rtl/ex5.sv
elaborate
set_top_module ex5

read_sdc ../constraints/constraints_comb.sdc

syn_generic
syn_map
syn_opt

report_timing


#------------------
read_hdl -language sv ../rtl/ex6.sv
elaborate
set_top_module ex6

read_sdc ../constraints/constraints_comb.sdc

syn_generic
syn_map
syn_opt

report_timing


#------------------
read_hdl -language sv ../rtl/ex7.sv
elaborate
set_top_module ex7

read_sdc ../constraints/constraints_comb.sdc

syn_generic
syn_map
syn_opt

report_timing


#------------------
read_hdl -language sv ../rtl/ex8.sv
elaborate
set_top_module ex8

read_sdc ../constraints/constraints_comb.sdc

syn_generic
syn_map
syn_opt

report_timing

#------------------
read_hdl -language sv ../rtl/ex9.sv
elaborate
set_top_module ex9

read_sdc ../constraints/constraints_comb.sdc

syn_generic
syn_map
syn_opt

report_timing

#------------------
read_hdl -language sv ../rtl/ex10.sv
elaborate
set_top_module ex10

read_sdc ../constraints/constraints_comb.sdc

syn_generic
syn_map
syn_opt

report_timing

#------------------
read_hdl -language sv ../rtl/ex11.sv
elaborate
set_top_module ex11

read_sdc ../constraints/constraints_comb.sdc

syn_generic
syn_map
syn_opt

report_timing


#------------------
read_hdl -language sv ../rtl/ex12.sv
elaborate
set_top_module ex12

read_sdc ../constraints/constraints_comb.sdc

syn_generic
syn_map
syn_opt

report_timing


#------------------
read_hdl -language sv ../rtl/ex13.sv
elaborate
set_top_module ex13

read_sdc ../constraints/constraints_comb.sdc

syn_generic
syn_map
syn_opt

report_timing

#------------------
read_hdl -language sv ../rtl/ex14.sv
elaborate
set_top_module ex14

read_sdc ../constraints/constraints_clk.sdc

syn_generic
syn_map
syn_opt

report_timing


#------------------
read_hdl -language sv ../rtl/ex15.sv
elaborate
set_top_module ex15

read_sdc ../constraints/constraints_clk.sdc

syn_generic
syn_map
syn_opt

report_timing


#------------------
read_hdl -language sv ../rtl/ex16.sv
elaborate
set_top_module ex16

read_sdc ../constraints/constraints_clk.sdc

syn_generic
syn_map
syn_opt

report_timing

#------------------
read_hdl -language sv ../rtl/ex17.sv
elaborate
set_top_module ex17

read_sdc ../constraints/constraints_clk.sdc

syn_generic
syn_map
syn_opt

report_timing

#------------------
read_hdl -language sv ../rtl/ex18.sv
elaborate
set_top_module ex18

read_sdc ../constraints/constraints_clk.sdc

syn_generic
syn_map
syn_opt

report_timing

#------------------
read_hdl -language sv ../rtl/ex19.sv
elaborate
set_top_module ex19

read_sdc ../constraints/constraints_clk.sdc

syn_generic
syn_map
syn_opt

report_timing


#------------------
read_hdl -language sv ../rtl/ex20.sv
elaborate
set_top_module ex20

read_sdc ../constraints/constraints_clk.sdc

syn_generic
syn_map
syn_opt

report_timing

#------------------
read_hdl -language sv ../rtl/ex21.sv
elaborate
set_top_module ex21

read_sdc ../constraints/constraints_clk.sdc

syn_generic
syn_map
syn_opt

report_timing
