module encoder (
    input i0, i1, i2, i3,
    output reg [1:0] out
);
    
    always @(*) begin
        casex ({i3,i2,i1,i0})
           4'b1xxx : out = 2'b11;
           4'b01xx : out = 2'b10;
           4'b001x : out = 2'b01;
           4'b0001 : out = 2'b00;
            default: out = 2'bxx;
        endcase
    end

endmodule