/*
 * bus_mux
 *
 * Bus multiplexor from two inputs to one output
 */
module bus_mux(
	in0,	// Input bus choice for selection 0
	in1,	// Input bus choice for selection 1
	out,	// Output bus
	sel	// Select line
);

	/*********************/
	/* Module parameters */
	/*********************/
	parameter BUS_WIDTH = 32;

	/*************************/
	/* Declaring input ports */
	/*************************/
	input wire [BUS_WIDTH-1:0] in0;
	input wire [BUS_WIDTH-1:0] in1;
	input wire sel;

	/**************************/
	/* Declaring output ports */
	/**************************/
	output wire [BUS_WIDTH-1:0] out;
	
	/*********************/
	/* Output bus driver */
	/*********************/
	assign out = sel ? in1 : in0;

endmodule