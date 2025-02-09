class monitor extends uvm_monitor ;
  `uvm_component_utils(monitor)


    // TLM Handelers  
  virtual RISC_intf monitor_intf ;
  uvm_analysis_port #(seq_item) monitor_ap;
  seq_item monitor_item;

  // Constructor 
  function new(string name = "monitor" ,uvm_component parent);
    super.new(name,parent);
  endfunction :new



  // Build Phase 
  function void build_phase(uvm_phase phase);
    if(!uvm_config_db #(virtual intf)::get(this, "*","risc_intf", monitor_intf))
      `uvm_fatal("MONITOR", "Can't to get Interface In Monitor");   
    monitor_ap  = new("monitor_ap",this);
  endfunction : build_phase




  // Run Phase 
  task  run_phase(uvm_phase phase);
    super.run_phase(phase);
	
    forever begin 
         monitor_item = seq_item::type_id::create("monitor_item");	 
         @(posedge monitor_intf.clk) ; 	
         monitor_item.rst                 = monitor_intf.rst      ;
         monitor_item.INST                = monitor_intf.INST     ;
         monitor_item.check_end_ofseq     = monitor_intf.check_end_ofseq     ;

      #1 ;
         monitor_ap.write(monitor_item) ;
    end 
    
  endtask : run_phase  


endclass :monitor