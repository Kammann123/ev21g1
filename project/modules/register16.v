/*
 * register16
 *
 * 16-bit Register
 */
module register16(
	in,	// 16 bit input
	out,	// 16 bit output
	clk	// Clock
);

	/*************************/
	/* Declaring input ports */
	/*************************/
	input wire [15:0] in;
	input wire clk;

	/**************************/
	/* Declaring output ports */
	/**************************/
	output reg [15:0] out;
	
	/**************/
	/* Out driver */
	/**************/
	always @ (posedge clk) begin
		out = in;
	end

endmodule