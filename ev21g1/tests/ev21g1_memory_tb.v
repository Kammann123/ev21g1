`define microinstruction(aluc, sh, kmx, read, write, a, b, c, flip, print) ((aluc << 26) | (sh << 23) | (kmx << 22) | (read << 21) | (write << 20) | (a << 14) | (b << 8) | (c << 2) | (flip << 1) | (print << 0))

`timescale 1 ps / 1 ps

module ev21g1_memory_tb;

	/*****************************/
	/* Variables for Input Ports */
	/*****************************/
	reg [15:0] k;
	reg [29:0] microinstruction;
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
		k,
		microinstruction,
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
		
		// R0 = 000000AA
		// R1 = 000000BB
		// NOP
		// NOP
		// M(R0) = R1
		// R2 = M(R0)
		// NOP
		// NOP
		k = 16'h00AA;
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b1, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b000000, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		k = 16'h00BB;
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b1, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b000001, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b0, 1'b1, 6'b000001, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b1, 1'b0, 6'b000000, 6'b000000, 6'b000010, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		// R3 = 000000CC
		// NOP
		// R4 = M(R0)
		// M(R0) = R3
		// R4 = M(R0)
		// NOP
		// NOP
		// NOP
		k = 16'h00CC;
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b1, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b000011, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b1, 1'b0, 6'b000000, 6'b000000, 6'b000100, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b0, 1'b1, 6'b000011, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b1, 1'b0, 6'b000000, 6'b000000, 6'b000100, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		// R5 = 000000DD
		// R6 = 000000EE
		// R7 = 000000F0
		// R8 = 000000F1
		// NOP
		// M(R7) = R5
		// M(R8) = R6
		// NOP
		// NOP
		k = 16'h00DD;
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b1, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b000101, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		k = 16'h00EE;
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b1, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b000110, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		k = 16'h00F0;
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b1, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b000111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		k = 16'h00F1;
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b1, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b001000, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b0, 1'b1, 6'b000101, 6'b000111, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b0, 1'b1, 6'b000110, 6'b001000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		// R10 = M(R7)
		// R11 = M(R8)
		// NOP
		// NOP
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b1, 1'b0, 6'b000000, 6'b000111, 6'b001010, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b1, 1'b0, 6'b000000, 6'b001000, 6'b001011, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b1111, 3'b111, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
	end

endmodule