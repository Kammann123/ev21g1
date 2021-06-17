// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Wed Jun 16 22:59:55 2021"

module microinstruction_nop(
	nop
);


output wire	[32:0] nop;

wire	[32:0] nop_ALTERA_SYNTHESIZED;









assign	nop = nop_ALTERA_SYNTHESIZED;
assign	nop_ALTERA_SYNTHESIZED[7:2] = 6'b111111;
assign	nop_ALTERA_SYNTHESIZED[29:23] = 7'b1111111;
assign	nop_ALTERA_SYNTHESIZED[1:0] = 2'b00;
assign	nop_ALTERA_SYNTHESIZED[22:8] = 15'b000000000000000;
assign	nop_ALTERA_SYNTHESIZED[32:30] = 3'b000;

endmodule
