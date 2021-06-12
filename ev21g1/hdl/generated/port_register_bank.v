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
// CREATED		"Fri Jun 11 19:05:44 2021"

module port_register_bank(
	clk,
	in,
	in_sel,
	input_port0,
	input_port1,
	outa_sel,
	outb_sel,
	outa,
	outb,
	output_port0,
	output_port1
);


input wire	clk;
input wire	[31:0] in;
input wire	[5:0] in_sel;
input wire	[31:0] input_port0;
input wire	[31:0] input_port1;
input wire	[5:0] outa_sel;
input wire	[5:0] outb_sel;
output wire	[31:0] outa;
output wire	[31:0] outb;
output wire	[31:0] output_port0;
output wire	[31:0] output_port1;

wire	[7:0] eni;
wire	[7:0] enoa;
wire	[7:0] enob;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	[31:0] SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	[31:0] SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;

assign	output_port0 = SYNTHESIZED_WIRE_4;
assign	output_port1 = SYNTHESIZED_WIRE_6;
assign	SYNTHESIZED_WIRE_13 = 1;




cpu_register	b2v_inst(
	.eni(SYNTHESIZED_WIRE_13),
	.clk(clk),
	.enoa(enoa[0]),
	.enob(enob[0]),
	.in(input_port0),
	.outa(outa),
	.outb(outb));

assign	SYNTHESIZED_WIRE_11 =  ~outa_sel[4];

assign	SYNTHESIZED_WIRE_12 =  ~outa_sel[3];


decoder	b2v_inst12(
	.en(SYNTHESIZED_WIRE_1),
	.d(outb_sel[2:0]),
	.q(enob));
	defparam	b2v_inst12.INPUT_WIDTH = 3;

assign	SYNTHESIZED_WIRE_1 = outb_sel[5] & SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_2 =  ~outb_sel[4];

assign	SYNTHESIZED_WIRE_3 =  ~outb_sel[3];



bus_switch	b2v_inst18(
	.ena(enoa[4]),
	.enb(enob[4]),
	.in(SYNTHESIZED_WIRE_4),
	.outa(outa),
	.outb(outb));


register	b2v_inst19(
	.en(eni[4]),
	.clk(clk),
	.in(in),
	.out(SYNTHESIZED_WIRE_4));
	defparam	b2v_inst19.BUS_WIDTH = 32;


decoder	b2v_inst2(
	.en(SYNTHESIZED_WIRE_5),
	.d(in_sel[2:0]),
	.q(eni));
	defparam	b2v_inst2.INPUT_WIDTH = 3;


bus_switch	b2v_inst20(
	.ena(enoa[5]),
	.enb(enob[5]),
	.in(SYNTHESIZED_WIRE_6),
	.outa(outa),
	.outb(outb));


register	b2v_inst21(
	.en(eni[5]),
	.clk(clk),
	.in(in),
	.out(SYNTHESIZED_WIRE_6));
	defparam	b2v_inst21.BUS_WIDTH = 32;


cpu_register	b2v_inst3(
	.eni(SYNTHESIZED_WIRE_13),
	.clk(clk),
	.enoa(enoa[1]),
	.enob(enob[1]),
	.in(input_port1),
	.outa(outa),
	.outb(outb));


decoder	b2v_inst4(
	.en(SYNTHESIZED_WIRE_8),
	.d(outa_sel[2:0]),
	.q(enoa));
	defparam	b2v_inst4.INPUT_WIDTH = 3;

assign	SYNTHESIZED_WIRE_5 = in_sel[5] & SYNTHESIZED_WIRE_9 & SYNTHESIZED_WIRE_10;

assign	SYNTHESIZED_WIRE_9 =  ~in_sel[4];

assign	SYNTHESIZED_WIRE_10 =  ~in_sel[3];

assign	SYNTHESIZED_WIRE_8 = outa_sel[5] & SYNTHESIZED_WIRE_11 & SYNTHESIZED_WIRE_12;


endmodule
