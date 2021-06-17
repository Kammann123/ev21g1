/*
 * mir_format_1
 *
 * Micro Instruction ROM (Format N° 1)
 */
module mir_format_1(
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
	input wire [9:0] opcode;

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
		
			10'b0000000000: begin	// NOP
				aluc = 4'b1111;
				sh = 3'b111;
				read = 1'b0;
				write = 1'b0;
				flip = 1'b0;
				print = 1'b0;
			end

			10'b0000001101: begin	// AND Ri,Rj,Rk
				aluc = 4'b0111;
				sh = 3'b000;
				read = 1'b0;
				write = 1'b0;
				flip = 1'b0;
				print = 1'b0;
			end
			
			10'b0000000001: begin	// OR Ri,Rj,Rk
				aluc = 4'b0110;
				sh = 3'b000;
				read = 1'b0;
				write = 1'b0;
				flip = 1'b0;
				print = 1'b0;
			end
			
			10'b0000000010: begin	// ADC Ri,Rj,Rk
				aluc = 4'b0101;
				sh = 3'b000;
				read = 1'b0;
				write = 1'b0;
				flip = 1'b0;
				print = 1'b0;
			end
			
			10'b0000000011: begin	// ADD Ri,Rj,Rk
				aluc = 4'b0100;
				sh = 3'b000;
				read = 1'b0;
				write = 1'b0;
				flip = 1'b0;
				print = 1'b0;
			end
			
			10'b0000000100: begin	// MOV Ri,Rj
				aluc = 4'b0001;
				sh = 3'b000;
				read = 1'b0;
				write = 1'b0;
				flip = 1'b0;
				print = 1'b0;
			end
			
			10'b0000000101: begin	// CPL Ri,Rj
				aluc = 4'b0011;
				sh = 3'b000;
				read = 1'b0;
				write = 1'b0;
				flip = 1'b0;
				print = 1'b0;
			end
			
			10'b0000000110: begin	// STR Ri,Rj
				aluc = 4'b1111;
				sh = 3'b111;
				read = 1'b0;
				write = 1'b1;
				flip = 1'b0;
				print = 1'b0;
			end
			
			10'b0000000111: begin	// LDR Ri,Rj
				aluc = 4'b1111;
				sh = 3'b111;
				read = 1'b1;
				write = 1'b0;
				flip = 1'b0;
				print = 1'b0;
			end
			
			10'b0000001000: begin	// CLR CY
				aluc = 4'b1011;
				sh = 3'b111;
				read = 1'b0;
				write = 1'b0;
				flip = 1'b0;
				print = 1'b0;
			end
			
			10'b0000001001: begin	// SET CT
				aluc = 4'b1100;
				sh = 3'b111;
				read = 1'b0;
				write = 1'b0;
				flip = 1'b0;
				print = 1'b0;
			end
			
			10'b0000001010: begin	// RET
				aluc = 4'b1111;
				sh = 3'b111;
				read = 1'b0;
				write = 1'b0;
				flip = 1'b0;
				print = 1'b0;
			end
			
			10'b0000001011: begin	// VGP Ri,Rj
				aluc = 4'b1111;
				sh = 3'b111;
				read = 1'b0;
				write = 1'b0;
				flip = 1'b0;
				print = 1'b1;
			end
			
			10'b0000001100: begin	// VGF
				aluc = 4'b1111;
				sh = 3'b111;
				read = 1'b0;
				write = 1'b0;
				flip = 1'b1;
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