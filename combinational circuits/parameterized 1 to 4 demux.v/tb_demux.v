module tb_demux;
    
    reg [3:0] a;
    reg [1:0] select;

    wire [3:0] out1, out2, out3, out4 ;

    demux_4to1 #(.N(4)) demux1(.a(a), .select(select), 
    .out1(out1), .out2(out2), .out3(out3), .out4(out4) );

    initial begin
        $dumpfile("simulation.vcd");
        $dumpvars(0, tb_demux);
        $monitor("a=%b select=%b out1=%b out2=%b out3=%b out4=%b", a, select, out1, out2, out3, out4);

        a = 4'b1010; select = 2'b00; #1;
        a = 4'b1010; select = 2'b10; #1;
        a = 4'b1010; select = 2'b01; #1;
        a = 4'b1010; select = 2'b11; #1;

        $finish;
    end
endmodule