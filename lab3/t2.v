module t2(clk,D,St,Q);
	input clk,D,St;
	output reg Q,QD;
	always @(posedge clk) 
		begin
			if(St) Q<=1;
			else Q<=D;
		end
endmodule

