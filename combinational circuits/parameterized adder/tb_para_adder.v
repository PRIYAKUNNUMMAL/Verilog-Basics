module tb_para_adder;
    parameter N = 2;
    reg [N-1:0] a,b ;
    reg cin;

    wire [N-1:0] sum ;
    wire cout;

    para_four_bit_adder #(N) dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
    integer i,j,k;

    initial begin
        $dumpfile("simulation.vcd");
        $dumpvars(0, tb_para_adder);
        for (i = 0 ;i<(1<<N) ;i=i+1 ) begin
            for (j = 0;j<(1<<N) ;j=j+1 ) begin
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
        $display("All test cases completed");$finish;
    end

endmodule