module multiplexer_4x1_tb();
wire out;
reg [1:0]sel;
reg in;
fuction11 m1(sel[0],sel[1],in,out);
initial begin
      sel = 0;
		in=0;

      #10;

      sel = 3'd0;

	 end 
always 
begin
#10 sel=sel+2'b01;
#10 in = in +1'b1;
end
    endmodule
	 