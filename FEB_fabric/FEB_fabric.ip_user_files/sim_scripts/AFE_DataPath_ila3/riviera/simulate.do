transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+AFE_DataPath_ila3  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.AFE_DataPath_ila3 xil_defaultlib.glbl

do {AFE_DataPath_ila3.udo}

run 1000ns

endsim

quit -force
