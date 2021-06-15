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
// CREATED		"Tue Jun 15 18:56:00 2021"

module ifu(
	bsr,
	jmp,
	ret,
	reset,
	clk,
	x,
	next_address
);


input wire	bsr;
input wire	jmp;
input wire	ret;
input wire	reset;
input wire	clk;
input wire	[15:0] x;
output wire	[15:0] next_address;

wire	[15:0] constant;
wire	fclk;
wire	[15:0] out_adder;
wire	[15:0] reset_bus;
wire	[15:0] SYNTHESIZED_WIRE_0;
wire	[15:0] SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_2;
wire	[15:0] SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	[15:0] SYNTHESIZED_WIRE_6;
wire	[15:0] SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	[15:0] SYNTHESIZED_WIRE_9;

assign	next_address = SYNTHESIZED_WIRE_10;
assign	SYNTHESIZED_WIRE_8 = 1;




adder	b2v_IFU_Adder(
	.ina(SYNTHESIZED_WIRE_0),
	.inb(SYNTHESIZED_WIRE_10),
	.out(out_adder));
	defparam	b2v_IFU_Adder.BUS_WIDTH = 16;



assign	SYNTHESIZED_WIRE_2 =  ~fclk;



bus_mux	b2v_inst2(
	.sel(bsr),
	.in0(constant),
	.in1(x),
	.out(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst2.BUS_WIDTH = 16;


lifo	b2v_inst3(
	.clk(SYNTHESIZED_WIRE_2),
	.reset(reset),
	.push(bsr),
	.pop(ret),
	.data_in(SYNTHESIZED_WIRE_10),
	.data_out(SYNTHESIZED_WIRE_7));
	defparam	b2v_inst3.BUS_WIDTH = 16;
	defparam	b2v_inst3.INC_VALUE = 1'b1;
	defparam	b2v_inst3.STACK_SIZE = 16;


bus_mux	b2v_inst4(
	.sel(reset),
	.in0(SYNTHESIZED_WIRE_4),
	.in1(reset_bus),
	.out(SYNTHESIZED_WIRE_9));
	defparam	b2v_inst4.BUS_WIDTH = 16;


bus_mux	b2v_inst5(
	.sel(SYNTHESIZED_WIRE_5),
	.in0(out_adder),
	.in1(SYNTHESIZED_WIRE_6),
	.out(SYNTHESIZED_WIRE_4));
	defparam	b2v_inst5.BUS_WIDTH = 16;


bus_mux	b2v_inst6(
	.sel(ret),
	.in0(x),
	.in1(SYNTHESIZED_WIRE_7),
	.out(SYNTHESIZED_WIRE_6));
	defparam	b2v_inst6.BUS_WIDTH = 16;


assign	SYNTHESIZED_WIRE_5 = jmp | ret;


register	b2v_PC(
	.en(SYNTHESIZED_WIRE_8),
	.clk(fclk),
	.in(SYNTHESIZED_WIRE_9),
	.out(SYNTHESIZED_WIRE_10));
	defparam	b2v_PC.BUS_WIDTH = 16;

assign	fclk = clk;
assign	constant[15:1] = 15'b000000000000000;
assign	constant[0] = 1;
assign	reset_bus = 16'b0000000000000000;

endmodule
