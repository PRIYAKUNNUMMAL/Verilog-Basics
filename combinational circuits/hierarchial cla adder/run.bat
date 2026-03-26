iverilog -o sim cla_block_adder.v cla_adder.v tb_cla_adder.v
vvp sim
gtkwave simulation.vcd
pause