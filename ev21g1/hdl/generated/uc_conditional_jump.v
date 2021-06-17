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
// CREATED		"Thu Jun 17 06:41:36 2021"

module uc_conditional_jump(
	jump,
	clk,
	reset,
	hold_jump_fetch,
	hold_jump_deco
);


input wire	jump;
input wire	clk;
input wire	reset;
output wire	hold_jump_fetch;
output wire	hold_jump_deco;

wire	SYNTHESIZED_WIRE_21;
reg	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
reg	TFFE_inst12;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_8;
reg	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
reg	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_20;

assign	SYNTHESIZED_WIRE_2 = 1;
assign	SYNTHESIZED_WIRE_3 = 1;
assign	SYNTHESIZED_WIRE_25 = 1;
assign	SYNTHESIZED_WIRE_8 = 1;
assign	SYNTHESIZED_WIRE_11 = 1;
assign	SYNTHESIZED_WIRE_12 = 1;
assign	SYNTHESIZED_WIRE_29 = 1;
assign	SYNTHESIZED_WIRE_20 = 1;




always@(posedge SYNTHESIZED_WIRE_23 or negedge SYNTHESIZED_WIRE_21 or negedge SYNTHESIZED_WIRE_3)
begin
if (!SYNTHESIZED_WIRE_21)
	begin
	TFFE_inst12 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_3)
	begin
	TFFE_inst12 <= 1;
	end
else
if (SYNTHESIZED_WIRE_2)
	begin
	TFFE_inst12 <= TFFE_inst12 ^ SYNTHESIZED_WIRE_22;
	end
end




assign	SYNTHESIZED_WIRE_21 =  ~reset;

assign	SYNTHESIZED_WIRE_23 = jump & clk;

assign	hold_jump_fetch = TFFE_inst12 ^ SYNTHESIZED_WIRE_22;


always@(posedge SYNTHESIZED_WIRE_26 or negedge SYNTHESIZED_WIRE_24 or negedge SYNTHESIZED_WIRE_8)
begin
if (!SYNTHESIZED_WIRE_24)
	begin
	SYNTHESIZED_WIRE_27 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_8)
	begin
	SYNTHESIZED_WIRE_27 <= 1;
	end
else
if (SYNTHESIZED_WIRE_25)
	begin
	SYNTHESIZED_WIRE_27 <= SYNTHESIZED_WIRE_27 ^ SYNTHESIZED_WIRE_25;
	end
end


always@(posedge SYNTHESIZED_WIRE_26 or negedge SYNTHESIZED_WIRE_24 or negedge SYNTHESIZED_WIRE_12)
begin
if (!SYNTHESIZED_WIRE_24)
	begin
	SYNTHESIZED_WIRE_28 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_12)
	begin
	SYNTHESIZED_WIRE_28 <= 1;
	end
else
if (SYNTHESIZED_WIRE_11)
	begin
	SYNTHESIZED_WIRE_28 <= SYNTHESIZED_WIRE_28 ^ SYNTHESIZED_WIRE_27;
	end
end





assign	SYNTHESIZED_WIRE_24 =  ~SYNTHESIZED_WIRE_13;

assign	SYNTHESIZED_WIRE_26 = jump & SYNTHESIZED_WIRE_14;

assign	hold_jump_deco = SYNTHESIZED_WIRE_28 ^ SYNTHESIZED_WIRE_27;

assign	SYNTHESIZED_WIRE_14 =  ~clk;

assign	SYNTHESIZED_WIRE_13 = SYNTHESIZED_WIRE_15 | reset;

assign	SYNTHESIZED_WIRE_15 = SYNTHESIZED_WIRE_28 & SYNTHESIZED_WIRE_27;



always@(posedge SYNTHESIZED_WIRE_23 or negedge SYNTHESIZED_WIRE_21 or negedge SYNTHESIZED_WIRE_20)
begin
if (!SYNTHESIZED_WIRE_21)
	begin
	SYNTHESIZED_WIRE_22 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_20)
	begin
	SYNTHESIZED_WIRE_22 <= 1;
	end
else
if (SYNTHESIZED_WIRE_29)
	begin
	SYNTHESIZED_WIRE_22 <= SYNTHESIZED_WIRE_22 ^ SYNTHESIZED_WIRE_29;
	end
end


endmodule
