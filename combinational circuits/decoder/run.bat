iverilog -o sim decoder.v tb_decoder.v 
vvp sim
gtkwave simulation.vcd
pause