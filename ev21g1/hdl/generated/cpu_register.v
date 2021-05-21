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
// CREATED		"Fri May 21 20:02:23 2021"

module cpu_register(
	clk,
	eni,
	enoa,
	enob,
	in,
	outa,
	outb
);


input wire	clk;
input wire	eni;
input wire	enoa;
input wire	enob;
input wire	[31:0] in;
output wire	[31:0] outa;
output wire	[31:0] outb;

wire	[31:0] SYNTHESIZED_WIRE_0;





register	b2v_inst(
	.en(eni),
	.clk(clk),
	.in(in),
	.out(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst.BUS_WIDTH = 32;


bus_switch	b2v_inst1(
	.ena(enoa),
	.enb(enob),
	.in(SYNTHESIZED_WIRE_0),
	.outa(outa),
	.outb(outb));


endmodule
