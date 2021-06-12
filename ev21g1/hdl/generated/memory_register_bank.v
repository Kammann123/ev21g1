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
// CREATED		"Fri Jun 11 22:16:29 2021"

module memory_register_bank(
	clk,
	mem_read,
	mem_write,
	in,
	in_sel,
	outa_sel,
	outb_sel,
	mem_addr_bus,
	mem_data_bus,
	outa,
	outb
);


input wire	clk;
input wire	mem_read;
input wire	mem_write;
input wire	[31:0] in;
input wire	[5:0] in_sel;
input wire	[5:0] outa_sel;
input wire	[5:0] outb_sel;
output wire	[31:0] mem_addr_bus;
inout wire	[31:0] mem_data_bus;
output wire	[31:0] outa;
output wire	[31:0] outb;

wire	[7:0] eni;
wire	[7:0] enoa;
wire	[7:0] enob;
wire	SYNTHESIZED_WIRE_0;
wire	[31:0] SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	[31:0] SYNTHESIZED_WIRE_11;
wire	[31:0] SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_10;

assign	mem_addr_bus = SYNTHESIZED_WIRE_8;




register	b2v_inst(
	.en(eni[0]),
	.clk(clk),
	.in(in),
	.out(SYNTHESIZED_WIRE_8));
	defparam	b2v_inst.BUS_WIDTH = 32;


register	b2v_inst1(
	.en(SYNTHESIZED_WIRE_0),
	.clk(clk),
	.in(SYNTHESIZED_WIRE_1),
	.out(SYNTHESIZED_WIRE_11));
	defparam	b2v_inst1.BUS_WIDTH = 32;


decoder	b2v_inst10(
	.en(SYNTHESIZED_WIRE_2),
	.d(in_sel[2:0]),
	.q(eni));
	defparam	b2v_inst10.INPUT_WIDTH = 3;

assign	SYNTHESIZED_WIRE_3 =  ~outa_sel[4];

assign	SYNTHESIZED_WIRE_4 = outa_sel[5] & SYNTHESIZED_WIRE_3 & outa_sel[3];


decoder	b2v_inst13(
	.en(SYNTHESIZED_WIRE_4),
	.d(outa_sel[2:0]),
	.q(enoa));
	defparam	b2v_inst13.INPUT_WIDTH = 3;

assign	SYNTHESIZED_WIRE_5 =  ~outb_sel[4];

assign	SYNTHESIZED_WIRE_6 = outb_sel[5] & SYNTHESIZED_WIRE_5 & outb_sel[3];


decoder	b2v_inst16(
	.en(SYNTHESIZED_WIRE_6),
	.d(outb_sel[2:0]),
	.q(enob));
	defparam	b2v_inst16.INPUT_WIDTH = 3;


buffer_tri	b2v_inst18(
	.en(mem_write),
	.in(SYNTHESIZED_WIRE_11),
	.out(mem_data_bus));
	defparam	b2v_inst18.BUS_WIDTH = 32;


bus_switch	b2v_inst2(
	.ena(enoa[0]),
	.enb(enob[0]),
	.in(SYNTHESIZED_WIRE_8),
	.outa(outa),
	.outb(outb));


bus_switch	b2v_inst3(
	.ena(enoa[1]),
	.enb(enob[1]),
	.in(SYNTHESIZED_WIRE_11),
	.outa(outa),
	.outb(outb));

assign	SYNTHESIZED_WIRE_0 = mem_read | eni[1];


bus_mux	b2v_inst5(
	.sel(mem_read),
	.in0(in),
	.in1(mem_data_bus),
	.out(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst5.BUS_WIDTH = 32;

assign	SYNTHESIZED_WIRE_10 =  ~in_sel[4];

assign	SYNTHESIZED_WIRE_2 = in_sel[5] & SYNTHESIZED_WIRE_10 & in_sel[3];


endmodule
