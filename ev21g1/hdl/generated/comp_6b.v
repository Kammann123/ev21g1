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
// CREATED		"Wed Jun 16 22:10:17 2021"

module comp_6b(
	a,
	b,
	equal
);


input wire	[5:0] a;
input wire	[5:0] b;
output wire	equal;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;




assign	SYNTHESIZED_WIRE_0 = a[0] ^ b[0];

assign	SYNTHESIZED_WIRE_2 = a[1] ^ b[1];

assign	SYNTHESIZED_WIRE_1 = a[2] ^ b[2];

assign	SYNTHESIZED_WIRE_3 = a[3] ^ b[3];

assign	SYNTHESIZED_WIRE_5 = a[4] ^ b[4];

assign	SYNTHESIZED_WIRE_4 = a[5] ^ b[5];

assign	equal = ~(SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5);


endmodule
