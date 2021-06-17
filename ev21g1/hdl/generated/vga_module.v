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
// CREATED		"Thu Jun 17 01:34:22 2021"

module vga_module(
	clk,
	print_enable,
	pixel_address,
	pixel_rgb,
	hsync,
	vsync,
	p_col,
	p_row,
	vga_rgb
);


input wire	clk;
input wire	print_enable;
input wire	[15:0] pixel_address;
input wire	[2:0] pixel_rgb;
output wire	hsync;
output wire	vsync;
output wire	[9:0] p_col;
output wire	[9:0] p_row;
output wire	[2:0] vga_rgb;

wire	SYNTHESIZED_WIRE_0;
wire	[2:0] SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	[15:0] SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_0 = 1;
assign	SYNTHESIZED_WIRE_2 = 1;






vga_controller	b2v_inst5(
	.reset(SYNTHESIZED_WIRE_0),
	.clock(clk),
	.pixel_rgb(SYNTHESIZED_WIRE_1),
	.vga_hsync(hsync),
	.vga_vsync(vsync),
	.pixel_address(SYNTHESIZED_WIRE_3),
	.pixel_col(p_col),
	.pixel_row(p_row),
	.vga_rgb(vga_rgb));
	defparam	b2v_inst5.hactive = 320;
	defparam	b2v_inst5.hbackporch = 40;
	defparam	b2v_inst5.hfrontporch = 8;
	defparam	b2v_inst5.hsyncpulse = 32;
	defparam	b2v_inst5.htotal = 400;
	defparam	b2v_inst5.vactive = 200;
	defparam	b2v_inst5.vbackporch = 6;
	defparam	b2v_inst5.vfrontporch = 3;
	defparam	b2v_inst5.vsyncpulse = 6;
	defparam	b2v_inst5.vtotal = 215;


VRAM	b2v_inst6(
	.wren(print_enable),
	.rden(SYNTHESIZED_WIRE_2),
	.clock(clk),
	.data(pixel_rgb),
	.rdaddress(SYNTHESIZED_WIRE_3),
	.wraddress(pixel_address),
	.q(SYNTHESIZED_WIRE_1));


endmodule
