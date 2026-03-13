iverilog -o sim para_encoder.v tb_para_encoder.v 
vvp sim
gtkwave simulation.vcd
pause