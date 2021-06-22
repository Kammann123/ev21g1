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
// CREATED		"Mon Jun 21 22:48:31 2021"

module ev21g1(
	clk,
	reset,
	input_port0,
	input_port1,
	vga_hsync,
	vga_vsync,
	output_port0,
	output_port1,
	vga_rgb
);


input wire	clk;
input wire	reset;
input wire	[31:0] input_port0;
input wire	[31:0] input_port1;
output wire	vga_hsync;
output wire	vga_vsync;
output wire	[31:0] output_port0;
output wire	[31:0] output_port1;
output wire	[2:0] vga_rgb;

wire	cpu_clk;
wire	cs_ram;
wire	[31:0] mem_addr_bus;
wire	[31:0] mem_data_bus;
wire	mem_read;
wire	mem_write;
wire	ram_read;
wire	ram_write;
wire	[12:0] rom_addr_bus;
wire	[31:0] rom_data_bus;
wire	rom_read;
wire	system_reset;
wire	vga_clk;
wire	[15:0] vga_pixel_address;
wire	[2:0] vga_pixel_rgb;
wire	vga_print;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_1;
reg	DFFE_inst9;
wire	[31:0] SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_5 = 1;
assign	SYNTHESIZED_WIRE_6 = 1;
assign	SYNTHESIZED_WIRE_7 = 1;




cpu	b2v_inst(
	.clk(cpu_clk),
	.reset(system_reset),
	.input_port0(input_port1),
	.input_port1(input_port0),
	.mem_data_bus(mem_data_bus),
	.rom_data_bus(rom_data_bus),
	.rom_read(rom_read),
	.mem_read(mem_read),
	.mem_write(mem_write),
	.vga_print(vga_print),
	.mem_addr_bus(mem_addr_bus),
	
	.output_port0(output_port0),
	.output_port1(output_port1),
	.rom_addr_bus(rom_addr_bus),
	.vga_pixel_address(vga_pixel_address),
	.vga_pixel_rgb(vga_pixel_rgb));


pll	b2v_inst1(
	.inclk0(clk),
	.c0(SYNTHESIZED_WIRE_3),
	.c1(SYNTHESIZED_WIRE_1),
	.locked(SYNTHESIZED_WIRE_8));




rom	b2v_inst12(
	.clock(rom_read),
	.address(rom_addr_bus[11:0]),
	.q(rom_data_bus));

assign	vga_clk = SYNTHESIZED_WIRE_8 & SYNTHESIZED_WIRE_1;


ram	b2v_inst15(
	.wren(ram_write),
	.rden(ram_read),
	.clock(clk),
	.address(mem_addr_bus[9:0]),
	.data(mem_data_bus),
	.q(SYNTHESIZED_WIRE_2));

assign	system_reset =  ~reset;


buffer_tri	b2v_inst2(
	.en(DFFE_inst9),
	.in(SYNTHESIZED_WIRE_2),
	.out(mem_data_bus));
	defparam	b2v_inst2.BUS_WIDTH = 32;

assign	ram_write = mem_write & cs_ram;

assign	ram_read = mem_read & cs_ram;


chip_select	b2v_inst5(
	.address(mem_addr_bus),
	.cs_ram(cs_ram));

assign	cpu_clk = SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_8;


vga_module	b2v_inst7(
	.print(vga_print),
	.vga_clk(vga_clk),
	.cpu_clk(cpu_clk),
	.pixel_address(vga_pixel_address),
	.pixel_rgb(vga_pixel_rgb),
	.vga_hsync(vga_hsync),
	.vga_vsync(vga_vsync),
	.vga_rgb(vga_rgb));



always@(posedge cpu_clk or negedge SYNTHESIZED_WIRE_6 or negedge SYNTHESIZED_WIRE_5)
begin
if (!SYNTHESIZED_WIRE_6)
	begin
	DFFE_inst9 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_5)
	begin
	DFFE_inst9 <= 1;
	end
else
if (SYNTHESIZED_WIRE_7)
	begin
	DFFE_inst9 <= ram_read;
	end
end


endmodule
