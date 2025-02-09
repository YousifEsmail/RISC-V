class env extends uvm_env;
    `uvm_component_utils(env)

  // Constructor 
    function new(string name = "env" ,uvm_component parent);
         super.new(name,parent); 
    endfunction : new


    // Componant Handelers
    agent risc_agent ;
    scoreboard risc_scoreboard ;
    coverage risc_coverage ;


  // Build Phase 
    function void build_phase(uvm_phase phase);
     super.build_phase(phase); 
      
      risc_agent = agent::type_id::create("risc_agent",this);  
      risc_scoreboard = scoreboard::type_id::create("risc_scoreboard",this);  
      risc_coverage = coverage::type_id::create("risc_coverage",this);     
           
      // RAL To be Built
      //
      //
      //
    endfunction :build_phase    
              


    // Connect Phase 
        function void connect_phase (uvm_phase phase);
          super.connect_phase(phase); 
          //Connect Monoitor Analysis Ports (Scoreboard,Coverage)
          //Scoreboard
          //       
          //Connect Monoitor Analysis Ports (Scoreboard,Coverage)
          // Coverage
          //        
      endfunction :connect_phase
    
    
     // Run Phase 
        task run_phase(uvm_phase phase);
          super.run_phase(phase);
        endtask : run_phase


endclass :env