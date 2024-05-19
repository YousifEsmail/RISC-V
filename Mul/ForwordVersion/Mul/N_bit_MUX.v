module N_bit_MUX #(
    parameter   InWidth ='d32

) (
    input   wire [InWidth-1:0] IN_True ,
    input   wire [InWidth-1:0] IN_False,
    input   wire sel,
    output  wire [InWidth-1:0]  Out

);
    
assign Out =sel?IN_True:IN_False;

endmodule