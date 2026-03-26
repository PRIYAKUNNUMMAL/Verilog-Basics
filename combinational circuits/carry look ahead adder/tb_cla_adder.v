module tb_cla_adder;

    reg [3:0] a,b ;
    reg cin;
    wire [3:0] sum ;
    wire cout;

    cla_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
    integer i,j,k;

    initial begin
        $dumpfile("simulation.vcd");
        $dumpvars(0, tb_cla_adder);

        for (i = 0 ;i<16 ;i=i+1 ) begin
            for (j = 0;j<16 ;j=j+1 ) begin
                for (k = 0;k<2 ;k=k+1 ) begin
                   a = i;
                   b = j; 
                   cin = k;#5; 
                   if ({cout, sum} !== (a+b+cin)) begin
                    $display("Error at TIme=%0t | a=%b b=%b cin=%b | expected=%b got=%b", 
                    $time, a, b, cin, (a+b+cin), {cout,sum});
                   end
                end     
            end
        end
        $display("All test cases completed");
        $finish;
    end
endmodule    