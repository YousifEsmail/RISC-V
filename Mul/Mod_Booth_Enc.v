module Mod_Booth_Enc #(
    parameter   NumBit='d32,
                Radix='d2,
                NumPartialProducts=NumBit/Radix

) (
    input wire [NumBit-1:0] Oprand,
    output reg [NumPartialProducts-1:0] E0,
    output reg [NumPartialProducts-1:0] E1,
    output reg [NumPartialProducts-1:0] E2
    
);


/* 5 possabilites ==> Needs  3 Recoding bits
E2E1E0  ====> E0 +/-, E1 SINGLE/DOUBLE, E2 NOTZER0
0x      ====> E2=1 ,E1=0,E0=0  ===>  0_0_0 
+x      ====> E2=1 ,E1=0,E0=0  ===>  1_0_0
+2x     ====> E2=1 ,E1=1,E0=0  ===>  1_1_0     
-x      ====> E2=1 ,E1=0,E0=1  ===>  1_0_1 
-2x     ====> E2=1 ,E1=1,E0=1  ===>  1_1_1      
*/


always @(*)
begin
    case ({Oprand[1],Oprand[0],1'b0})
        'b000:
        begin
        //0x      ====> E2=1 ,E1=0,E0=0  ===>  0_0_0 
           E0[0]=1'b0;
           E1[0]=1'b0;
           E2[0]=1'b0; 
        end
        'b001:
        begin
        //+x      ====> E2=1 ,E1=0,E0=0  ===>  1_0_0 
           E0[0]=1'b0;
           E1[0]=1'b0;
           E2[0]=1'b1; 
        end 
        'b010:
        begin
        //+x      ====> E2=1 ,E1=0,E0=0  ===>  1_0_0 
           E0[0]=1'b0;
           E1[0]=1'b0;
           E2[0]=1'b1; 
        end 
        'b011:
        begin
        //+2x     ====> E2=1 ,E1=1,E0=0  ===>  1_1_0      
           E0[0]=1'b0;
           E1[0]=1'b1;
           E2[0]=1'b1; 
        end 
        'b100:
        begin
        //-2x     ====> E2=1 ,E1=1,E0=1  ===>  1_1_1      
           E0[0]=1'b1;
           E1[0]=1'b1;
           E2[0]=1'b1; 
        end 
        'b101:
        begin
        //-x      ====> E2=1 ,E1=0,E0=1  ===>  1_0_1       
           E0[0]=1'b1;
           E1[0]=1'b0;
           E2[0]=1'b1; 
        end 
        'b110:
        begin
        //-x      ====> E2=1 ,E1=0,E0=1  ===>  1_0_1       
           E0[0]=1'b1;
           E1[0]=1'b0;
           E2[0]=1'b1; 
        end 
        'b111:
        begin
        //0x      ====> E2=1 ,E1=0,E0=0  ===>  0_0_0 
            E0[0]=1'b0;
            E1[0]=1'b0;
            E2[0]=1'b0; 
         end 
         
        default:
        begin
            //0x      ====> E2=1 ,E1=0,E0=0  ===>  0_0_0 
                E0[0]=1'b0;
                E1[0]=1'b0;
                E2[0]=1'b0; 
             end 
             
    endcase


end



integer i;

always @(*)
begin
    for (i =2 ;i<=NumPartialProducts ;i=i+1 ) 
begin
    case ({Oprand[2*(i-1)+'d1],Oprand[2*(i-1)],Oprand[2*(i-1)-'d1]})
        'b000:
        begin
        //0x      ====> E2=1 ,E1=0,E0=0  ===>  0_0_0 
           E0[i-'d1]=1'b0;
           E1[i-'d1]=1'b0;
           E2[i-'d1]=1'b0; 
        end
        'b001:
        begin
        //+x      ====> E2=1 ,E1=0,E0=0  ===>  1_0_0 
           E0[i-'d1]=1'b0;
           E1[i-'d1]=1'b0;
           E2[i-'d1]=1'b1; 
        end 
        'b010:
        begin
        //+x      ====> E2=1 ,E1=0,E0=0  ===>  1_0_0 
           E0[i-'d1]=1'b0;
           E1[i-'d1]=1'b0;
           E2[i-'d1]=1'b1; 
        end 
        'b011:
        begin
        //+2x     ====> E2=1 ,E1=1,E0=0  ===>  1_1_0      
           E0[i-'d1]=1'b0;
           E1[i-'d1]=1'b1;
           E2[i-'d1]=1'b1; 
        end 
        'b100:
        begin
        //-2x     ====> E2=1 ,E1=1,E0=1  ===>  1_1_1      
           E0[i-'d1]=1'b1;
           E1[i-'d1]=1'b1;
           E2[i-'d1]=1'b1; 
        end 
        'b101:
        begin
        //-x      ====> E2=1 ,E1=0,E0=1  ===>  1_0_1       
           E0[i-'d1]=1'b1;
           E1[i-'d1]=1'b0;
           E2[i-'d1]=1'b1; 
        end 
        'b110:
        begin
        //-x      ====> E2=1 ,E1=0,E0=1  ===>  1_0_1       
           E0[i-'d1]=1'b1;
           E1[i-'d1]=1'b0;
           E2[i-'d1]=1'b1; 
        end 
        'b111:
        begin
        //0x      ====> E2=1 ,E1=0,E0=0  ===>  0_0_0 
            E0[i-'d1]=1'b0;
            E1[i-'d1]=1'b0;
            E2[i-'d1]=1'b0; 
         end 
         
        default:
        begin
        //0x      ====> E2=1 ,E1=0,E0=0  ===>  0_0_0 
            E0[i-'d1]=1'b0;
            E1[i-'d1]=1'b0;
            E2[i-'d1]=1'b0; 
         end 
             
    endcase
end
end
    
endmodule