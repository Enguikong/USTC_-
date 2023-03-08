module Counter4(CLK,RST,Num);
    input CLK,RST;
    output reg [3:0] Num;
    
    always @(posedge CLK or negedge RST)
    begin
        if(RST==0)
            Num <= 4'b0;
        else
            Num <= Num + 4'b1;
    end
endmodule

