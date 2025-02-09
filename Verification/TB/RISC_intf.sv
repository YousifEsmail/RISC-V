interface RISC_intf(input logic clk);
    
    
    import risc_pkg::* ;

    logic   rst ;
    logic   [InstWidth-1:0] INST;

    
endinterface //RISC_intf