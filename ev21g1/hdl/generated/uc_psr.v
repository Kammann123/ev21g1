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
// CREATED		"Sat Jun 12 14:46:39 2021"

module uc_psr(
	clk,
	alu_overflow,
	sh_overflow,
	alu_carry,
	sh_carry,
	aluc,
	result,
	sh,
	psr
);


input wire	clk;
input wire	alu_overflow;
input wire	sh_overflow;
input wire	alu_carry;
input wire	sh_carry;
input wire	[3:0] aluc;
input wire	[31:0] result;
input wire	[2:0] sh;
output wire	[31:0] psr;

wire	[31:0] _psr;
wire	[31:0] psr_ALTERA_SYNTHESIZED;
wire	[31:0] results;
wire	SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_0 = 1;




register	b2v_inst(
	.en(SYNTHESIZED_WIRE_0),
	.clk(clk),
	.in(_psr),
	.out(psr_ALTERA_SYNTHESIZED));
	defparam	b2v_inst.BUS_WIDTH = 32;




uc_zero	b2v_inst5(
	.result(results),
	.z(_psr[30]));


uc_overflow	b2v_inst6(
	.alu_overflow(alu_overflow),
	.sh_overflow(sh_overflow),
	.psr_overflow(psr_ALTERA_SYNTHESIZED[28]),
	.aluc(aluc),
	.sh(sh),
	.overflow(_psr[28]));


uc_carry	b2v_inst7(
	.alu_carry(alu_carry),
	.sh_carry(sh_carry),
	.psr_carry(psr_ALTERA_SYNTHESIZED[29]),
	.aluc(aluc),
	.sh(sh),
	.carry(_psr[29]));


uc_negative	b2v_inst8(
	.result(results),
	.n(_psr[31]));

assign	psr = psr_ALTERA_SYNTHESIZED;
assign	results = result;
assign	_psr[27:0] = 28'b0000000000000000000000000000;

endmodule
