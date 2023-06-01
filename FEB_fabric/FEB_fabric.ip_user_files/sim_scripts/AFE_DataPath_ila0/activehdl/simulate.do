transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+AFE_DataPath_ila0  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.AFE_DataPath_ila0 xil_defaultlib.glbl

do {AFE_DataPath_ila0.udo}

run 1000ns

endsim

quit -force
