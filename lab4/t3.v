module test(
    input [7:0] a,b;
    output [7:0] c,d,e,f,g,h,i,j,k
);
    assign c=a & b;     //c=8'b0011_0000
    assign d=a | b;     //d=8'b1111_0011
    assign e=a ^ b;     //e=8'b1100_0011
    assign f=~a;        //f=8'b1100_1100
    assign g={a[3:0],b[3:0]};       //g=8'b0011_0000
    assign h=a>>3;      //h=8'b0000_0110
    assign i=&b;        //i=8'b0000_0000
    assign j=(a>b)? a:b;        //j=8'b1111_0000
    assign k=a-b;       //k=8'b0100_0011
endmodule
//a=8'b0011_0011,b=8'b1111_0000

