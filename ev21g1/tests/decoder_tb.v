module decoder_tb;

	/*****************************/
	/* Variables for Input Ports */
	/*****************************/
	reg [3:0] d;
	reg en;

	/******************************/
	/* Variables for Output Ports */
	/******************************/
	wire [15:0] q;

	/***********************/
	/* Auxiliary Variables */
	/***********************/
	integer i;
	
	/*****************/
	/* Instantiation */
	/*****************/
	decoder deco(
		.d(d),
		.q(q),
		.en(en)
	);
	
	/***********/
	/* Initial */
	/***********/
	initial begin
		en = 0;
		#1;
		
		for (i = 0 ; i < 16 ; i = i + 1) begin
			d = i;
			en = 1;
			#1;
		end
	end

endmodule