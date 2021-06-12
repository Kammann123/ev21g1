/*
 * shifter
 *
 * Shifter module for input and output ports of 32-bit width, using 3-bit width control line.
 */
module shifter(
	in,			// Input bus
	out,			// Output bus
	sh,			// Control lines
	cout,			// Carry Out
	overflow		// Overflow bit flag
);

	/*************************/
	/* Declaring input ports */
	/*************************/
	input wire [31:0] in;
	input wire [2:0] sh;

	/**************************/
	/* Declaring output ports */
	/**************************/
	output reg [31:0] out;	
	output reg overflow;
	output reg cout;
	
	/***********/
	/* Drivers */
	/***********/
	always @ (sh or in) begin
		// Output Driver
		case(sh)
			3'b000: out = in;											// No shift
			3'b001: out = in >> 1;									// Logical Shift Right (1 Bit)
			3'b010: out = in << 1;									// Logical Shift Left (1 Bit)
			3'b011: out = in << 16;									// Logical Shift Left (16 Bits)
			3'b101: out = (in >> 1) | (in & 32'h80000000);	// Arithmetic Shift Right (1 Bit)
			default: ;
		endcase
		
		// Carry Out Driver
		case (sh)
			3'b010: cout = in[31];
			3'b011: cout = |in[31:16];
			default: cout = 0;
		endcase
		
		// Overflow Driver
		case (sh)
			3'b001: overflow = in[31];
			3'b010: overflow = in[31] ^ in[30];
			3'b011: overflow = ^in[31:16];
			default:	overflow = 0;
		endcase
	end
	
endmodule