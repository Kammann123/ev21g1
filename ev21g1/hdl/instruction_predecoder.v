/*
 * instruction_predecoder
 *
 * Instruction predecoder used to detect jump, branch to subroutine and return from subroutine
 */
module instruction_predecoder(
	instruction,	// Instruction
	jmp,				// Indicates a JMP instruction is detected
	jze,				// Indicates a JZE instruction is detected
	jne,				// Indicates a JNE instruction is detected
	jov,				// Indicates a JOV instruction is detected
	jcy,				// Indicates a JCY instruction is detected
	ret,				// Indicates a RET instruction is detected
	bsr				// Indicates a BSR instruction is detected
);

	/*************************/
	/* Declaring input ports */
	/*************************/
	input wire [31:0] instruction;
	
	/**************************/
	/* Declaring output ports */	
	/**************************/
	output wire jmp;
	output wire jze;
	output wire jne;
	output wire jov;
	output wire jcy;
	output wire ret;
	output wire bsr;
	
	/***************/
	/* Out drivers */
	/***************/
	assign jmp = instruction[31] && (instruction[27:22] == 6'b000100);
	assign jze = instruction[31] && (instruction[27:22] == 6'b000000);
	assign jne = instruction[31] && (instruction[27:22] == 6'b000001);
	assign jov = instruction[31] && (instruction[27:22] == 6'b000010);
	assign jcy = instruction[31] && (instruction[27:22] == 6'b000011);
	assign ret = ~instruction[31] && (instruction[27:18] == 10'b0000001010);
	assign bsr = instruction[31] && (instruction[27:22] == 6'b001100);

endmodule