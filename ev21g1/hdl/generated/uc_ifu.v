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
// CREATED		"Sun Jun 13 23:41:07 2021"

module uc_ifu(
	jze,
	jne,
	jcy,
	jov,
	jmp,
	bsr,
	ret,
	psr,
	ifu_jmp,
	ifu_bsr,
	ifu_ret
);


input wire	jze;
input wire	jne;
input wire	jcy;
input wire	jov;
input wire	jmp;
input wire	bsr;
input wire	ret;
input wire	[31:0] psr;
output wire	ifu_jmp;
output wire	ifu_bsr;
output wire	ifu_ret;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_4 = 0;



assign	SYNTHESIZED_WIRE_0 = jze & psr[30];


assign	SYNTHESIZED_WIRE_2 = jne & psr[31];

assign	SYNTHESIZED_WIRE_1 = jcy & psr[29];

assign	SYNTHESIZED_WIRE_3 = jov & psr[28];

assign	ifu_bsr = bsr;


assign	ifu_jmp = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3 | jmp | SYNTHESIZED_WIRE_4;

assign	ifu_ret = ret;



endmodule
