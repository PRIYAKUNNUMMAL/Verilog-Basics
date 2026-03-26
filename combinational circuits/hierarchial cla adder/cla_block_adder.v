module clablock_adder (
    input [3:0] G,P, input cin, output [2:0] carry, output G_group, P_group
);
    assign carry[0] = G[0] | (P[0] & cin);
    assign carry[1] = G[1] | (P[1] & (G[0] | (P[0] & cin)));
    assign carry[2] = G[2] | (P[2] & (G[1] | (P[1] & (G[0] | (P[0] & cin)))));

    assign G_group = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]);
    assign P_group = P[3] & P[2] & P[1] & P[0];
    
endmodule