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
// CREATED		"Fri May 21 20:03:16 2021"

module bus_switch(
	ena,
	enb,
	in,
	outa,
	outb
);


input wire	ena;
input wire	enb;
input wire	[31:0] in;
output wire	[31:0] outa;
output wire	[31:0] outb;






buffer_tri	b2v_inst(
	.en(ena),
	.in(in),
	.out(outa));
	defparam	b2v_inst.BUS_WIDTH = 32;


buffer_tri	b2v_inst1(
	.en(enb),
	.in(in),
	.out(outb));
	defparam	b2v_inst1.BUS_WIDTH = 32;


endmodule
