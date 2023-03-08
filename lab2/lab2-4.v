module tco(a,b,sel,out);
    input a,b,sel;
    output out;
    wire a,b,sel,out;
    wire nsel,w1,w2;
    and (w1,a,nsel),
    (w2,b,sel);
    or (out,w1,w2);
    not (nsel,sel);
endmodule
module fco(a,b,c,d,sel1,sel0);
    input a,b,c,d,sel1,sel0;
    output out;
    wire w1,w2;
    tco fco1(
        .a(a),
        .b(b),
        .sel(sel0),
        .out(w1)
    );
    tco fco2(
        .a(c),
        .b(d),
        .sel(sel0),
        .out(w2)
    );
    tco fco3(
        .a(w1),
        .b(w2),
        .sel(sel1),
        .out(out)
    );
endmodule
