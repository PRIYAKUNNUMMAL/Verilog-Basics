module full_adder (input a,b,cin, output sum,cy);

    assign sum = a ^ b ^ cin;
    assign cy = (a&b) | (a&cin) | (b&cin); 

    
endmodule