/*
 * mir_format_2
 *
 * Micro Instruction ROM (Format N° 2)
 */
module mir_format_2(
	opcode,	// Instruction opcode
	aluc,		// ALU control signal
	sh,		// Shifter control signal
	read,		// Memory read control signal
	write,	// Memory write control signal
	flip,		// VGA flip control signal
	print		// VGA print control signal
);

	/*************************/
	/* Declaring input ports */
	/*************************/	
	input wire [5:0] opcode;

	/**************************/
	/* Declaring output ports */
	/**************************/
	output reg [3:0] aluc;
	output reg [2:0] sh;
	output reg read;
	output reg write;
	output reg flip;
	output reg print;
	
	/**************/
	/* Out driver */
	/**************/
	always @ (opcode) begin
		case(opcode)

			6'b010000: begin	// ORK Ri,K
				aluc = 4'b0110;
				sh = 3'b000;
				read = 1'b0;
				write = 1'b0;
				flip = 1'b0;
				print = 1'b0;
			end
			
			6'b010001: begin	// MMK Ri,K
				aluc = 4'b0000;
				sh = 3'b011;
				read = 1'b0;
				write = 1'b0;
				flip = 1'b0;
				print = 1'b0;
			end

			6'b010010: begin	// MLK Ri,K
				aluc = 4'b0000;
				sh = 3'b000;
				read = 1'b0;
				write = 1'b0;
				flip = 1'b0;
				print = 1'b0;
			end

			6'b000100: begin	// JMP X
				aluc = 4'b1111;
				sh = 3'b111;
				read = 1'b0;
				write = 1'b0;
				flip = 1'b0;
				print = 1'b0;
			end

			6'b000000: begin	// JZE X
				aluc = 4'b1111;
				sh = 3'b111;
				read = 1'b0;
				write = 1'b0;
				flip = 1'b0;
				print = 1'b0;
			end

			6'b000001: begin	// JNE X
				aluc = 4'b1111;
				sh = 3'b111;
				read = 1'b0;
				write = 1'b0;
				flip = 1'b0;
				print = 1'b0;
			end

			6'b000010: begin	// JOV x
				aluc = 4'b1111;
				sh = 3'b111;
				read = 1'b0;
				write = 1'b0;
				flip = 1'b0;
				print = 1'b0;
			end

			6'b000011: begin	// JCY X
				aluc = 4'b1111;
				sh = 3'b111;
				read = 1'b0;
				write = 1'b0;
				flip = 1'b0;
				print = 1'b0;
			end

			6'b001100: begin	// BSR S
				aluc = 4'b1111;
				sh = 3'b111;
				read = 1'b0;
				write = 1'b0;
				flip = 1'b0;
				print = 1'b0;
			end
			
			default: begin
				aluc = 4'b1111;
				sh = 3'b111;
				read = 1'b0;
				write = 1'b0;
				flip = 1'b0;
				print = 1'b0;
			end
			
		endcase
	end

endmodule