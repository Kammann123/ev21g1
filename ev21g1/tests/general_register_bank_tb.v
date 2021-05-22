module general_register_bank_tb;

	/*****************************/
	/* Variables for Input Ports */
	/*****************************/
	reg [31:0] in;
	reg [5:0] in_sel;
	reg [5:0] outa_sel;
	reg [5:0] outb_sel;
	reg clk;

	/******************************/
	/* Variables for Output Ports */
	/******************************/
	wire [31:0] outa;
	wire [31:0] outb;
	
	/***********************/
	/* Auxiliary variables */
	/***********************/
	integer i;
	
	/*****************/
	/* Instantiation */
	/*****************/
	general_register_bank bank(
		.clk(clk),
		.in(in),
		.in_sel(in_sel),
		.outa_sel(outa_sel),
		.outb_sel(outb_sel),
		.outa(outa),
		.outb(outb)
	);
	
	/***********/
	/* Initial */
	/***********/
	initial begin
		// Machine initialization
		outa_sel = 32;
		outb_sel = 32;
		in_sel = 32;
		clk = 1;
		#1;
		
		// Initialization of all registers with the value of their index
		for (i = 0 ; i < 28 ; i = i + 1) begin
		
			// Prepare signals before machine cycle
			in_sel = i;
		
			// Start the machine cycle
			clk = 0;
			#1;
			
			// Execution during the machine cycle
			in = 2**i;
			#1
			
			// Gather the results of the machine cycle
			clk = 1;
			#2;
		end
		
		// Reading value of all registers and incrementing
		for (i = 0 ; i < 28 ; i = i + 1) begin
		
			// Prepare signals before machine cycle
			in_sel = i;
			outa_sel = i;
		
			// Start the machine cycle
			clk = 0;
			#1;
			
			// Execution during the machine cycle
			in = outa + 1;
			#1;
			
			// Gather the results of the machine cycle
			clk = 1;
			#2;
		end
	end

endmodule