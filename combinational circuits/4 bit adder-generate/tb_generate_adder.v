module tb_generate_adder;

    reg [3:0] a,b ;
    reg cin;

    wire [3:0] sum ;
    wire cout;

    generate_four_bit_adder #(4) dut(a,b,cin,sum,cout);

    initial begin
        $dumpfile("simulation.vcd");
        $dumpvars(0, tb_generate_adder);

        a = 4'b1100;
        b = 4'b1010;
        cin = 0; #10;

        $display("a=%b b=%b sum=%b cout=%b",a,b,sum,cout);

        #10 $finish;
    end

endmodule