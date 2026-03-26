iverilog -o sim cla_adder.v tb_cla_adder.v 
vvp sim
gtkwave simulation.vcd
pause