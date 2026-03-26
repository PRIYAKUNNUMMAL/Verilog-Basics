module half_adder (input a,b, output sum,cy);

    assign sum = a ^ b ;
    assign cy = (a&b) ; 

    
endmodule