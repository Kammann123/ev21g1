module register32(
	in,	// 32 bit input
	out,	// 32 bit output
	clk	// Clock
);

	/*************************/
	/* Declaring input ports */
	/*************************/
	input wire [31:0] in;
	input wire clk;

	/**************************/
	/* Declaring output ports */
	/**************************/
	output reg [31:0] out;
	
	/**************/
	/* Out driver */
	/**************/
	always @ (posedge clk) begin
		out = in;
	end

endmodule