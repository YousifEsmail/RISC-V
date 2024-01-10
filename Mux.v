module Mux#(
    parameter      InputWidth_1 = 'd16
) (
    input wire sel,
    input wire      signed [InputWidth_1-1:0] IN_1,
    input wire      signed [InputWidth_1-1:0] IN_2,
    output wire     signed  [InputWidth_1-1:0] Out 
);
    

assign Out=sel?IN_1:IN_2;

endmodule