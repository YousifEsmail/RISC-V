module Hazard_Unit #(
    parameter   Address_Width ='d5

) (
    input      wire [Address_Width-1:0]                     i_RS1_D,
    input      wire [Address_Width-1:0]                     i_RS2_D,
    
    input      wire [Address_Width-1:0]                     i_RS1_E,
    input      wire [Address_Width-1:0]                     i_RS2_E,
    input      wire [Address_Width-1:0]                     i_Rd_E,
    input      wire      [1:0]                              i_ResultSec_E,
    input      wire                                         i_PCSrcE,

    input      wire [Address_Width-1:0]                     i_Rd_M,
    input      wire                                         i_RegWrite_M,

    input      wire [Address_Width-1:0]                     i_Rd_W,
    input      wire                                         i_RegWrite_W,

    output     wire                                         o_Stall_F,
    output     wire                                         o_Stall_D,

    output     wire                                         o_Flush_D,
    output     wire                                         o_Flush_E,

    output     reg      [1:0]                               o_ForwardA_E,
    output     reg      [1:0]                               o_ForwardB_E




);


// Forwarding_A 
wire Forward_Cond_M_A;
wire Forward_Cond_W_A;
//assign Forward_Cond_M_A=((&(~(i_RS1_E^i_Rd_M))) & i_RegWrite_M & (&(i_RS1_E^5'b0)));
assign Forward_Cond_M_A=(((i_RS1_E==i_Rd_M)) & i_RegWrite_M & ((i_RS1_E!=5'b0)));

//assign Forward_Cond_W_A=((&(~(i_RS1_E^i_Rd_W))) & i_RegWrite_W & (&(i_RS1_E^5'b0)));
assign Forward_Cond_W_A=(((i_RS1_E==i_Rd_W)) & i_RegWrite_W & ((i_RS1_E!=5'b0)));

always @(*)
begin
  if (Forward_Cond_M_A) 
  begin
    o_ForwardA_E=2'b10;
  end
  else if (Forward_Cond_W_A) 
  begin
    o_ForwardA_E=2'b01;
  end 
  else
  begin
    o_ForwardA_E=2'b00;
  end
end



// Forwarding_B
wire Forward_Cond_M_B;
wire Forward_Cond_W_B;
assign Forward_Cond_M_B=(((i_RS2_E==i_Rd_M)) & i_RegWrite_M & ((i_RS2_E!=5'b0)));
assign Forward_Cond_W_B=(((i_RS2_E==i_Rd_W)) & i_RegWrite_W & ((i_RS2_E!=5'b0)));

//assign Forward_Cond_M_B=((&(~(i_RS2_E^i_Rd_M))) & i_RegWrite_M & (&(i_RS2_E^5'b0)));
//assign Forward_Cond_W_B=((&(~(i_RS2_E^i_Rd_W))) & i_RegWrite_W & (&(i_RS2_E^5'b0)));

always @(*)
begin
  if (Forward_Cond_M_B) 
  begin
    o_ForwardB_E=2'b10;
  end
  else if (Forward_Cond_W_B) 
  begin
    o_ForwardB_E=2'b01;
  end 
  else
  begin
    o_ForwardB_E=2'b00;
  end
end


// Stalling 
wire lw_Stall;



assign lw_Stall =( i_ResultSec_E[0]   & ((&(~(i_RS1_D^i_Rd_E))) | (&(~(i_RS2_D^i_Rd_E))) ));
assign o_Stall_F= !(lw_Stall);
assign o_Stall_D= !(lw_Stall);


//Flushing
assign o_Flush_D = i_PCSrcE; 
assign o_Flush_E = i_PCSrcE | lw_Stall;


endmodule