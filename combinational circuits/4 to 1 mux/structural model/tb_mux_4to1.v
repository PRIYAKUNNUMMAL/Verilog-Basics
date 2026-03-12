module tb_mux; 

    reg i0,i1,i2,i3,s1,s0;
    wire out;

    mux_4to1 mux1(i0,i1,i2,i3,s0,s1,out);

    initial begin
        $dumpfile("simulation.vcd");
        $dumpvars(0, tb_mux);

        i0 = 1; i1 = 0; i2 = 0; i3 = 0; s0 = 0; s1 = 1; #1;
        i0 = 1; i1 = 0; i2 = 0; i3 = 0; s0 = 1; s1 = 1; #1;
        i0 = 1; i1 = 0; i2 = 0; i3 = 0; s0 = 0; s1 = 0; #1;
        i0 = 1; i1 = 0; i2 = 1; i3 = 1; s0 = 1; s1 = 0; #1;
        i0 = 0; i1 = 1; i2 = 0; i3 = 1; s0 = 0; s1 = 1; #1;

        $finish;
    end
    
endmodule