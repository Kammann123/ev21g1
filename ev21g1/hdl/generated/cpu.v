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
// CREATED		"Thu Jun 17 13:21:18 2021"

module cpu(
	clk,
	reset,
	input_port0,
	input_port1,
	rom_data_bus,
	mem_read,
	mem_write,
	rom_read,
	vga_print,
	mem_addr_bus,
	mem_data_bus,
	output_port0,
	output_port1,
	rom_addr_bus,
	vga_pixel_address,
	vga_pixel_rgb
);


input wire	clk;
input wire	reset;
input wire	[31:0] input_port0;
input wire	[31:0] input_port1;
input wire	[31:0] rom_data_bus;
output wire	mem_read;
output wire	mem_write;
output wire	rom_read;
output wire	vga_print;
output wire	[31:0] mem_addr_bus;
inout wire	[31:0] mem_data_bus;
output wire	[31:0] output_port0;
output wire	[31:0] output_port1;
output wire	[12:0] rom_addr_bus;
output wire	[15:0] vga_pixel_address;
output wire	[2:0] vga_pixel_rgb;

wire	alu_carry;
wire	alu_overflow;
wire	bsr;
wire	[31:0] bus_a;
wire	[31:0] bus_b;
wire	[31:0] bus_c;
wire	clk_decode;
wire	clk_fetch;
wire	clk_operand;
wire	cond_jmp;
wire	hold_jump_decode;
wire	hold_jump_fetch;
wire	hold_memory_dependency;
wire	hold_register_dependency;
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
wire	[32:0] mi_decode;
wire	[32:0] mi_execute;
wire	[32:0] mi_operand;
wire	[32:0] mi_retire;
wire	[31:0] psr;
wire	ret;
wire	[15:0] rom_addr;
wire	sh_carry;
wire	sh_overflow;
wire	[31:0] SYNTHESIZED_WIRE_0;
wire	[31:0] SYNTHESIZED_WIRE_1;
wire	[31:0] SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_40;
wire	[31:0] SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	[31:0] SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	[31:0] SYNTHESIZED_WIRE_10;
wire	[31:0] SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	[31:0] SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	[32:0] SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	[32:0] SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	[31:0] SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	[32:0] SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_38;
wire	[32:0] SYNTHESIZED_WIRE_39;

assign	SYNTHESIZED_WIRE_5 = 1;
assign	SYNTHESIZED_WIRE_6 = 1;
assign	SYNTHESIZED_WIRE_7 = 1;
assign	SYNTHESIZED_WIRE_9 = 1;
assign	SYNTHESIZED_WIRE_15 = 1;
assign	SYNTHESIZED_WIRE_21 = 1;
assign	SYNTHESIZED_WIRE_36 = 1;
assign	SYNTHESIZED_WIRE_38 = 1;




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
	.clk(SYNTHESIZED_WIRE_40),
	.in(SYNTHESIZED_WIRE_41),
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
	defparam	b2v_inst11.BUS_WIDTH = 33;








register	b2v_inst18(
	.en(SYNTHESIZED_WIRE_6),
	.clk(clk_operand),
	.in(k),
	.out(SYNTHESIZED_WIRE_11));
	defparam	b2v_inst18.BUS_WIDTH = 32;



register	b2v_inst2(
	.en(SYNTHESIZED_WIRE_7),
	.clk(clk),
	.in(SYNTHESIZED_WIRE_8),
	.out(SYNTHESIZED_WIRE_41));
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
	.clk(clk_decode),
	.in(SYNTHESIZED_WIRE_10),
	.out(i_decode));
	defparam	b2v_inst21.BUS_WIDTH = 32;

assign	SYNTHESIZED_WIRE_40 =  ~clk;


buffer_tri	b2v_inst23(
	.en(mi_operand[20]),
	.in(bus_a),
	.out(mem_data_bus));
	defparam	b2v_inst23.BUS_WIDTH = 32;


bus_mux	b2v_inst24(
	.sel(mi_operand[22]),
	.in0(bus_a),
	.in1(SYNTHESIZED_WIRE_11),
	.out(SYNTHESIZED_WIRE_16));
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
	.mi(mi_execute[29:0]),
	.sel(SYNTHESIZED_WIRE_13));


bus_mux	b2v_inst28(
	.sel(SYNTHESIZED_WIRE_13),
	.in0(bus_c),
	.in1(mem_data_bus),
	.out(SYNTHESIZED_WIRE_8));
	defparam	b2v_inst28.BUS_WIDTH = 32;


uc_conditional_jump	b2v_inst29(
	.jump(cond_jmp),
	.clk(SYNTHESIZED_WIRE_14),
	.reset(reset),
	.hold_jump_fetch(hold_jump_fetch),
	.hold_jump_deco(hold_jump_decode));


