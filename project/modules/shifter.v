module shifter(
	in,	// Input bus
	out,	// Output bus
	sh		// Control lines
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
	
	/**************/
	/* Out driver */
	/**************/
	always @ (sh or in) begin
		case(sh)
			3'b000: out = in;											// No shift
			3'b001: out = in >> 1;									// Logical Shift Right (1 Bit)
			3'b010: out = in << 1;									// Logical Shift Left (1 Bit)
			3'b011: out = in << 16;									// Logical Shift Left (16 Bits)
			3'b101: out = (in >> 1) | (in & 32'h80000000);	// Arithmetic Shift Right (1 Bit)
			default: ;
		endcase
	end
	
endmodule