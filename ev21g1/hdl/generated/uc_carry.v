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
// CREATED		"Sat Jun 12 13:32:30 2021"

module uc_carry(
	alu_carry,
	sh_carry,
	psr_carry,
	aluc,
	sh,
	carry
);


input wire	alu_carry;
input wire	sh_carry;
input wire	psr_carry;
input wire	[3:0] aluc;
input wire	[2:0] sh;
output wire	carry;

wire	sel_alu;
wire	sel_sh;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;




assign	SYNTHESIZED_WIRE_3 = aluc[2] & SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_5 =  ~aluc[2];

assign	SYNTHESIZED_WIRE_8 = psr_carry & SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_9 = alu_carry & sel_alu;

assign	SYNTHESIZED_WIRE_1 = sel_alu ~^ sel_sh;


bus_mux	b2v_inst2(
	.sel(SYNTHESIZED_WIRE_2),
	.in0(SYNTHESIZED_WIRE_3),
	.in1(SYNTHESIZED_WIRE_4),
	.out(sel_alu));
	defparam	b2v_inst2.BUS_WIDTH = 1;

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_5 & aluc[1];

assign	SYNTHESIZED_WIRE_0 =  ~aluc[1];

assign	SYNTHESIZED_WIRE_2 = aluc[3] & aluc[0];

assign	sel_sh = SYNTHESIZED_WIRE_6 & sh[1] & sh[0];

assign	SYNTHESIZED_WIRE_6 =  ~sh[2];

assign	carry = SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_7 = sh_carry & sel_sh;


endmodule
