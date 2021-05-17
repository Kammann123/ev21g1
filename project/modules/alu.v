module alu(
	ina,			// Input Bus A
	inb,			// Input Bus B
	out,			// Output Bus
	aluc,			// ALU Control lines
	cin,			// Carry In
	cout,			// Carry Out
	negative,	// Negative bit flag
	zero,			// Zero bit flag
	overflow		// Overflow bit flag
);

	/*************************/
	/* Declaring input ports */
	/*************************/	
	input wire [31:0] ina;
	input wire [31:0] inb;
	input wire [3:0] aluc;
	input wire cin;

	/**************************/
	/* Declaring output ports */
	/**************************/
	output reg [31:0] out;
	output wire cout;
	output wire negative;
	output wire zero;
	output wire overflow;
	
	/**************/
	/* Out driver */
	/**************/
	always @ (ina or inb or aluc or cin) begin
		case(aluc)
			4'b0000: out = ina;
			4'b0001: out = inb;
			4'b0010: out = ~ina;
			4'b0011: out = ~inb;
			4'b0100: out = ina + inb;
			4'b0101: out = ina + inb + cin;
			4'b0110: out = ina | inb;
			4'b0111: out = ina & inb;
			4'b1000: out = 32'b0;
			4'b1001: out = 32'b1;
			4'b1010: out = 32'hFFFFFFFF;
			default: ;
		endcase
	end
	
	/*****************/
	/* Flags drivers */
	/*****************/
	assign negative = out[31];
	assign zero = (out == 32'h00000000) ? 1'b1 : 1'b0;
	assign overflow = (ina[31] & inb[31] & ~out[31]) | (~ina[31] & ~inb[31] & out[31]);
	assign cout = (aluc != 4'b1011) & (((~out[31]) & (ina[31] | inb[31])) | (ina[31] & inb[31]) | (aluc == 4'b1100));	

endmodule