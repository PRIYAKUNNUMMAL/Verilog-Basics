module tb_decoder;
    
    reg [1:0] in ;
    wire [3:0] out ;

    decoder decoder1(.in(in), .out(out));

    initial begin
        $dumpfile("simulation.vcd");
        $dumpvars(0, tb_decoder);
        $monitor("in=%b out=%b",in, out);

        in = 10; #5;
        in = 11; #5;
        in = 00; #5;
    end
endmodule