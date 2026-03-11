iverilog -o sim full_adder.v tb_full_adder.v
vvp sim
gtkwave simulation.vcd
pause