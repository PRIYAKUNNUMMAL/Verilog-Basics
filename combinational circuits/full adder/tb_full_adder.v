module tb_full_adder;

    reg a,b,cin;
    wire sum,cy;

    full_adder dut(.a(a), .b(b), .cin(cin), .sum(sum), .cy(cy));
    integer i;

    initial begin
        $dumpfile("simulation.vcd");
        $dumpvars(0, tb_full_adder);

        $monitor("Time=%0t | a=%b b=%b carryin=%b | sum=%b carryout=%b ",$time,a,b,cin,sum,cy);

        for (i = 0;i<8 ;i=i+1 ) begin
            {a,b,cin} = i; #5;
        end

        $finish;
    end
    
endmodule