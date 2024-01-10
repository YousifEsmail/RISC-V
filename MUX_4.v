module MUX_4 #(
    parameter IN_WIDTH='d32
) (
    input wire              [1:0]              sel,
    input wire      signed  [IN_WIDTH-1:0] IN_1,
    input wire      signed  [IN_WIDTH-1:0] IN_2,
    input wire      signed  [IN_WIDTH-1:0] IN_3,
    input wire      signed  [IN_WIDTH-1:0] IN_4,
    output reg      signed  [IN_WIDTH-1:0] Out   
);


always @(*) begin
    case (sel)
        2'b00:
        begin
           Out= IN_1;
        end
        2'b01:
        begin
           Out= IN_2;            
        end
        2'b10:
        begin
           Out= IN_3;           
        end
        2'b11:
        begin
           Out= IN_4;            
        end
         
        default:
        begin
        Out= IN_1;

        end 
    endcase
    
end
    
endmodule