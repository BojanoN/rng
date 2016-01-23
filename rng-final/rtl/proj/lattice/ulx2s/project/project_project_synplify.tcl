#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file

#device options
set_option -technology LATTICE-XP2
set_option -part LFXP2_8E
set_option -package TN144C
set_option -speed_grade -6

#compilation/mapping options
set_option -symbolic_fsm_compiler true
set_option -resource_sharing true

#use verilog 2001 standard option
set_option -vlog_std v2001

#map options
set_option -frequency 1
set_option -maxfan 1000
set_option -auto_constrain_io 0
set_option -disable_io_insertion false
set_option -retiming false; set_option -pipe true
set_option -force_gsr false
set_option -compiler_compatible 0
set_option -dup false
set_option -frequency 1
set_option -default_enum_encoding default

#simulation options


#timing analysis options



#automatic place and route (vendor) options
set_option -write_apr_constraint 1

#synplifyPro options
set_option -fix_gated_and_generated_clocks 1
set_option -update_models_cp 0
set_option -resolve_multiple_driver 0


#-- add_file options
add_file -vhdl {C:/lscc/diamond/3.5_x64/cae_library/synthesis/vhdl/xp2.vhd}
add_file -vhdl -lib "work" {C:/Users/Bojan/Documents/rngfinal/flearadio-master-final/rtl/lattice/ulx2s_toplevel.vhd}
add_file -vhdl -lib "work" {C:/Users/Bojan/Documents/rngfinal/flearadio-master-final/rtl/lattice/lfxp2_rf_pll.vhd}
add_file -vhdl -lib "work" {C:/Users/Bojan/Documents/rngfinal/flearadio-master-final/rtl/lattice/lfxp2_pll_25M_50M_8M33.vhd}
add_file -vhdl -lib "work" {C:/Users/Bojan/Documents/rngfinal/flearadio-master-final/rtl/lattice/lfxp2_pll_50M_360M_10M.vhd}
add_file -vhdl -lib "work" {C:/Users/Bojan/Documents/rngfinal/flearadio-master-final/rtl/generic/FleaFPGA_FM_Radio.vhd}
add_file -vhdl -lib "work" {C:/Users/Bojan/Documents/rngfinal/flearadio-master-final/rtl/generic/Simple_FIR_8bit.vhd}
add_file -vhdl -lib "work" {C:/Users/Bojan/Documents/rngfinal/flearadio-master-final/rtl/generic/simple_PWM.vhd}
add_file -vhdl -lib "work" {C:/Users/Bojan/Documents/rngfinal/flearadio-master-final/rtl/generic/FMPLL_Loop_filter.vhd}
add_file -vhdl -lib "work" {C:/Users/Bojan/Documents/rngfinal/flearadio-master-final/rtl/generic/FMPLL_NCO.vhd}
add_file -vhdl -lib "work" {C:/Users/Bojan/Documents/rngfinal/flearadio-master-final/rtl/generic/FMPLL_phase_detector.vhd}
add_file -vhdl -lib "work" {C:/Users/Bojan/Documents/rngfinal/flearadio-master-final/rtl/generic/FMPLL_top.vhd}
add_file -vhdl -lib "work" {C:/Users/Bojan/Documents/rngfinal/flearadio-master-final/rtl/generic/Simple_FIR.vhd}
add_file -vhdl -lib "work" {C:/Users/Bojan/Documents/rngfinal/flearadio-master-final/rtl/proj/lattice/ulx2s/FIR8_asinc.vhd}

#-- top module name
set_option -top_module ulx2s_fm_radio

#-- set result format/file last
project -result_file {C:/Users/Bojan/Documents/rngfinal/flearadio-master-final/rtl/proj/lattice/ulx2s/project/project_project.edi}

#-- error message log file
project -log_file {project_project.srf}

#-- set any command lines input by customer


#-- run Synplify with 'arrange HDL file'
project -run hdl_info_gen -fileorder
project -run
