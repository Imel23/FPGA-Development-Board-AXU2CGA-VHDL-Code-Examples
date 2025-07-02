transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+fifo_ip  -L xil_defaultlib -L xpm -L fifo_generator_v13_2_11 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fifo_ip xil_defaultlib.glbl

do {fifo_ip.udo}

run 1000ns

endsim

quit -force
