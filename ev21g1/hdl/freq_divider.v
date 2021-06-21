module freq_divider(in, out, reset);
	
	/*********************/
	/* Module parameters */
	/*********************/
	parameter VALUE = 1000000;

	/*************************/
	/* Declaring input ports */
	/*************************/
	input wire in;
	input wire reset;

	/**************************/
	/* Declaring output ports */
	/**************************/
	output reg out;
	
	reg [31:0] counter;
	
	always @(posedge in)
	begin
		if (reset == 1'b1)
		begin
			counter = 0;
			out = 0;
		end
		
		if (counter < ((VALUE / 2) - 1))
		begin
			counter = counter + 1;
		end
		else
		begin
			counter = 0;
			out = ~out;
		end
	end
endmodule
