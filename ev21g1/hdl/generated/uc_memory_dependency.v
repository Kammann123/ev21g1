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
// CREATED		"Thu Jun 17 00:19:24 2021"

module uc_memory_dependency(
	reset,
	clk,
	mi_decode,
	mi_operand,
	hold
);


input wire	reset;
input wire	clk;
input wire	[32:0] mi_decode;
input wire	[32:0] mi_operand;
output reg	hold;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_0 = 1;
assign	SYNTHESIZED_WIRE_3 = 1;



assign	SYNTHESIZED_WIRE_2 = mi_operand[21] & mi_decode[20];


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

assign	SYNTHESIZED_WIRE_1 =  ~reset;




endmodule
