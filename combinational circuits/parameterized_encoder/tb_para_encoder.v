module tb_para_encoder; 
    
    reg [3:0] in ;
    wire [1:0] out ;

    para_encoder #(.N(4)) encoder1(.in(in), .out(out));

    initial begin
        $dumpfile("simulation.vcd");
        $dumpvars(0, tb_para_encoder);
        $monitor("in=%b out=%b",in, out);

        in = 4'b1100; #5;
        in = 4'b0100; #5;
    end
endmodule