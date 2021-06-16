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
// CREATED		"Wed Jun 16 16:39:56 2021"

module cpu(
	clk,
	reset,
	input_port0,
	input_port1,
	rom_data_bus,
	mem_read,
	mem_write,
	rom_read,
	mem_addr_bus,
	mem_data_bus,
	output_port0,
	output_port1,
	rom_addr_bus
);


input wire	clk;
input wire	reset;
input wire	[31:0] input_port0;
input wire	[31:0] input_port1;
input wire	[31:0] rom_data_bus;
output wire	mem_read;
output wire	mem_write;
output wire	rom_read;
output wire	[31:0] mem_addr_bus;
inout wire	[31:0] mem_data_bus;
output wire	[31:0] output_port0;
output wire	[31:0] output_port1;
output wire	[12:0] rom_addr_bus;

wire	alu_carry;
wire	alu_overflow;
wire	bsr;
wire	[31:0] bus_a;
wire	[31:0] bus_b;
wire	[31:0] bus_c;
wire	cond_jmp;
wire	condjmp_hold;
wire	hold;
wire	[31:0] i_decode;
wire	ifu_bsr;
wire	ifu_jmp;
wire	ifu_ret;
wire	jcy;
wire	jmp;
wire	jne;
wire	jov;
wire	jze;
wire	[31:0] k;
wire	[29:0] mi_decode;
wire	[29:0] mi_execute;
wire	[29:0] mi_operand;
wire	[29:0] mi_retire;
wire	[31:0] psr;
wire	ret;
wire	[15:0] rom_addr;
wire	rom_clk;
wire	sh_carry;
wire	sh_overflow;
wire	[31:0] SYNTHESIZED_WIRE_0;
wire	[31:0] SYNTHESIZED_WIRE_1;
wire	[31:0] SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_29;
wire	[31:0] SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	[31:0] SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	[31:0] SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	[31:0] SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	[29:0] SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	[29:0] SYNTHESIZED_WIRE_28;

assign	SYNTHESIZED_WIRE_5 = 1;
assign	SYNTHESIZED_WIRE_6 = 1;
assign	SYNTHESIZED_WIRE_7 = 1;
assign	SYNTHESIZED_WIRE_9 = 1;
assign	SYNTHESIZED_WIRE_14 = 1;
assign	SYNTHESIZED_WIRE_17 = 1;
assign	SYNTHESIZED_WIRE_20 = 1;
assign	SYNTHESIZED_WIRE_21 = 0;
assign	SYNTHESIZED_WIRE_24 = 1;
assign	SYNTHESIZED_WIRE_27 = 1;




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
	.out(bus_c));


port_register_bank	b2v_inst10(
	.clk(SYNTHESIZED_WIRE_29),
	.in(SYNTHESIZED_WIRE_30),
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
	.in(k),
	.out(SYNTHESIZED_WIRE_11));
	defparam	b2v_inst18.BUS_WIDTH = 32;



register	b2v_inst2(
	.en(SYNTHESIZED_WIRE_7),
	.clk(clk),
	.in(SYNTHESIZED_WIRE_8),
	.out(SYNTHESIZED_WIRE_30));
	defparam	b2v_inst2.BUS_WIDTH = 32;


instruction_predecoder	b2v_inst20(
	.instruction(i_decode),
	.jmp(jmp),
	.jze(jze),
	.jne(jne),
	.jov(jov),
	.jcy(jcy),
	.ret(ret),
	.bsr(bsr));


register	b2v_inst21(
	.en(SYNTHESIZED_WIRE_9),
	.clk(SYNTHESIZED_WIRE_10),
	.in(rom_data_bus),
	.out(i_decode));
	defparam	b2v_inst21.BUS_WIDTH = 32;

assign	SYNTHESIZED_WIRE_29 =  ~clk;


buffer_tri	b2v_inst23(
	.en(mi_operand[20]),
	.in(bus_a),
	.out(mem_data_bus));
	defparam	b2v_inst23.BUS_WIDTH = 32;


bus_mux	b2v_inst24(
	.sel(mi_operand[22]),
	.in0(bus_a),
	.in1(SYNTHESIZED_WIRE_11),
	.out(SYNTHESIZED_WIRE_15));
	defparam	b2v_inst24.BUS_WIDTH = 32;



