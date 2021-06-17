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
// CREATED		"Thu Jun 17 01:56:49 2021"

module uc_cjmp(
	clk,
	hold,
	cond_jmp,
	reset,
	condjmp_hold
);


input wire	clk;
input wire	hold;
input wire	cond_jmp;
input wire	reset;
output wire	condjmp_hold;

wire	ff_clk;
wire	ff_reset;
reg	q0;
reg	q1;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_8 = 1;




always@(posedge ff_clk or negedge ff_reset or negedge SYNTHESIZED_WIRE_8)
begin
if (!ff_reset)
	begin
	q0 <= 0;
	end
else
	begin
if (!SYNTHESIZED_WIRE_8)
	begin
	q0 <= 1;
	end
else
	begin
	q0 <= ~q0 & SYNTHESIZED_WIRE_8 | q0 & ~SYNTHESIZED_WIRE_8;
	end
	end
end


always@(posedge ff_clk or negedge ff_reset or negedge SYNTHESIZED_WIRE_8)
begin
if (!ff_reset)
	begin
	q1 <= 0;
	end
else
	begin
if (!SYNTHESIZED_WIRE_8)
	begin
	q1 <= 1;
	end
else
	begin
	q1 <= ~q1 & q0 | q1 & ~q0;
	end
	end
end

assign	SYNTHESIZED_WIRE_5 = SYNTHESIZED_WIRE_4 | reset;

assign	SYNTHESIZED_WIRE_6 =  ~clk;


assign	SYNTHESIZED_WIRE_4 = q0 & q1;

assign	condjmp_hold = q0 | q1;

assign	SYNTHESIZED_WIRE_7 =  ~hold;

assign	ff_reset =  ~SYNTHESIZED_WIRE_5;

assign	ff_clk = SYNTHESIZED_WIRE_6 & cond_jmp & SYNTHESIZED_WIRE_7;


endmodule
