// Down counter
module uc_cndjmp(input clk, reset, hold, output condjmp_hold
		);

	reg[1:0] down_counter = 0;

	always @(negedge clk or posedge reset)
	begin

		if(~hold && down_counter > 0)
			//decrement counter
			down_counter <= down_counter - 1;
		
		else if(reset && down_counter == 0)
			down_counter <= 2;
		
	end

		// hold high if counter is not 0
	assign condjmp_hold = (down_counter != 0);
 
endmodule
