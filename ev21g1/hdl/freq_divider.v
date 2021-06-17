module freq_divider(in, out);
	
	/*********************/
	/* Module parameters */
	/*********************/
	parameter VALUE = 1000000;

	/*************************/
	/* Declaring input ports */
	/*************************/
	input wire in;

	/**************************/
	/* Declaring output ports */
	/**************************/
	output reg out;
	
	reg [31:0] counter;
	
	always @(posedge in)
	begin
		if (counter <= VALUE)
		begin
			counter <= counter + 1;
		end
		else
		begin
			counter <= 0;
			out <= ~out;
		end
	end
endmodule
