module demux_4to1 #(parameter N = 4 ) (
    input [N-1:0] a, input [1:0] select,
    output [N-1:0] out1, out2, out3, out4
);
    
    assign out1 = (select == 2'b00) ? a : 0;
    assign out2 = (select == 2'b01) ? a : 0;
    assign out3 = (select == 2'b10) ? a : 0;
    assign out4 = (select == 2'b11) ? a : 0;
    
endmodule