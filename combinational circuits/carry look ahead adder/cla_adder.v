module cla_adder (
    input [3:0] a,b, input cin, output [3:0] sum, output cout
);
    wire [3:0] G,P;
    wire [4:0] carry;
    assign carry[0] = cin;
    assign G = a & b;
    assign P = a ^ b;

    assign carry[1] = G[0] | (P[0] & carry[0]);
    assign carry[2] = G[1] | (P[1] & (G[0] | (P[0] & carry[0])));
    assign carry[3] = G[2] | (P[2] & (G[1] | (P[1] & (G[0] | (P[0] & carry[0])))));
    assign carry[4] = G[3] | (P[3] & (G[2] | (P[2] & (G[1] | (P[1] & (G[0] | (P[0] & carry[0])))))));

    assign cout = carry[4];
    assign sum = P ^ carry[3:0];
endmodule