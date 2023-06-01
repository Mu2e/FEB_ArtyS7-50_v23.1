onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib SCFIFO_32x256_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {SCFIFO_32x256.udo}

run 1000ns

quit -force
