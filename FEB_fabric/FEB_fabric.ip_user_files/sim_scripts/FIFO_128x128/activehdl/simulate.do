transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+FIFO_128x128  -L xpm -L fifo_generator_v13_2_8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.FIFO_128x128 xil_defaultlib.glbl

do {FIFO_128x128.udo}

run 1000ns

endsim

quit -force
