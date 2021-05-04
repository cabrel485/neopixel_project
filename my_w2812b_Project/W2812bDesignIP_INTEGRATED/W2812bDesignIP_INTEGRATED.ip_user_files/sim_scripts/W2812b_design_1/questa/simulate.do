onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib W2812b_design_1_opt

do {wave.do}

view wave
view structure
view signals

do {W2812b_design_1.udo}

run -all

quit -force
