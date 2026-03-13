module tb_encoder; 
    
    reg i0,i1,i2,i3 ;
    wire [1:0] out ;

    wire [3:0] check ;
    //assign check = {i3,i2,i1,i0};

    encoder encoder1(.i0(i0), .i1(i1), .i2(i2), .i3(i3), .out(out));

    initial begin
        $dumpfile("simulation.vcd");
        $dumpvars(0, tb_encoder);
        $monitor("i3=%b i2=%b i1=%b i0=%b out=%b",i3, i2, i1, i0, out);

        //$monitor("check=%b ",check);

        i3 = 1; i2 = 1; i1 = 0; i0 = 0; #5;
        i3 = 0; i2 = 1; i1 = 0; i0 = 1; #5;
        i3 = 0; i2 = 0; i1 = 0; i0 = 1; #5;
        i3 = 0; i2 = 1; i1 = 1; i0 = 0; #5;
    end
endmodule