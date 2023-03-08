module counter_neg(CLK,RST,Num);
    input CLK,RST;
    output reg [3:0] Num;
    
    always @(posedge CLK)
    begin
        if(RST==0)
            Num <= 4'b1001;
        else if(Num==4'b0)
            Num <= 4'b1001;
        else
            Num <= Num-4'b0001;
    end
endmodule


