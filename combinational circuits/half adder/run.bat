iverilog -o sim half_adder.v tb_half_adder.v
vvp sim
gtkwave simulation.vcd
pause