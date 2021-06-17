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
// CREATED		"Wed Jun 16 20:17:03 2021"

module ev21g1(
	clk,
	input_port0,
	input_port1,
	instruction,
	hsync,
	vsync,
	output_port0,
	output_port1,
	vga_rgb
);


input wire	clk;
input wire	[31:0] input_port0;
input wire	[31:0] input_port1;
input wire	[31:0] instruction;
output wire	hsync;
output wire	vsync;
output wire	[31:0] output_port0;
output wire	[31:0] output_port1;
output wire	[2:0] vga_rgb;

wire	cs_ram;
wire	[31:0] mem_addr_bus;
wire	[31:0] mem_data_bus;
wire	mem_read;
wire	mem_write;
wire	ram_read;
wire	ram_write;
reg	DFF_inst7;
wire	[31:0] SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
reg	DFF_inst6;
wire	SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_1 = 1;
assign	SYNTHESIZED_WIRE_2 = 1;
assign	SYNTHESIZED_WIRE_3 = 1;
assign	SYNTHESIZED_WIRE_4 = 1;




cpu	b2v_inst(
	.clk(clk),
	.vga_clk(clk),
	.input_port0(input_port1),
	.input_port1(input_port0),
	.instruction(instruction),
	.mem_read(mem_read),
	.mem_write(mem_write),
	.hsync(hsync),
	.vsync(vsync),
	.mem_addr_bus(mem_addr_bus),
	.mem_data_bus(mem_data_bus),
	.output_port0(output_port0),
	.output_port1(output_port1),
	.vga_rgb(vga_rgb));


ram	b2v_inst1(
	.wren(ram_write),
	.rden(ram_read),
	.clock(clk),
	.address(mem_addr_bus[12:0]),
	.data(mem_data_bus),
	.q(SYNTHESIZED_WIRE_0));




buffer_tri	b2v_inst2(
	.en(DFF_inst7),
	.in(SYNTHESIZED_WIRE_0),
	.out(mem_data_bus));
	defparam	b2v_inst2.BUS_WIDTH = 32;

assign	ram_write = mem_write & cs_ram;

assign	ram_read = mem_read & cs_ram;


chip_select	b2v_inst5(
	.address(mem_addr_bus),
	.cs_ram(cs_ram));


always@(posedge clk or negedge SYNTHESIZED_WIRE_1 or negedge SYNTHESIZED_WIRE_2)
begin
if (!SYNTHESIZED_WIRE_1)
	begin
	DFF_inst6 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_2)
	begin
	DFF_inst6 <= 1;
	end
else
	begin
	DFF_inst6 <= ram_read;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_3 or negedge SYNTHESIZED_WIRE_4)
begin
if (!SYNTHESIZED_WIRE_3)
	begin
	DFF_inst7 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_4)
	begin
	DFF_inst7 <= 1;
	end
else
	begin
	DFF_inst7 <= DFF_inst6;
	end
end




endmodule
