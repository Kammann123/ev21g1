module instruction_predecoder_tb;

	/*****************************/
	/* Variables for Input Ports */
	/*****************************/
	reg [31:0] instruction;

	/******************************/
	/* Variables for Output Ports */
	/******************************/
	wire jmp;
	wire jze;
	wire jne;
	wire jov;
	wire jcy;
	wire ret;
	wire bsr;
	
	/*****************/
	/* Instantiation */
	/*****************/
	instruction_predecoder deco(
		instruction,
		jmp,
		jze,
		jne,
		jov,
		jcy,
		ret,
		bsr
	);
	
	/***********/
	/* Initial */
	/***********/
	initial begin
	
		
		instruction = 32'b01110000000000000010000001000000;
		#5;

		instruction = 32'b01110000000001000010000001000000;
		#5;

		instruction = 32'b10110100001010101010111011010110;
		#5;

		instruction = 32'b01110000000010000010000001000000;
		#5;

		instruction = 32'b01110000000011000010000001000000;
		#5;

		instruction = 32'b00110000000100000000000001000000;
		#5;

		instruction = 32'b00110000000101000000000001000000;
		#5;

		instruction = 32'b10010100011010101010111011000000;
		#5;

		instruction = 32'b10010100101010101010111011000000;
		#5;

		instruction = 32'b01100000000110000000000001000000;
		#5;

		instruction = 32'b00110000000111000000000001000000;
		#5;

		instruction = 32'b00000000001000000000000000000000;
		#5;

		instruction = 32'b00000000001001000000000000000000;
		#5;

		instruction = 32'b10000001001100110011001100000000;
		#5;

		instruction = 32'b10000000001100110011001100000000;
		#5;

		instruction = 32'b10000000011100110011001100000000;
		#5;

		instruction = 32'b10000000101100110011001100000000;
		#5;

		instruction = 32'b10000000111100110011001100000000;
		#5;

		instruction = 32'b00000000001010000000000000000000;
		#5;

		instruction = 32'b10000011001100110011001100000000;
		#5;

		instruction = 32'b01100000001011000000000001000000;
		#5;

		instruction = 32'b00000000001100000000000000000000;
		#5;

		
	end

endmodule