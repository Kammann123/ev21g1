module buffer_tri_tb;

	/*****************************/
	/* Variables for Input Ports */
	/*****************************/
	reg [31:0] in;
	reg en;
	
	/******************************/
	/* Variables for Output Ports */
	/******************************/
	wire [31:0] out;
	
	/*****************/
	/* Instanciation */
	/*****************/
	buffer_tri buff(
		.in(in),
		.out(out),
		.en(en)
	);
	
	/***********/
	/* Initial */
	/***********/
	initial begin
		in = 32'h0000FFFF;
		en = 0;
		#1;
		
		in = 32'h0000FFFF;
		en = 1;
		#1;
		
		in = 32'hFFFF0000;
		en = 0;
		#1;
		
		in = 32'hFFFF0000;
		en = 1;
		#1;
	end

endmodule