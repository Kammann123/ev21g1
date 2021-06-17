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
// CREATED		"Wed Jun 16 23:59:54 2021"

module uc_register_dependency(
	clk,
	reset,
	mi_execute,
	mi_operand,
	hold
);


input wire	clk;
input wire	reset;
input wire	[32:0] mi_execute;
input wire	[32:0] mi_operand;
output reg	hold;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_0 = 1;
assign	SYNTHESIZED_WIRE_3 = 1;




comp_6b	b2v_inst(
	.a(mi_operand[19:14]),
	.b(mi_execute[7:2]),
	.equal(SYNTHESIZED_WIRE_4));


always@(posedge clk or negedge SYNTHESIZED_WIRE_1 or negedge SYNTHESIZED_WIRE_0)
begin
if (!SYNTHESIZED_WIRE_1)
	begin
	hold <= 0;
	end
else
if (!SYNTHESIZED_WIRE_0)
	begin
	hold <= 1;
	end
else
if (SYNTHESIZED_WIRE_3)
	begin
	hold <= SYNTHESIZED_WIRE_2;
	end
end


comp_6b	b2v_inst2(
	.a(mi_operand[13:8]),
	.b(mi_execute[7:2]),
	.equal(SYNTHESIZED_WIRE_5));

assign	SYNTHESIZED_WIRE_1 =  ~reset;



assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_4 & mi_operand[30];

assign	SYNTHESIZED_WIRE_7 = mi_operand[31] & SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_2 = mi_execute[32] & SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_6 = SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_8;


endmodule
