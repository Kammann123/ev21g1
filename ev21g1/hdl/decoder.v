/*
 * decoder
 *
 * Decoder with active high enable
 */
module decoder(
	d,	// Input
	q,	// Output
	en	// Enable the decoder when it is active high
);

	/*********************/
	/* Module parameters */
	/*********************/
	parameter INPUT_WIDTH = 4;
	
	/*************************/
	/* Declaring input ports */
	/*************************/
	input wire [INPUT_WIDTH-1:0] d;
	input wire en;

	/**************************/
	/* Declaring output ports */
	/**************************/
	output wire [2 ** INPUT_WIDTH-1:0] q;
	
	/**************/
	/* Out driver */
	/**************/
	assign q = en ? (1 << d) : 0;

endmodule