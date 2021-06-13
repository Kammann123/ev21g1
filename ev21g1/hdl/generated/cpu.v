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
// CREATED		"Sat Jun 12 23:39:21 2021"

module cpu(
	clk,
	input_port0,
	input_port1,
	k,
	microinstruction,
	mem_read,
	mem_write,
	mem_addr_bus,
	mem_data_bus,
	output_port0,
	output_port1
);


input wire	clk;
input wire	[31:0] input_port0;
input wire	[31:0] input_port1;
input wire	[15:0] k;
input wire	[29:0] microinstruction;
output wire	mem_read;
output wire	mem_write;
output wire	[31:0] mem_addr_bus;
inout wire	[31:0] mem_data_bus;
output wire	[31:0] output_port0;
output wire	[31:0] output_port1;

wire	alu_carry;
wire	alu_overflow;
wire	[31:0] bus_a;
wire	[31:0] bus_b;
wire	[31:0] bus_c;
wire	[31:0] k_in;
wire	[29:0] mi_execute;
wire	[29:0] mi_operand;
wire	[29:0] mi_retire;
wire	[31:0] psr;
wire	sh_carry;
wire	sh_overflow;
wire	[31:0] SYNTHESIZED_WIRE_0;
wire	[31:0] SYNTHESIZED_WIRE_1;
wire	[31:0] SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_19;
wire	[31:0] SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	[31:0] SYNTHESIZED_WIRE_8;
wire	[31:0] SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	[31:0] SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	[31:0] SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_5 = 1;
assign	SYNTHESIZED_WIRE_6 = 1;
assign	SYNTHESIZED_WIRE_7 = 1;
assign	SYNTHESIZED_WIRE_12 = 1;
assign	SYNTHESIZED_WIRE_14 = 1;
assign	SYNTHESIZED_WIRE_17 = 1;
assign	SYNTHESIZED_WIRE_18 = 1;




alu	b2v_inst(
	.cin(psr[29]),
	.aluc(mi_execute[29:26]),
	.ina(SYNTHESIZED_WIRE_0),
	.inb(SYNTHESIZED_WIRE_1),
	.cout(alu_carry),
	.overflow(alu_overflow),
	.out(SYNTHESIZED_WIRE_2));


shifter	b2v_inst1(
	.in(SYNTHESIZED_WIRE_2),
	.sh(mi_execute[25:23]),
	.cout(sh_carry),
	.overflow(sh_overflow),
	.out(SYNTHESIZED_WIRE_8));


port_register_bank	b2v_inst10(
	.clk(SYNTHESIZED_WIRE_19),
	.in(SYNTHESIZED_WIRE_20),
	.in_sel(mi_retire[7:2]),
	.input_port0(input_port0),
	.input_port1(input_port1),
	.outa_sel(mi_operand[19:14]),
	.outb_sel(mi_operand[13:8]),
	.outa(bus_a),
	.outb(bus_b),
	.output_port0(output_port0),
	.output_port1(output_port1));


register	b2v_inst11(
	.en(SYNTHESIZED_WIRE_5),
	.clk(clk),
	.in(mi_execute),
	.out(mi_retire));
	defparam	b2v_inst11.BUS_WIDTH = 30;








register	b2v_inst18(
	.en(SYNTHESIZED_WIRE_6),
	.clk(clk),
	.in(k_in),
	.out(SYNTHESIZED_WIRE_9));
	defparam	b2v_inst18.BUS_WIDTH = 32;



register	b2v_inst2(
	.en(SYNTHESIZED_WIRE_7),
	.clk(clk),
	.in(SYNTHESIZED_WIRE_8),
	.out(SYNTHESIZED_WIRE_11));
	defparam	b2v_inst2.BUS_WIDTH = 32;

assign	SYNTHESIZED_WIRE_19 =  ~clk;


buffer_tri	b2v_inst23(
	.en(mi_operand[20]),
	.in(bus_a),
	.out(mem_data_bus));
	defparam	b2v_inst23.BUS_WIDTH = 32;


bus_mux	b2v_inst24(
	.sel(mi_operand[22]),
	.in0(bus_a),
	.in1(SYNTHESIZED_WIRE_9),
	.out(SYNTHESIZED_WIRE_13));
	defparam	b2v_inst24.BUS_WIDTH = 32;



uc_selector	b2v_inst27(
	.mi(mi_retire),
	.sel(SYNTHESIZED_WIRE_10));


bus_mux	b2v_inst28(
	.sel(SYNTHESIZED_WIRE_10),
	.in0(SYNTHESIZED_WIRE_11),
	.in1(mem_data_bus),
	.out(SYNTHESIZED_WIRE_20));
	defparam	b2v_inst28.BUS_WIDTH = 32;


register	b2v_inst3(
	.en(SYNTHESIZED_WIRE_12),
	.clk(clk),
	.in(SYNTHESIZED_WIRE_13),
	.out(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst3.BUS_WIDTH = 32;


register	b2v_inst4(
	.en(SYNTHESIZED_WIRE_14),
	.clk(clk),
	.in(bus_b),
	.out(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst4.BUS_WIDTH = 32;


uc_psr	b2v_inst5(
	.alu_carry(alu_carry),
	.alu_overflow(alu_overflow),
	.sh_carry(sh_carry),
	.sh_overflow(sh_overflow),
	.clk(clk),
	.aluc(mi_execute[29:26]),
	.result(bus_c),
	.sh(mi_execute[25:23]),
	.psr(psr));


general_register_bank	b2v_inst6(
	.clk(SYNTHESIZED_WIRE_19),
	.in(SYNTHESIZED_WIRE_20),
	.in_sel(mi_retire[7:2]),
	.outa_sel(mi_operand[19:14]),
	.outb_sel(mi_operand[13:8]),
	.outa(bus_a),
	.outb(bus_b));


register	b2v_inst8(
	.en(SYNTHESIZED_WIRE_17),
	.clk(clk),
	.in(microinstruction),
	.out(mi_operand));
	defparam	b2v_inst8.BUS_WIDTH = 30;


register	b2v_inst9(
	.en(SYNTHESIZED_WIRE_18),
	.clk(clk),
	.in(mi_operand),
	.out(mi_execute));
	defparam	b2v_inst9.BUS_WIDTH = 30;

assign	mem_read = mi_operand[21];
assign	mem_write = mi_operand[20];
assign	mem_addr_bus = bus_b;
assign	k_in[15:0] = k;
assign	k_in[31:16] = 16'b0000000000000000;

endmodule
