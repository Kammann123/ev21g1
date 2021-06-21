`timescale 1 ps / 1 ps

module ev21g1_fetch_tb;

	/*****************************/
	/* Variables for Input Ports */
	/*****************************/
	reg [31:0] input_port0;
	reg [31:0] input_port1;
	reg reset;
	reg clk;
	
	/******************************/
	/* Variables for Output Ports */
	/******************************/
	wire [31:0] output_port0;
	wire [31:0] output_port1;
	wire vga_hsync;
	wire vga_vsync;
	wire [2:0] vga_rgb;
	
	/***********************/
	/* Auxiliary variables */
	/***********************/
	
	/*****************/
	/* Instantiation */
	/*****************/
	ev21g1 cpu(
		clk,
		reset,
		input_port0,
		input_port1,
		vga_hsync,
		vga_vsync,
		output_port0,
		output_port1,
		vga_rgb
	);
	
	/***********/
	/* Initial */
	/***********/
	initial begin
		// Initialization of signals (initial conditions...)
		reset = 1;
		clk = 0;
		#1;
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		reset = 0;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
		
		clk = 1'b1;
		#1;
		clk = 1'b0;
		#1;
	end

endmodule