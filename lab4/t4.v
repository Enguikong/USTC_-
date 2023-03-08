module sub_test(
    input a,b,
    output c
);
    c=(a<b)? a:b;//assign不能给reg赋值
endmodule

module test #(
    input a,b,c,
    output o
);
    wire temp;
    sub_test sub_test1(.a(a), .b(b), .c(temp));
    sub_test sub_test2(temp, c, o); //名称匹配和位置匹配不能混用
endmodule

