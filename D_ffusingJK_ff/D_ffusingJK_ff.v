module D_ffusingJK_ff(d,clk,rst,q,qbar);
	input d,clk,rst;
	output q,qbar;
    wire k,j;
    assign k= ~d;
	 assign j= d;
    JK_ff DFF0(j,k,clk,rst,q,qbar);	 
 endmodule

 
module JK_ff (	input wire J,input wire K,input wire clk,input wire rst,output reg Q, output Qnot);				
	always @(posedge clk) begin
		if(rst)
			Q <= 1'b0;
		else begin
			case({J,K})
				2'b00 : Q <= Q;
				2'b01 : Q <= 1'b0;
				2'b10 : Q <= 1'b1;
				2'b11 : Q <= ~Q;
			endcase
		end
	end
	assign Qnot= ~Q;	
endmodule
	 