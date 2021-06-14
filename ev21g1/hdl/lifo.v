module lifo(clk, reset, push, pop, data_in, data_out);

	/*********************/
	/* Module parameters */
	/*********************/
	parameter BUS_WIDTH = 16;
	parameter STACK_SIZE = 16;
	parameter INC_VALUE = 3'b100;
	/*************************/
	/* Declaring input ports */
	/*************************/	
	input clk;
	input push;
	input pop;
	input reset;
	input [BUS_WIDTH-1:0] data_in;
	
	/*************************/
	/* Declaring output ports*/
	/*************************/	
	output [BUS_WIDTH-1:0] data_out;
	
	
	/*************************/
	/* Declaring data types  */
	/*************************/
	wire 	[BUS_WIDTH-1:0] data_in;
	reg 	[BUS_WIDTH-1:0] data_out;
	
	reg [$clog2(STACK_SIZE)-1:0]	stackPointer;
	reg [$clog2(STACK_SIZE):0]		dataCounter;
	reg [BUS_WIDTH-1:0] 				dirs[0:STACK_SIZE-1];		//Create array of data.
	
	wire fifoFull;
	wire fifoEmpty;
	wire validWrite;
	wire validRead;
	
	assign fifoFull 	= (dataCounter==STACK_SIZE) ? 1'b1: 1'b0;
	assign fifoEmpty 	= (dataCounter==0) ? 1'b1: 1'b0;
	assign validWrite = push & !fifoFull;
	assign validRead	= pop	 & !fifoEmpty;
	
	
	always @(negedge clk)
	begin
		if (reset)
		begin
			dataCounter = 0;
			stackPointer = 0;
		end
		else if(validWrite)
		begin
			dataCounter = dataCounter + 1'b1;
			dirs[stackPointer] <= data_in + INC_VALUE;
			stackPointer = stackPointer + 1'b1;
		end
		else if(validRead)
		begin
			dataCounter <= dataCounter - 1'b1;
			stackPointer = stackPointer - 1'b1;
		end	
	end
	
	always @(posedge clk)
	begin
		data_out <= dirs[stackPointer-1'b1];
	end
	

endmodule
