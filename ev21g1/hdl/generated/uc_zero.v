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
// CREATED		"Sat Jun 12 14:11:51 2021"

module uc_zero(
	result,
	z
);


input wire	[31:0] result;
output wire	z;

wire	SYNTHESIZED_WIRE_0;





bus_or	b2v_inst(
	.in(result),
	.out(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst.BUS_WIDTH = 32;

assign	z =  ~SYNTHESIZED_WIRE_0;


endmodule
