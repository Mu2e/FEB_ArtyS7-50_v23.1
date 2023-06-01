transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+AFE_DP_Pipeline  -L xpm -L blk_mem_gen_v8_4_6 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.AFE_DP_Pipeline xil_defaultlib.glbl

do {AFE_DP_Pipeline.udo}

run 1000ns

endsim

quit -force
