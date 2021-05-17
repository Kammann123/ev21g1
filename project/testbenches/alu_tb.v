module alu_tb;

	/*****************************/
	/* Variables for Input Ports */
	/*****************************/
	reg [31:0] ina;
	reg [31:0] inb;
	reg [3:0] aluc;
	reg cin;

	/******************************/
	/* Variables for Output Ports */
	/******************************/
	wire [31:0] out;
	wire cout;
	wire negative;
	wire zero;
	wire overflow;
	
	/*****************/
	/* Instanciation */
	/*****************/
	alu alu0(
		.ina(ina),	
		.inb(inb),
		.out(out),		
		.aluc(aluc),			
		.cin(cin),			
		.cout(cout),			
		.negative(negative),	
		.zero(zero),			
		.overflow(overflow)
	);
	
	/***********/
	/* Initial */
	/***********/
	initial begin
		ina = 32'h0000000F;
		inb = 32'h0000000A;
		aluc = 4'b0000;
		cin = 1'b0;
		#5;
		
		ina = 32'h0000000F;
		inb = 32'h0000000A;
		aluc = 4'b0001;
		cin = 1'b0;
		#5;
		
		ina = 32'h00000007;
		inb = 32'h00000070;
		aluc = 4'b0010;
		cin = 1'b0;
		#5;
		
		ina = 32'h00000007;
		inb = 32'h00000070;
		aluc = 4'b0011;
		cin = 1'b0;
		#5;
		
		ina = 32'h00000007;
		inb = 32'h00000070;
		aluc = 4'b0100;
		cin = 1'b0;
		#5;
		
		ina = 32'h80000007;
		inb = 32'h80000070;
		aluc = 4'b0100;
		cin = 1'b0;
		#5;
		
		ina = 32'h10000007;
		inb = 32'h10000008;
		aluc = 4'b0101;
		cin = 1'b0;
		#5;
		
		ina = 32'h10000007;
		inb = 32'h10000008;
		aluc = 4'b0101;
		cin = 1'b1;
		#5;
		
		ina = 32'h10000007;
		inb = 32'h10000008;
		aluc = 4'b0110;
		cin = 1'b0;
		#5;
		
		ina = 32'h100000FF;
		inb = 32'h1000000A;
		aluc = 4'b0111;
		cin = 1'b0;
		#5;
		
		ina = 32'h100000FF;
		inb = 32'h1000000A;
		aluc = 4'b1000;
		cin = 1'b0;
		#5;
		
		ina = 32'h100000FF;
		inb = 32'h1000000A;
		aluc = 4'b1001;
		cin = 1'b0;
		#5;
		
		ina = 32'h100000FF;
		inb = 32'h1000000A;
		aluc = 4'b1010;
		cin = 1'b0;
		#5;
		
		ina = 32'h100000FF;
		inb = 32'h1000000A;
		aluc = 4'b1011;
		cin = 1'b0;
		#5;
		
		ina = 32'h100000FF;
		inb = 32'h1000000A;
		aluc = 4'b1100;
		cin = 1'b0;
		#5;
	end

endmodule