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
		
		instruction = 32'b10010100100000000000001111000000;

		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;

		instruction = 32'b10010100100000000000000111000001;

		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;

		instruction = 32'b10010100100000000000010000000010;

		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;

		instruction = 32'b10010100100000000000000100000011;

		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;

		instruction = 32'b10010100100000000000010001000100;

		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;

		instruction = 32'b10010100100000000000000010000101;

		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;

		instruction = 32'b10010100100000000000010010000110;

		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;

		instruction = 32'b10010100100000000000000001000111;

		clk = 1'b1;
		#1;
		
		clk = 1'b0;
		#1;
		instruction = 32'b01100000001011000000000001111111;
		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;
		instruction = 32'b01100000001011000010000011111111;
		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;
		instruction = 32'b01100000001011000100000101111111;
		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;
		instruction = 32'b01100000001011000110000111111111;
		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;
		instruction = 32'b00001111111111111111111111111111;
		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;
		instruction = 32'b00001111111111111111111111111111;
		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;
		instruction = 32'b00001111111111111111111111111111;
		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;
		instruction = 32'b00001111111111111111111111111111;
		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;
		instruction = 32'b00001111111111111111111111111111;
		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;
		instruction = 32'b00001111111111111111111111111111;
		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;
		instruction = 32'b00001111111111111111111111111111;
		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;
		instruction = 32'b00001111111111111111111111111111;
		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;
		instruction = 32'b00001111111111111111111111111111;
		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;
		instruction = 32'b00001111111111111111111111111111;
		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;
		instruction = 32'b00001111111111111111111111111111;
		clk = 1'b1;
		#1;

		clk = 1'b0;
		#1;
		instruction = 32'b00001111111111111111111111111111;
		
		

		
	end

endmodule