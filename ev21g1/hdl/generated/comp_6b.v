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
// CREATED		"Tue Jun 15 22:49:31 2021"

module comp_6b(
	bus1,
	bus2,
	equal
);


input wire	[5:0] bus1;
input wire	[5:0] bus2;
output wire	equal;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;




assign	SYNTHESIZED_WIRE_0 = bus1[0] ^ bus2[0];

assign	SYNTHESIZED_WIRE_2 = bus1[1] ^ bus2[1];

assign	SYNTHESIZED_WIRE_1 = bus1[2] ^ bus2[2];

assign	SYNTHESIZED_WIRE_3 = bus1[3] ^ bus2[3];

assign	SYNTHESIZED_WIRE_5 = bus1[4] ^ bus2[4];

assign	SYNTHESIZED_WIRE_4 = bus1[5] ^ bus2[5];

assign	equal = ~(SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5);


endmodule
