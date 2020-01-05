`ifndef BLOCK_RAM_SEQUENCE_ITEM
`define BLOCK_RAM_SEQUENCE_ITEM
	import uvm_pkg::*;
	`include "uvm_macros.svh"
  class block_ram_sequence_item extends uvm_sequence_item;
		transaction_type								trans_type;
  	rand 	bit [`ADDR_WIDTH-1:0] 		trans_addr;
  	rand 	bit [`DATA_WIDTH-1:0] 		trans_datai;	
  				bit [`DATA_WIDTH-1:0] 		trans_datao;	

		`uvm_object_utils_begin(block_ram_sequence_item)
			`uvm_field_enum(transaction_type, trans_type, UVM_ALL_ON)
			`uvm_field_int(trans_addr, UVM_ALL_ON)
			`uvm_field_int(trans_datai, UVM_ALL_ON)
			`uvm_field_int(trans_datao, UVM_ALL_ON)
		`uvm_object_utils_end

		function new (string name = "block_ram_sequence_item");
			super.new(name);
		endfunction: new

	endclass: block_ram_sequence_item
`endif
