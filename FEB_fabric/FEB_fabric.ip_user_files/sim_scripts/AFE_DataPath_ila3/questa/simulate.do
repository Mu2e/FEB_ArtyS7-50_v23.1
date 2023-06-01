onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib AFE_DataPath_ila3_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {AFE_DataPath_ila3.udo}

run 1000ns

quit -force
