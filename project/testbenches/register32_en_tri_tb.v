module eregister32_tb;

	/*****************************/
	/* Variables for Input Ports */
	/*****************************/
	reg [31:0] in;
	reg eni;
	reg eno;
	reg clk;

	/******************************/
	/* Variables for Output Ports */
	/******************************/
	wire [31:0] out;
	
	/*****************/
	/* Instanciation */
	/*****************/
	register32_en_tri r(
		.in(in),
		.out(out),
		.eni(eni),
		.eno(eno),
		.clk(clk)
	);
	
	/***********/
	/* Initial */
	/***********/
	initial begin
		in = 32'h0000FFFF;
		eni = 0;
		eno = 1;
		clk = 0;
		#1;
		
		in = 32'h0000FFFF;
		eni = 0;
		eno = 1;
		clk = 1;
		#1;
		
		in = 32'h0000FFFF;
		eni = 1;
		eno = 1;
		clk = 0;
		#1;
		
		in = 32'h0000FFFF;
		eni = 1;
		eno = 1;
		clk = 1;
		#1;
		
		in = 32'h0000FFFF;
		eni = 0;
		eno = 1;
		clk = 0;
		#1;
		
		in = 32'h0000FFFF;
		eni = 0;
		eno = 0;
		clk = 1;
		#1;
		
		in = 32'h0000FFFF;
		eni = 0;
		eno = 1;
		clk = 0;
		#1;
		
		in = 32'h0000FFFF;
		eni = 0;
		eno = 1;
		clk = 1;
		#1;
	end

endmodule