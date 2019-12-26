module Dffusing_JK_ff_Tb();
     reg d;
     reg clk;
	  reg rst;
     wire q;
     wire qbar;

  D_ffusingJK_ff DFF(.d(d),.clk(clk), .rst(rst), .q(q), .qbar(qbar));
   
     initial begin
      d  = 1'b0;
      clk  = 1'b0;
      rst   = 1'b1;
      #100;
      rst = 1'b0;
      #20;
      forever #40 d = ~ d;
     end
       always #10 clk = ~clk;  
endmodule
	 