onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib DPRAM_1Kx16_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {DPRAM_1Kx16.udo}

run 1000ns

quit -force
