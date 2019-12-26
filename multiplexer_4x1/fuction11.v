module fuction11(A,B,C,F);
input A,B,C;
output F;
multiplexer_4x1 m1({~C,C,~C,C},F,{A,B});
endmodule