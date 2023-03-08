module item5(i,y);
    input i;
    output y;
    wire [7:0]i;
    wire [2:0]y;
    assign y[2]= i[7] | ( ~i[7] & i[6] ) | (~i[7] & ~i[6] & i[5]) | ( ~i[7] & ~i[6] & ~i[5] & i[4] ) ;
    assign y[1]= i[7] | ( ~i[7] & i[6] ) | (~i[7] & ~i[6] & ~i[5] & ~i[4] & i[3] )  | (~i[7] & ~i[6] & ~i[5] & ~i[4] & ~i[3] & i[2] ) ;
    assign y[0]= i[7] | ( ~i[7] & ~i[6] & i[5]) | (~i[7] & ~i[6] & ~i[5] & ~i[4] & i[3] )  | (~i[7] & ~i[6] & ~i[5] & ~i[4] & ~i[3] & ~i[2] & i[1]) ;
endmodule
