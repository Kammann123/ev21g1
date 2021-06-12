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
// CREATED		"Fri Jun 11 19:05:52 2021"

module general_register_bank(
	clk,
	in,
	in_sel,
	outa_sel,
	outb_sel,
	outa,
	outb
);


input wire	clk;
input wire	[31:0] in;
input wire	[5:0] in_sel;
input wire	[5:0] outa_sel;
input wire	[5:0] outb_sel;
output wire	[31:0] outa;
output wire	[31:0] outb;

wire	[31:0] eni;
wire	[31:0] enoa;
wire	[31:0] enob;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;





cpu_register	b2v_inst(
	.eni(eni[0]),
	.clk(clk),
	.enoa(enoa[0]),
	.enob(enob[0]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst1(
	.eni(eni[1]),
	.clk(clk),
	.enoa(enoa[1]),
	.enob(enob[1]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst10(
	.eni(eni[10]),
	.clk(clk),
	.enoa(enoa[10]),
	.enob(enob[10]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst11(
	.eni(eni[11]),
	.clk(clk),
	.enoa(enoa[11]),
	.enob(enob[11]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst12(
	.eni(eni[12]),
	.clk(clk),
	.enoa(enoa[12]),
	.enob(enob[12]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst13(
	.eni(eni[13]),
	.clk(clk),
	.enoa(enoa[13]),
	.enob(enob[13]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst14(
	.eni(eni[14]),
	.clk(clk),
	.enoa(enoa[14]),
	.enob(enob[14]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst15(
	.eni(eni[15]),
	.clk(clk),
	.enoa(enoa[15]),
	.enob(enob[15]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst16(
	.eni(eni[16]),
	.clk(clk),
	.enoa(enoa[16]),
	.enob(enob[16]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst17(
	.eni(eni[17]),
	.clk(clk),
	.enoa(enoa[17]),
	.enob(enob[17]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst18(
	.eni(eni[18]),
	.clk(clk),
	.enoa(enoa[18]),
	.enob(enob[18]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst19(
	.eni(eni[19]),
	.clk(clk),
	.enoa(enoa[19]),
	.enob(enob[19]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst2(
	.eni(eni[2]),
	.clk(clk),
	.enoa(enoa[2]),
	.enob(enob[2]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst20(
	.eni(eni[20]),
	.clk(clk),
	.enoa(enoa[20]),
	.enob(enob[20]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst21(
	.eni(eni[21]),
	.clk(clk),
	.enoa(enoa[21]),
	.enob(enob[21]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst22(
	.eni(eni[22]),
	.clk(clk),
	.enoa(enoa[22]),
	.enob(enob[22]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst23(
	.eni(eni[23]),
	.clk(clk),
	.enoa(enoa[23]),
	.enob(enob[23]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst24(
	.eni(eni[24]),
	.clk(clk),
	.enoa(enoa[24]),
	.enob(enob[24]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst25(
	.eni(eni[25]),
	.clk(clk),
	.enoa(enoa[25]),
	.enob(enob[25]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst26(
	.eni(eni[26]),
	.clk(clk),
	.enoa(enoa[26]),
	.enob(enob[26]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst27(
	.eni(eni[27]),
	.clk(clk),
	.enoa(enoa[27]),
	.enob(enob[27]),
	.in(in),
	.outa(outa),
	.outb(outb));


decoder	b2v_inst29(
	.en(SYNTHESIZED_WIRE_0),
	.d(in_sel[4:0]),
	.q(eni));
	defparam	b2v_inst29.INPUT_WIDTH = 5;


cpu_register	b2v_inst3(
	.eni(eni[3]),
	.clk(clk),
	.enoa(enoa[3]),
	.enob(enob[3]),
	.in(in),
	.outa(outa),
	.outb(outb));


decoder	b2v_inst30(
	.en(SYNTHESIZED_WIRE_1),
	.d(outa_sel[4:0]),
	.q(enoa));
	defparam	b2v_inst30.INPUT_WIDTH = 5;


decoder	b2v_inst31(
	.en(SYNTHESIZED_WIRE_2),
	.d(outb_sel[4:0]),
	.q(enob));
	defparam	b2v_inst31.INPUT_WIDTH = 5;

assign	SYNTHESIZED_WIRE_0 =  ~in_sel[5];

assign	SYNTHESIZED_WIRE_1 =  ~outa_sel[5];

assign	SYNTHESIZED_WIRE_2 =  ~outb_sel[5];


cpu_register	b2v_inst4(
	.eni(eni[4]),
	.clk(clk),
	.enoa(enoa[4]),
	.enob(enob[4]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst5(
	.eni(eni[5]),
	.clk(clk),
	.enoa(enoa[5]),
	.enob(enob[5]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst6(
	.eni(eni[6]),
	.clk(clk),
	.enoa(enoa[6]),
	.enob(enob[6]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst7(
	.eni(eni[7]),
	.clk(clk),
	.enoa(enoa[7]),
	.enob(enob[7]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst8(
	.eni(eni[8]),
	.clk(clk),
	.enoa(enoa[8]),
	.enob(enob[8]),
	.in(in),
	.outa(outa),
	.outb(outb));


cpu_register	b2v_inst9(
	.eni(eni[9]),
	.clk(clk),
	.enoa(enoa[9]),
	.enob(enob[9]),
	.in(in),
	.outa(outa),
	.outb(outb));


endmodule
