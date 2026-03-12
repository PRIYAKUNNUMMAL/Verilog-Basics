iverilog -o sim mux_4to1.v tb_mux_4to1.v 
vvp sim
gtkwave simulation.vcd
pause