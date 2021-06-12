/*
 * bus_or
 *
 * OR Bus Gate
 */
module bus_or(
	in,	// Input bus
	out	// Output
);

	/*********************/
	/* Module parameters */
	/*********************/
	parameter BUS_WIDTH = 32;

	/*************************/
	/* Declaring input ports */
	/*************************/
	input wire [BUS_WIDTH-1:0] in;

	/**************************/
	/* Declaring output ports */
	/**************************/
	output wire out;
	
	/*****************/
	/* Output Driver */
	/*****************/
	assign out = |in;

endmodule