transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+rom_ip  -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_9 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.rom_ip xil_defaultlib.glbl

do {rom_ip.udo}

run 1000ns

endsim

quit -force
