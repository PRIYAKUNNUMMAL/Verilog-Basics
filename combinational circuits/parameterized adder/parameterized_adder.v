module para_four_bit_adder #(parameter N = 4 )
 (input [N-1:0] a,b, input cin, output [N-1:0] sum, output cout);

 wire [N:0] carry ;
 assign carry[0] = cin;

 genvar i;
 generate
    for (i = 0;i<N ;i=i+1 ) begin : adder_loop
        full_adder fa(.a(a[i]), .b(b[i]), .cin(carry[i]), .sum(sum[i]), .cy(carry[i+1]));
    end
 endgenerate

 assign cout = carry[N];
    
endmodule