module shifter_tb;

	/*****************************/
	/* Variables for Input Ports */
	/*****************************/
	reg [31:0] in;
	reg [2:0] sh;

	/******************************/
	/* Variables for Output Ports */
	/******************************/
	wire [31:0] out;
	wire overflow;
	wire cout;
	
	/*****************/
	/* Instanciation */
	/*****************/
	shifter sh0(
		.in(in),
		.out(out),
		.sh(sh),
		.cout(cout),
		.overflow(overflow)
	);
	
	/***********/
	/* Initial */
	/***********/
	initial begin
		in = 32'h0000000F;
		sh = 3'b000;
		#5;
	
		in = 32'h0000000F;
		sh = 3'b001;
		#5;
	
		in = 32'h0000000F;
		sh = 3'b010;
		#5;
	
		in = 32'h0000000F;
		sh = 3'b011;
		#5;
	
		in = 32'h0000000F;
		sh = 3'b101;
		#5;
	
		in = 32'hF0000000;
		sh = 3'b000;
		#5;
	
		in = 32'hF0000000;
		sh = 3'b001;
		#5;
	
		in = 32'hF0000000;
		sh = 3'b010;
		#5;
	
		in = 32'hF0000000;
		sh = 3'b011;
		#5;
	
		in = 32'hF0000000;
		sh = 3'b101;
		#5;
	
		in = 32'hB0000000;
		sh = 3'b000;
		#5;
	
		in = 32'hB0000000;
		sh = 3'b001;
		#5;
	
		in = 32'hB0000000;
		sh = 3'b010;
		#5;
	
		in = 32'hB0000000;
		sh = 3'b011;
		#5;
	
		in = 32'hB0000000;
		sh = 3'b101;
		#5;
	
		in = 32'hB000B000;
		sh = 3'b000;
		#5;
	
		in = 32'hB000B000;
		sh = 3'b001;
		#5;
	
		in = 32'hB000B000;
		sh = 3'b010;
		#5;
	
		in = 32'hB000B000;
		sh = 3'b011;
		#5;
	
		in = 32'hB000B000;
		sh = 3'b101;
		#5;
	end

endmodule