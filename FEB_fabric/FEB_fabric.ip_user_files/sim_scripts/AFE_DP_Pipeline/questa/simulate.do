onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib AFE_DP_Pipeline_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {AFE_DP_Pipeline.udo}

run 1000ns

quit -force
