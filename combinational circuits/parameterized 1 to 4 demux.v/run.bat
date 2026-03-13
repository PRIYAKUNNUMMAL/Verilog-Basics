iverilog -o sim demux_4to1.v tb_demux.v 
vvp sim
gtkwave simulation.vcd
pause