ifu	b2v_inst26(
	.clk(SYNTHESIZED_WIRE_12),
	.bsr(ifu_bsr),
	.jmp(ifu_jmp),
	.ret(ifu_ret),
	.reset(reset),
	.x(k[15:0]),
	.next_address(rom_addr));


uc_selector	b2v_inst27(
	.mi(mi_execute),
	.sel(SYNTHESIZED_WIRE_13));


bus_mux	b2v_inst28(
	.sel(SYNTHESIZED_WIRE_13),
	.in0(bus_c),
	.in1(mem_data_bus),
	.out(SYNTHESIZED_WIRE_8));
	defparam	b2v_inst28.BUS_WIDTH = 32;


register	b2v_inst3(
	.en(SYNTHESIZED_WIRE_14),
	.clk(clk),
	.in(SYNTHESIZED_WIRE_15),
	.out(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst3.BUS_WIDTH = 32;


uc_1	b2v_inst31(
	.hold(hold),
	.bus_inp(mi_operand),
	.bus_out(SYNTHESIZED_WIRE_28));

assign	SYNTHESIZED_WIRE_25 = clk & SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_16 =  ~hold;


uc_1	b2v_inst34(
	.hold(condjmp_hold),
	.bus_inp(mi_decode),
	.bus_out(SYNTHESIZED_WIRE_26));


uc_ifu	b2v_inst36(
	.jmp(jmp),
	.jze(jze),
	.jne(jne),
	.jcy(jov),
	.jov(jcy),
	.ret(ret),
	.bsr(bsr),
	.psr(psr),
	.ifu_jmp(ifu_jmp),
	.ifu_bsr(ifu_bsr),
	.ifu_ret(ifu_ret));



register	b2v_inst4(
	.en(SYNTHESIZED_WIRE_17),
	.clk(clk),
	.in(bus_b),
	.out(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst4.BUS_WIDTH = 32;

assign	k[15:0] = i_decode[21:6];




uc_2	b2v_inst43(
	.clk(clk),
	.a(mi_operand[19:14]),
	.b(mi_operand[13:8]),
	.c(mi_execute[7:2]),
	.hold(hold));

assign	SYNTHESIZED_WIRE_12 =  ~rom_clk;

assign	rom_clk = clk & SYNTHESIZED_WIRE_18;


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

assign	SYNTHESIZED_WIRE_18 =  ~hold;

assign	SYNTHESIZED_WIRE_10 = clk & SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_19 =  ~hold;


uc_cjmp	b2v_inst54(
	.clk(clk),
	.cond_jmp(SYNTHESIZED_WIRE_20),
	.hold(SYNTHESIZED_WIRE_21),
	.condjmp_hold(condjmp_hold));


general_register_bank	b2v_inst6(
	.clk(SYNTHESIZED_WIRE_29),
	.in(SYNTHESIZED_WIRE_30),
	.in_sel(mi_retire[7:2]),
	.outa_sel(mi_operand[19:14]),
	.outb_sel(mi_operand[13:8]),
	.outa(bus_a),
	.outb(bus_b));




instruction_decoder	b2v_inst7(
	.instruction(i_decode),
	.microinstruction(mi_decode));


register	b2v_inst8(
	.en(SYNTHESIZED_WIRE_24),
	.clk(SYNTHESIZED_WIRE_25),
	.in(SYNTHESIZED_WIRE_26),
	.out(mi_operand));
	defparam	b2v_inst8.BUS_WIDTH = 30;


register	b2v_inst9(
	.en(SYNTHESIZED_WIRE_27),
	.clk(clk),
	.in(SYNTHESIZED_WIRE_28),
	.out(mi_execute));
	defparam	b2v_inst9.BUS_WIDTH = 30;

assign	mem_read = mi_operand[21];
assign	mem_write = mi_operand[20];
assign	rom_read = rom_clk;
assign	mem_addr_bus = bus_b;
assign	rom_addr_bus[12:0] = rom_addr[12:0];
assign	k[31:16] = 16'b0000000000000000;

endmodule
