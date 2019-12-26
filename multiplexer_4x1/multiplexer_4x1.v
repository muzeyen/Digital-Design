module multiplexer_4x1(in,out,sel);
 
input [3:0]in;
input [1:0]sel;
output out;
 
reg out;
 
always @( in or sel) 
begin 
case(sel) 
3'b00 : out=in[0]; 
3'b01 : out=in[1]; 
3'b10 : out=in[2]; 
3'b11 : out=in[3];  
endcase 
end
endmodule


