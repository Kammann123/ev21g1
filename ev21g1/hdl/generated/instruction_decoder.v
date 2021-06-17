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
// CREATED		"Wed Jun 16 22:11:04 2021"

module instruction_decoder(
	instruction,
	microinstruction
);


input wire	[31:0] instruction;
output wire	[32:0] microinstruction;

wire	[5:0] gnd;
wire	[32:0] microinstruction_ALTERA_SYNTHESIZED;
wire	[5:0] vcc;
wire	[5:0] SYNTHESIZED_WIRE_0;
wire	[5:0] SYNTHESIZED_WIRE_1;
wire	[3:0] SYNTHESIZED_WIRE_2;
wire	[3:0] SYNTHESIZED_WIRE_3;
wire	[2:0] SYNTHESIZED_WIRE_4;
wire	[2:0] SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	[5:0] SYNTHESIZED_WIRE_14;





mir_format_1	b2v_inst(
	.opcode(instruction[27:18]),
	.read(SYNTHESIZED_WIRE_6),
	.write(SYNTHESIZED_WIRE_8),
	.flip(SYNTHESIZED_WIRE_10),
	.print(SYNTHESIZED_WIRE_12),
	.aluc(SYNTHESIZED_WIRE_2),
	.sh(SYNTHESIZED_WIRE_4));


mir_format_2	b2v_inst1(
	.opcode(instruction[27:22]),
	.read(SYNTHESIZED_WIRE_7),
	.write(SYNTHESIZED_WIRE_9),
	.flip(SYNTHESIZED_WIRE_11),
	.print(SYNTHESIZED_WIRE_13),
	.aluc(SYNTHESIZED_WIRE_3),
	.sh(SYNTHESIZED_WIRE_5));


bus_mux	b2v_inst10(
	.sel(instruction[30]),
	.in0(gnd),
	.in1(instruction[17:12]),
	.out(SYNTHESIZED_WIRE_14));
	defparam	b2v_inst10.BUS_WIDTH = 6;

assign	microinstruction_ALTERA_SYNTHESIZED[30] = instruction[30];




bus_mux	b2v_inst13(
	.sel(instruction[31]),
	.in0(SYNTHESIZED_WIRE_0),
	.in1(SYNTHESIZED_WIRE_1),
	.out(microinstruction_ALTERA_SYNTHESIZED[13:8]));
	defparam	b2v_inst13.BUS_WIDTH = 6;


bus_mux	b2v_inst14(
	.sel(instruction[29]),
	.in0(gnd),
	.in1(instruction[11:6]),
	.out(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst14.BUS_WIDTH = 6;

assign	microinstruction_ALTERA_SYNTHESIZED[31] = instruction[29];


assign	microinstruction_ALTERA_SYNTHESIZED[32] = instruction[28];



bus_mux	b2v_inst17(
	.sel(instruction[29]),
	.in0(gnd),
	.in1(instruction[5:0]),
	.out(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst17.BUS_WIDTH = 6;


bus_mux	b2v_inst19(
	.sel(instruction[28]),
	.in0(vcc),
	.in1(instruction[5:0]),
	.out(microinstruction_ALTERA_SYNTHESIZED[7:2]));
	defparam	b2v_inst19.BUS_WIDTH = 6;


bus_mux	b2v_inst2(
	.sel(instruction[31]),
	.in0(SYNTHESIZED_WIRE_2),
	.in1(SYNTHESIZED_WIRE_3),
	.out(microinstruction_ALTERA_SYNTHESIZED[29:26]));
	defparam	b2v_inst2.BUS_WIDTH = 4;



bus_mux	b2v_inst3(
	.sel(instruction[31]),
	.in0(SYNTHESIZED_WIRE_4),
	.in1(SYNTHESIZED_WIRE_5),
	.out(microinstruction_ALTERA_SYNTHESIZED[25:23]));
	defparam	b2v_inst3.BUS_WIDTH = 3;


bus_mux	b2v_inst4(
	.sel(instruction[31]),
	.in0(SYNTHESIZED_WIRE_6),
	.in1(SYNTHESIZED_WIRE_7),
	.out(microinstruction_ALTERA_SYNTHESIZED[21]));
	defparam	b2v_inst4.BUS_WIDTH = 1;


bus_mux	b2v_inst5(
	.sel(instruction[31]),
	.in0(SYNTHESIZED_WIRE_8),
	.in1(SYNTHESIZED_WIRE_9),
	.out(microinstruction_ALTERA_SYNTHESIZED[20]));
	defparam	b2v_inst5.BUS_WIDTH = 1;


bus_mux	b2v_inst6(
	.sel(instruction[31]),
	.in0(SYNTHESIZED_WIRE_10),
	.in1(SYNTHESIZED_WIRE_11),
	.out(microinstruction_ALTERA_SYNTHESIZED[1]));
	defparam	b2v_inst6.BUS_WIDTH = 1;


bus_mux	b2v_inst7(
	.sel(instruction[31]),
	.in0(SYNTHESIZED_WIRE_12),
	.in1(SYNTHESIZED_WIRE_13),
	.out(microinstruction_ALTERA_SYNTHESIZED[0]));
	defparam	b2v_inst7.BUS_WIDTH = 1;

assign	microinstruction_ALTERA_SYNTHESIZED[22] = instruction[31];



bus_mux	b2v_inst9(
	.sel(instruction[31]),
	.in0(SYNTHESIZED_WIRE_14),
	.in1(gnd),
	.out(microinstruction_ALTERA_SYNTHESIZED[19:14]));
	defparam	b2v_inst9.BUS_WIDTH = 6;

assign	microinstruction = microinstruction_ALTERA_SYNTHESIZED;
assign	gnd = 6'b000000;
assign	vcc = 6'b111111;

endmodule
