iverilog -o sim four_bit_adder.v tb_four_bit_adder.v "../full adder/full_adder.v"
vvp sim
gtkwave simulation.vcd
pause