module T3(
        input clk,rst,
        output reg[3:0] h,
        reg [1:0]An
    );
    wire clk_10hz,clk_200hz;
    reg[23:0] cnt_1;
    reg[19:0] cnt_2;
    assign clk_10hz= (cnt_1 == 24'h1);
    assign clk_200hz= (cnt_2 == 20'h1);
    always@(posedge clk)
    begin
        if(rst) cnt_1 <= 0;
        else if(cnt_1 >= 9999999) cnt_1 <= 0;
        else cnt_1 <= cnt_1+1;
    end
    always@(posedge clk)
    begin
        if(rst) cnt_2 <= 0;
        else if(cnt_2 >= 499999) cnt_2 <= 0;
        else cnt_2 <= cnt_2+1;
    end
    reg [3:0] deca_sec , sec, ten_sec , min;
    always @(posedge clk)
    begin
        if (rst)
        begin
            min <= 4'h1;
            ten_sec <= 4'h2;
            sec <= 4'h3;
            deca_sec <= 4'h4;
        end
        else if (clk_10hz)
        begin
        if (deca_sec >= 4'h9)
        begin
            deca_sec <= 4'h0;
            if (sec >= 4'h9)
            begin
                sec <= 4'h0;
                if (ten_sec >= 4'h5)
                begin
                    ten_sec <= 4'h0;
                    if (min >= 4'h9) min <= 4'h0;
                    else min <= min + 1;
                end
                else ten_sec <= ten_sec + 1;
            end
        else sec <= sec + 1;
        end
        else deca_sec <= deca_sec + 1;
        end
    end
    always @(posedge clk)
    begin
        if (clk_200hz)
        begin
            if (An >= 2'h3) An <= 2'h0;
            else An <= An + 1;
        end
    end
    always @(posedge clk)
    begin
        case(An)
        2'h0: h <= deca_sec;
        2'h1: h <= sec;
        2'h2: h <= ten_sec;
        2'h3: h <= min;
        endcase
    end
endmodule
