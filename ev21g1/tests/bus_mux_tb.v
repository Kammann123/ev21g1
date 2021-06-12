module busmux_tb;

	/*****************************/
	/* Variables for Input Ports */
	/*****************************/
	reg [31:0] in0;
	reg [31:0] in1;
	reg sel;

	/******************************/
	/* Variables for Output Ports */
	/******************************/
	wire [31:0] out;
	
	/*****************/
	/* Instantiation */
	/*****************/
	busmux busmux_0(
		in0,
		in1,
		out,
		sel
	);
	
	/***********/
	/* Initial */
	/***********/
	initial begin
		in0 = 32'h12345678;
		in1 = 32'hABCDABCD;
		sel = 0;
		#5;
		sel = 1;
		#5;
	end

endmodule