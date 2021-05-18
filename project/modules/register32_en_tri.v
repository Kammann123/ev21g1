/*
 * register32_en_tri
 *
 * 32-bit Register with enable functionality for both the input and the output ports,
 * which allows to disable the input or the output (meaning it goes to a high impedance state).
 */
module register32_en_tri(
	in,	// 32 bit input
	out,	// 32 bit output
	eni,	// Enables whether the input is latched or not on clock's edge
	eno,	// Enables whether the output is driven by the register or left high impedance
	clk	// Clock
);

	/*************************/
	/* Declaring input ports */
	/*************************/
	input wire [31:0] in;
	input wire clk;
	input wire eni;
	input wire eno;

	/**************************/
	/* Declaring output ports */
	/**************************/
	output wire [31:0] out;
	
	/***********************/
	/* Declaring variables */
	/***********************/
	wire [31:0] rout;
	wire rclk;
	
	/****************************************/
	/* Creating instance of 32-bit Register */
	/****************************************/
	register32 r(
		.in(in),
		.out(rout),
		.clk(rclk)
	);
	
	/****************/
	/* Clock driver */
	/****************/
	assign rclk = clk & eni;
	
	/*****************/
	/* Output driver */
	/*****************/
	assign out = eno ? rout : 32'hZZZZZZZZ;

endmodule