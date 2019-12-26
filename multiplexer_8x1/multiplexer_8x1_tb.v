module multiplexer_8x1_tb;
wire out;
reg [2:0]sel;
reg [7:0]in;
 
multiplexer_8x1 mux( .out(out), .in(in), .sel(sel) );
 
initial begin
$monitor(sel,in,out);
 
sel=3'b000;
in=8'b01100110;

end
 
always #10 sel=sel+3'b001;
 
endmodule

