iverilog -o sim parameterized_adder.v tb_para_adder.v "../full adder/full_adder.v"
vvp sim
gtkwave simulation.vcd
pause