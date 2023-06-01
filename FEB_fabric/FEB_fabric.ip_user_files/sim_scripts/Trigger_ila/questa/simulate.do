onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib Trigger_ila_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {Trigger_ila.udo}

run 1000ns

quit -force
