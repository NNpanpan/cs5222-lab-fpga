############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project accel
set_top mmult_hw
add_files ./mmult_float.cpp
add_files -tb mmult_test.cpp
open_solution "solution0"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./accel/solution0/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
