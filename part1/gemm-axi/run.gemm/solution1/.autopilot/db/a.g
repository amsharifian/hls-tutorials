#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/amirali/git/hls-tutorials/part1/gemm-axi/run.gemm/solution1/.autopilot/db/a.g.bc ${1+"$@"}
