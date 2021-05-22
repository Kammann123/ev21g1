/*
 * buffer_tri
 *
 * Tristate Buffer
 */
module buffer_tri(
	in,	// Input bus
	out,	// Output bus
	en		// Enable line that determines whether the output = input or high impedance
);

	/*********************/
	/* Module parameters */
	/*********************/
	parameter BUS_WIDTH = 32;

	/*************************/
	/* Declaring input ports */
	/*************************/
	input wire [BUS_WIDTH-1:0] in;
	input wire en;

	/**************************/
	/* Declaring output ports */
	/**************************/
	output wire [BUS_WIDTH-1:0] out;
	
	/**************/
	/* Out driver */
	/**************/
	assign out = en ? in : {(BUS_WIDTH){1'bz}};

endmodule