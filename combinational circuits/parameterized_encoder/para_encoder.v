module para_encoder #(parameter N = 4)(
    input [N-1:0] in,
    output reg [$clog2(N)-1:0] out
);
    integer i;
    always @(*) begin
        out = 0;
        for (i = 0; i<N ; i=i+1 )
        begin
            if (in[i])
                out = i;
        end
    end
       
endmodule