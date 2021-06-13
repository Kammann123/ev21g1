/*
 * full adder
 *
 * Full Adder over N bits buses
 * 
 */
module adder(
	ina,			// Input Bus A
	inb,			// Input Bus B
	out			// Output Bus
);

	/*********************/
	/* Module parameters */
	/*********************/
	parameter BUS_WIDTH = 16;

	/*************************/
	/* Declaring input ports */
	/*************************/	
	input wire [BUS_WIDTH-1:0] ina;
	input wire [BUS_WIDTH-1:0] inb;
	
	/**************************/
	/* Declaring output ports */
	/**************************/
	output wire [BUS_WIDTH-1:0] out;
	
	/**************/
	/* Out driver */
	/**************/
	assign out = ina + inb;
	

endmodule