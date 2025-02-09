import risc_pkg ::*;


class seq_item extends uvm_sequence_item ; 
	 
     // Constructor
     function new (string name = "risc_seq_item") ;
         super.new(name) ;
     endfunction		 

    //inputs
    rand logic rst;
    rand bit [InstWidth-1:0] INST;
    // check bit on its assertion DPI Checks in Scoreboard
    bit     check_end_ofseq ; 

    //============== Constraints to be added =================


    //==================== Functions ==============
    function void Reset();
      INST=32'b0  ;
      check_end_ofseq=1'b0;  
    endfunction

    function void Assert_check_end_ofseq();
      check_end_ofseq=1'b1;  
    endfunction


endclass