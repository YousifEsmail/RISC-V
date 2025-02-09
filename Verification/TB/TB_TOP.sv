`timescale 1ns/1ns
`include "uvm_macros.svh"




module TB_TOP ();

   import uvm_pkg::*;
   import risc_pkg::* ;

bit clk;

RISC_intf risc_intf(clk);


// Clock Generation
initial begin 
    forever  #5 clk = ~clk;
end
  

RISCV_TOP u_RISCV_TOP(
    .rst        (risc_intf.rst        ),
    .clk        (clk        ),
    .Instr_F_in (risc_intf.INST )
);


endmodule