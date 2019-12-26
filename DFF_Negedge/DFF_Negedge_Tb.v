module DFF_Negedge_Tb();
     reg D;
     reg Clk;
     wire Q;

     wire Qbar;

     // Instantiate the Unit Under Test (UUT)
     DFF_Negedge uut (.Q(Q), .Qbar(Qbar),.D(D),.Clk(Clk));

     initial begin

      D  = 1'b0;

      Clk  = 1'b0;

      #100;

      forever #40 D = ~ D;
     end
       always #10 Clk = ~Clk;  

    endmodule


