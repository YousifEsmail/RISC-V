class scoreboard extends uvm_scoreboard ;
  `uvm_component_utils(scoreboard)
  
  
  uvm_analysis_imp #(seq_item, scoreboard) sb_mon_port; // Connect Monitor to scoreboard


  
  // Constructor
  function new (string name = "scoreboard", uvm_component parent);
    super.new(name, parent);
    sb_mon_port = new ("sb_mon_port" ,this);
  endfunction : new




  function void build_phase(uvm_phase phase);
    super.build_phase(phase) ;   
    // To be Implemented
  endfunction : build_phase


task run_phase(uvm_phase phase);
    super.run_phase(phase);
endtask
  


function void write(seq_item t) ;  



endfunction

function void compare (seq_item actual_seq , predected_seq) ;

endfunction

endclass