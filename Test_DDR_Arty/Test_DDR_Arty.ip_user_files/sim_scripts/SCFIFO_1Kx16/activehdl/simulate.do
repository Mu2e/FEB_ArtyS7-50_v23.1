transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+SCFIFO_1Kx16  -L xpm -L fifo_generator_v13_2_8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.SCFIFO_1Kx16 xil_defaultlib.glbl

do {SCFIFO_1Kx16.udo}

run 1000ns

endsim

quit -force
