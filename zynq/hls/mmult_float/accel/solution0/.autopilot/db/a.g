#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/nhat/Desktop/code/cs5222-lab-fpga/zynq/hls/mmult_float/accel/solution0/.autopilot/db/a.g.bc ${1+"$@"}