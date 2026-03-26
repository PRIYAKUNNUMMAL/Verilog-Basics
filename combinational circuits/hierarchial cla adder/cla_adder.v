module cla_adder #(parameter N = 16)(
    input [N-1:0] a,b, input cin, output [N-1:0] sum, output cout
);
    wire [N-1:0] G,P;
    wire [N:0] carry;
    localparam B = N/4;
    wire [B-1:0] G_grp, P_grp; //block variables
    assign G = a & b;
    assign P = a ^ b;
    assign carry[0] = cin;

    genvar i;
    generate
        for (i = 0;i<N ;i=i+4 ) begin : BLOCKS
           clablock_adder block(.G(G[(i+3):i]), .P(P[(i+3):i]), .cin(carry[i]), 
           .carry(carry[(i+3):(i+1)]), .G_group(G_grp[i/4]), .P_group(P_grp[i/4])); 
        end
    endgenerate
    genvar k,j;
    generate
        for (k = 0;k<B ;k=k+1 ) begin : CARRY
            if (k==0) begin
                assign carry[4] = G_grp[0] | P_grp[0] & carry[0];
            end else begin
                wire [k:0] term;
                assign term[k] = G_grp[k];
                for (j=0;j<k ;j=j+1 ) begin
                    assign term[j] = G_grp[j] & (&(P_grp[k:j+1]));                
                end
                assign carry[4*(k+1)] = (|term) | ((&P_grp[k:0]) & carry[0]); 
            end
        end
    endgenerate
    
    assign sum = P ^ carry[N-1:0];
    assign cout = carry[N];
endmodule