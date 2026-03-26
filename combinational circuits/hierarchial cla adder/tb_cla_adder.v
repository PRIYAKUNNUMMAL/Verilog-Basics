module tb_cla_adder;

    localparam N=16;
    reg [N-1:0] a,b ;
    reg cin;
    wire [N-1:0] sum ;
    wire cout;

    cla_adder #(N) dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
    integer i,j,k;

    initial begin
        $dumpfile("simulation.vcd");
        $dumpvars(0, tb_cla_adder);

        repeat (10) begin
            a = $random;
            b = $random;
            cin = $random;
            #10;
            if ({cout, sum} !== (a+b+cin)) begin
                    $display("Error at Time=%0t | a=%d b=%d cin=%b | expected=%d got=%d", 
                    $time, a, b, cin, (a+b+cin), {cout,sum});
                   end
        end

        $display("All test cases completed");
        $finish;
    end
endmodule    