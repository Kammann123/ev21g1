// Down counter
module uc_cndjmp(input clk, reset, output condjmp_hold
		);

	reg[1:0] down_counter = 0;
	reg reset_prev;
	wire [1 : 0] rNext;

	always @(posedge clk)
		reset_prev <= reset;
		
	always @(negedge clk or posedge reset)
	begin
		if(reset)
		begin
			if(!reset_prev)
				down_counter <= 2'b10;
		end
		else begin
			if(down_counter>0)
				down_counter <= down_counter - 2'b01;
		end
	end 
		
	assign condjmp_hold = (down_counter != 0);
		
endmodule