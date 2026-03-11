iverilog -o sim generate_four_bit_adder.v tb_generate_adder.v "../full adder/full_adder.v"
vvp sim
gtkwave simulation.vcd
pause