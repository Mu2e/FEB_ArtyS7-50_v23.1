transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+DDR3LController  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.DDR3LController xil_defaultlib.glbl

do {DDR3LController.udo}

run 1000ns

endsim

quit -force
