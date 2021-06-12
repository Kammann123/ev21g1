`define microinstruction(aluc, sh, kmx, read, write, a, b, c, flip, print) ((aluc << 26) | (sh << 23) | (kmx << 22) | (read << 21) | (write << 20) | (a << 14) | (b << 8) | (c << 2) | (flip << 1) | (print << 0))

module ev21g1_data_path_tb;

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
	wire [31:0] mem_data_bus;
	wire [31:0] mem_addr_bus;
	wire mem_read;
	wire mem_write;
	
	/***********************/
	/* Auxiliary variables */
	/***********************/
	reg [5:0] i;
	
	/*****************/
	/* Instantiation */
	/*****************/
	ev21g1 cpu(
		clk,
		input_port0,
		input_port1,
		k,
		microinstruction,
		mem_read,
		mem_write,
		mem_addr_bus,
		mem_data_bus,
		output_port0,
		output_port1
	);
	
	/***********/
	/* Initial */
	/***********/
	initial begin
		// Initialization of signals (initial conditions...)
		clk = 0;
		#5;
		
		// Ri = K
		// Initialization of all registers with the value of their index
		for (i = 0 ; i < 3 ; i = i + 1) begin
			k = i;
			microinstruction = `microinstruction(4'b0000, 3'b000, 1'b1, 1'b0, 1'b0, 6'b000000, 6'b000000, i, 1'b0, 1'b0);
			clk = 1;
			#1;
			clk = 0;
			#1;
		end

		// Flush the pipeline
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;

		// Ri = K << 16
		// Initialization of all registers with the value of their index
		for (i = 3 ; i < 6 ; i = i + 1) begin
			k = i;
			microinstruction = `microinstruction(4'b0000, 3'b011, 1'b1, 1'b0, 1'b0, 6'b000000, 6'b000000, i, 1'b0, 1'b0);
			clk = 1;
			#1;
			clk = 0;
			#1;
		end

		// Flush the pipeline
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;

		// Ri = Rj
		// Initialization of all registers with the value of their index
		for (i = 0 ; i < 3 ; i = i + 1) begin
			microinstruction = `microinstruction(4'b0001, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, i, i + 10, 1'b0, 1'b0);
			clk = 1;
			#1;
			clk = 0;
			#1;
		end

		// Flush the pipeline
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;

		// Ri = ~Rj
		// Initialization of all registers with the value of their index
		for (i = 3 ; i < 6 ; i = i + 1) begin
			microinstruction = `microinstruction(4'b0011, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, i, i + 10, 1'b0, 1'b0);
			clk = 1;
			#1;
			clk = 0;
			#1;
		end

		// Flush the pipeline
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		// Ri = Rj + Rk (R20 = R3 + R13)
		microinstruction = `microinstruction(4'b0100, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000011, 6'b001101, 6'b010100, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;

		// Flush the pipeline
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		// CY = 0
		microinstruction = `microinstruction(4'b1011, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;

		// Flush the pipeline
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		// Ri = Rj AND Rk (R21 = R20 AND R13)
		microinstruction = `microinstruction(4'b0111, 3'b000, 1'b0, 1'b0, 1'b0, 6'b010100, 6'b001101, 6'b010101, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;

		// Flush the pipeline
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		// Ri = Rj OR Rk (R22 = R3 OR R2)
		microinstruction = `microinstruction(4'b0110, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000011, 6'b000010, 6'b010110, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;

		// Flush the pipeline
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		// CY = 1
		microinstruction = `microinstruction(4'b1100, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		// Ri = Rj + Rk + CY (R20 = R3 + R13 + 1)
		microinstruction = `microinstruction(4'b0101, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000011, 6'b001101, 6'b010100, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;

		// Flush the pipeline
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		// R24 = 8000 << 16
		// R23 = FFFF << 16
		// NOP
		// NOP
		// R23 = R23 OR FFFF
		// NOP
		// NOP
		// R25 = R24 + R23
		// NOP
		// NOP
		k = 16'h8000;
		microinstruction = `microinstruction(4'b0000, 3'b011, 1'b1, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b011000, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;

		k = 16'hFFFF;
		microinstruction = `microinstruction(4'b0000, 3'b011, 1'b1, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b010111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;

		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;

		k = 16'hFFFF;
		microinstruction = `microinstruction(4'b0110, 3'b000, 1'b1, 1'b0, 1'b0, 6'b000000, 6'b010111, 6'b010111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;

		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0100, 3'b000, 1'b0, 1'b0, 1'b0, 6'b011000, 6'b010111, 6'b011001, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		microinstruction = `microinstruction(4'b0000, 3'b000, 1'b0, 1'b0, 1'b0, 6'b000000, 6'b000000, 6'b111111, 1'b0, 1'b0);
		clk = 1;
		#1;
		clk = 0;
		#1;
		
	end

endmodule