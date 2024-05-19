module Two_sComp #(
    parameter NumBits='d32
) (
    input   wire signed [NumBits-1:0] In,
    output  wire signed [NumBits-1:0] Out
);
    
assign Out= ~In+1'b1;

endmodule