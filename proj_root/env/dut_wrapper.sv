`include "dut.v"
module dut_wrapper(interface dut_if);
	blk_ram blk_ram(
		.clk		(dut_if.clk),
		.rst		(dut_if.reset),
		.en			(dut_if.bram_en),
		.wen		(dut_if.bram_wen),
		.addr		(dut_if.bram_addr),
		.datai	(dut_if.bram_datai),
		.datao	(dut_if.bram_datao)
	);
endmodule
