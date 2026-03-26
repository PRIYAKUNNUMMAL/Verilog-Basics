module tb_half_adder;

    reg a,b;
    wire sum,cy;

    half_adder dut(.a(a), .b(b), .sum(sum), .cy(cy));

    integer i;

    initial begin
        $dumpfile("simulation.vcd");
        $dumpvars(0, tb_half_adder);

        $monitor("Time=%0t | a=%b b=%b | sum=%b carry=%b", $time, a, b, sum, cy);

       
        for(i = 0; i < 4; i = i + 1) begin
            {a, b} = i; #10;
         end

        $finish;
    end
    
endmodule