iverilog -o sim encoder.v tb_encoder.v 
vvp sim
gtkwave simulation.vcd
pause