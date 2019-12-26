
    module DFF_Negedge(Q,Qbar,D,Clk);

    output Q; 

    output   Qbar; 

    input   D,Clk;  
	 reg Q,Qbar;

    always @(posedge Clk) 
    begin 
      Q <= D;
		Qbar <= ~D;
    end 
    endmodule





