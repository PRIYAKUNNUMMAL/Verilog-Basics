module tb_full_adder;

    reg a,b,cin;
    wire sum,cy;

    full_adder dut(.a(a), .b(b), .cin(cin), .sum(sum), .cy(cy));

    initial begin
        $dumpfile("simulation.vcd");
        $dumpvars(0, tb_full_adder);

        a = 0; b = 0; cin = 0; #10;
        a = 1; b = 0; cin = 1; #10;
        a = 0; b = 1; cin = 0; #10;
        a = 1; b = 1; cin = 1; #10;
        a = 1; b = 0; cin = 0; #10;
        a = 0; b = 0; cin = 1; #10;

        $finish;
    end
    
endmodule