class driver extends uvm_driver #(seq_item);
  `uvm_component_utils(driver)


  virtual RISC_intf driver_intf ;

  
  
 // Constructor  
  function new(string name = "driver" ,uvm_component parent);
    super.new(name,parent);
  endfunction :new
 


  
 // Build Phase 
  function void build_phase(uvm_phase phase);  
    super.build_phase(phase);
    if(!(uvm_config_db #(virtual intf)::get(this,"*","risc_intf",driver_intf))) 
   `uvm_error(get_type_name(),"Can't  get virtual interface from config_db  inside Driver class")   
      
      
  endfunction :build_phase 





     
 // Run Phase 
  task run_phase (uvm_phase phase);   
    super.run_phase(phase);  
         forever begin      
           driver_item = seq_item::type_id::create("driver_item");     
           seq_item_port.get_next_item(driver_item) ;
           drive(driver_item) ;
           seq_item_port.item_done() ;    
         end   
  endtask : run_phase 


      
 // drive task 
      task drive (seq_item RISC_item) ;
        @(posedge driver_intf.clk) ;
		 driver_intf.rst  <= RISC_item.reset  ;
	     driver_intf.INST <= RISC_item.InstrF ;
         driver_intf.check_end_ofseq <=RISC_item.check_end_ofseq;
      endtask : drive
     

endclass