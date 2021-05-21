/*
 * register
 *
 * Register with active high enable and positive edge clock
 */
module register(
	in,	// Input bus
	out,	// Output bus
	en,	// Enable the register when it is active high
	clk	// Clock triggers at positive edge
);

	/*********************/
	/* Module parameters */
	/*********************/
	parameter BUS_WIDTH = 32;

	/*************************/
	/* Declaring input ports */
	/*************************/
	input wire [BUS_WIDTH-1:0] in;
	input wire clk;
	input wire en;

	/**************************/
	/* Declaring output ports */
	/**************************/
	output reg [BUS_WIDTH-1:0] out;
	
	/*********************/
	/* Output bus driver */
	/*********************/
	always @ (posedge clk) begin
		if (en == 1'b1) begin
			out = in;
		end
	end

endmodule