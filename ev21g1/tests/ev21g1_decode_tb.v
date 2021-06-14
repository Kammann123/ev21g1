`timescale 1 ps / 1 ps

module ev21g1_decode_tb;

	/*****************************/
	/* Variables for Input Ports */
	/*****************************/
	reg [31:0] instruction;
	reg [31:0] input_port0;
	reg [31:0] input_port1;
	reg clk;

	/******************************/
	/* Variables for Output Ports */
	/******************************/
	wire [31:0] output_port0;
	wire [31:0] output_port1;
	
	/***********************/
	/* Auxiliary variables */
	/***********************/
	reg [15:0] i;
	
	/*****************/
	/* Instantiation */
	/*****************/
	ev21g1 cpu(
		clk,
		input_port0,
		input_port1,
		instruction,
		output_port0,
		output_port1
	);
	
	/***********/
	/* Initial */
	/***********/
	initial begin
		// Initialization of signals (initial conditions...)
		clk = 0;
		#1;
		
		instruction = 32'b10010100100000000000010011000000;

		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;

		instruction = 32'b10010100100000000000010101000001;

		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;

		instruction = 32'b00001111111111000000000000111111;

		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;

		instruction = 32'b01110000000011000001000000000010;

		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;

		instruction = 32'b00001111111111000000000000111111;

		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;

		instruction = 32'b10000001001010101000000000111111;

		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;

		instruction = 32'b10000000001010101000000001111111;

		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;

		instruction = 32'b10000000011010101000000010111111;

		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;

		instruction = 32'b10000000101010101000000011111111;

		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;

		instruction = 32'b10000000111010101000000100111111;

		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;

		instruction = 32'b10000011001010101000000101111111;
		
		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;

		instruction = 32'b00000000001010000000000000111111;
		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;


	end

endmodule