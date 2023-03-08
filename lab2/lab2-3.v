module demo(a,b,sel,out);
    input a,b,sel;
    output out;
    wire a,b,sel,out;
    wire nsel,w1,w2;
    and (w1,a,nsel),
    (w2,b,sel);
    or (out,w1,w2);
    not (nsel,sel);
endmodule