register	b2v_inst3(
	.en(SYNTHESIZED_WIRE_15),
	.clk(clk_operand),
	.in(SYNTHESIZED_WIRE_16),
	.out(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst3.BUS_WIDTH = 32;

assign	clk_decode = SYNTHESIZED_WIRE_17 & clk & SYNTHESIZED_WIRE_18 & SYNTHESIZED_WIRE_19;

assign	clk_operand = clk & SYNTHESIZED_WIRE_20;

assign	SYNTHESIZED_WIRE_20 =  ~hold_register_dependency;

assign	SYNTHESIZED_WIRE_27 =  ~clk;

assign	SYNTHESIZED_WIRE_28 =  ~clk;


uc_ifu	b2v_inst36(
	.jmp(jmp),
	.jze(jze),
	.jne(jne),
	.ret(ret),
	.bsr(bsr),
	.jov(jov),
	.jcy(jcy),
	.psr(psr),
	.ifu_jmp(ifu_jmp),
	.ifu_bsr(ifu_bsr),
	.ifu_ret(ifu_ret));

assign	cond_jmp = jze | jov | jcy | jne;

assign	SYNTHESIZED_WIRE_25 = hold_jump_decode | hold_memory_dependency;


instruction_nop	b2v_inst39(
	.nop(SYNTHESIZED_WIRE_30));


register	b2v_inst4(
	.en(SYNTHESIZED_WIRE_21),
	.clk(clk_operand),
	.in(bus_b),
	.out(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst4.BUS_WIDTH = 32;

assign	k[15:0] = i_decode[21:6];



assign	SYNTHESIZED_WIRE_29 = ifu_bsr | ifu_ret | ifu_jmp;

assign	SYNTHESIZED_WIRE_14 = SYNTHESIZED_WIRE_22 & clk & SYNTHESIZED_WIRE_23;


bus_mux	b2v_inst46(
	.sel(hold_register_dependency),
	.in0(mi_operand),
	.in1(SYNTHESIZED_WIRE_24),
	.out(SYNTHESIZED_WIRE_39));
	defparam	b2v_inst46.BUS_WIDTH = 33;


microinstruction_nop	b2v_inst47(
	.nop(SYNTHESIZED_WIRE_24));

assign	SYNTHESIZED_WIRE_12 =  ~clk_fetch;


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

assign	SYNTHESIZED_WIRE_33 =  ~hold_register_dependency;

assign	SYNTHESIZED_WIRE_17 =  ~hold_register_dependency;


bus_mux	b2v_inst53(
	.sel(SYNTHESIZED_WIRE_25),
	.in0(mi_decode),
	.in1(SYNTHESIZED_WIRE_26),
	.out(SYNTHESIZED_WIRE_37));
	defparam	b2v_inst53.BUS_WIDTH = 33;


uc_register_dependency	b2v_inst54(
	.reset(reset),
	.clk(SYNTHESIZED_WIRE_27),
	.mi_execute(mi_execute),
	.mi_operand(mi_operand),
	.hold(hold_register_dependency));


microinstruction_nop	b2v_inst55(
	.nop(SYNTHESIZED_WIRE_26));


uc_memory_dependency	b2v_inst56(
	.reset(reset),
	.clk(SYNTHESIZED_WIRE_28),
	.mi_decode(mi_decode),
	.mi_operand(mi_operand),
	.hold(hold_memory_dependency));


bus_mux	b2v_inst57(
	.sel(SYNTHESIZED_WIRE_29),
	.in0(rom_data_bus),
	.in1(SYNTHESIZED_WIRE_30),
	.out(SYNTHESIZED_WIRE_10));
	defparam	b2v_inst57.BUS_WIDTH = 32;

assign	SYNTHESIZED_WIRE_18 =  ~hold_memory_dependency;

assign	SYNTHESIZED_WIRE_19 =  ~hold_jump_decode;


general_register_bank	b2v_inst6(
	.clk(SYNTHESIZED_WIRE_40),
	.in(SYNTHESIZED_WIRE_41),
	.in_sel(mi_retire[7:2]),
	.outa_sel(mi_operand[19:14]),
	.outb_sel(mi_operand[13:8]),
	.outa(bus_a),
	.outb(bus_b));

assign	SYNTHESIZED_WIRE_34 =  ~hold_memory_dependency;

assign	SYNTHESIZED_WIRE_22 =  ~hold_memory_dependency;

assign	SYNTHESIZED_WIRE_23 =  ~hold_register_dependency;


instruction_decoder	b2v_inst7(
	.instruction(i_decode),
	.microinstruction(mi_decode));

assign	SYNTHESIZED_WIRE_35 = SYNTHESIZED_WIRE_33 & clk & SYNTHESIZED_WIRE_34;

assign	clk_fetch = hold_jump_fetch | SYNTHESIZED_WIRE_35;


register	b2v_inst8(
	.en(SYNTHESIZED_WIRE_36),
	.clk(clk_operand),
	.in(SYNTHESIZED_WIRE_37),
	.out(mi_operand));
	defparam	b2v_inst8.BUS_WIDTH = 33;


register	b2v_inst9(
	.en(SYNTHESIZED_WIRE_38),
	.clk(clk),
	.in(SYNTHESIZED_WIRE_39),
	.out(mi_execute));
	defparam	b2v_inst9.BUS_WIDTH = 33;

assign	mem_read = mi_operand[21];
assign	mem_write = mi_operand[20];
assign	rom_read = clk_fetch;
assign	vga_print = mi_operand[0];
assign	mem_addr_bus = bus_b;
assign	rom_addr_bus[12:0] = rom_addr[12:0];
assign	vga_pixel_address[15:0] = bus_a[15:0];
assign	vga_pixel_rgb[2:0] = bus_b[2:0];
assign	k[31:16] = 16'b0000000000000000;

endmodule
