/******************************************************************************
 * (C) Copyright 2019 AGH UST All Rights Reserved
 *
 * MODULE:    mtm_Alu
 * PROJECT:   PPCU_VLSI
 * AUTHORS:
 * DATE:
 * ------------------------------------------------------------------------------
 * The ALU should operate as described in the mtmAlu_test_top module.
 * It should consist of three modules connected together:
 *   mtm_Alu_deserializer
 *   mtm_Alu_core
 *   mtm_Alu_serializer
 * The ALU should use posedge active clock and synchronous reset active LOW.
 *
 *******************************************************************************/

module mtm_Alu (
    input  wire clk,   // posedge active clock
    input  wire rst_n, // synchronous reset active low
    input  wire sin,   // serial data input
    output wire sout   // serial data output
);

wire [71:0] pout1;
wire [6:0] err_flags;
wire data_ready1, data_ready2;
wire [32:0] result;
wire [7:0] CTL;



mtm_Alu_deserializer u_mtm_Alu_deserializer(
	.clk(clk),
	.rst_n(rst_n),
	.in(sin),
	.data_ready_in(data_ready2),
	.out(pout1),
	.data_ready_out(data_ready1),
	.err_flags(err_flags)
);

mtm_Alu_core u_mtm_Alu_core(
	.B({1'b0,pout1[71:40]}),
	.A({1'b0,pout1[39:8]}),
	.OP(pout1[6:4]),
	//.clk(clk),
	.rst_n(rst_n),
	.data_ready_in(data_ready1),
	.err_flags(err_flags),
	.data_ready_out(data_ready2),
	.C(result),
	.CTL(CTL)
);

mtm_Alu_serializer u_mtm_Alu_serializer(
	.clk(clk),
	.rst_n(rst_n),
	.in({result[31:0],CTL}),
	.data_ready(data_ready2),
	.out(sout)
);

endmodule
