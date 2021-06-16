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
// CREATED		"Wed Jun 16 12:28:10 2021"

module uc_2(
	clk,
	a,
	b,
	c,
	hold
);


input wire	clk;
input wire	[5:0] a;
input wire	[5:0] b;
input wire	[5:0] c;
output reg	hold;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_0 = 1;
assign	SYNTHESIZED_WIRE_7 = 1;




comp_6b	b2v_inst(
	.bus1(a),
	.bus2(c),
	.equal(SYNTHESIZED_WIRE_6));


always@(posedge SYNTHESIZED_WIRE_3 or negedge SYNTHESIZED_WIRE_7 or negedge SYNTHESIZED_WIRE_0)
begin
if (!SYNTHESIZED_WIRE_7)
	begin
	hold <= 0;
	end
else
if (!SYNTHESIZED_WIRE_0)
	begin
	hold <= 1;
	end
else
if (SYNTHESIZED_WIRE_7)
	begin
	hold <= SYNTHESIZED_WIRE_2;
	end
end


comp_6b	b2v_inst2(
	.bus1(c),
	.bus2(b),
	.equal(SYNTHESIZED_WIRE_5));

assign	SYNTHESIZED_WIRE_3 =  ~clk;



assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6;


endmodule
