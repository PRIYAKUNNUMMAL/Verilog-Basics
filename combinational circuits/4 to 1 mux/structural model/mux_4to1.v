module mux_4to1 (
    input i0,i1,i2,i3,s0,s1, output reg out
);

    not not1(s0bar,s0);
    not not2(s1bar,s1);

    and and1(net1,i0,s0bar,s1bar);
    and and2(net2,i1,s0,s1bar);
    and and3(net3,i2,s0bar,s1);
    and and4(net4,i3,s0,s1);

    or or1(out,net1,net2,net3,net4);
   
endmodule