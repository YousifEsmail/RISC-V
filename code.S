
    ##AddI x2 , x0,   -4
  ##AddI x3 , x0,   0x0000000C
  ##sh x2, +6(x3) # 
  ##sh x2, +8(x3) # 
  ##lb x4,+7(x3)
  ##lb x5,+6(x3)
  ##lbu x6,+7(x3)
  ##lbu x7,+6(x3)
  ##lh x8,+7(x3)
  ##lh x9,+6(x3)
  ##lhu x10,+7(x3)
  ##lhu x11,+6(x3)
  ##lw x11,+6(x3)
  
  LUI  x4 ,500
  AddI x2 , x0, 50
  AddI x1 , x0, 50

  auipc x5,300
 # jal x3,200

  slti x6,x2,20
  sltiu x7,x2,10
  sltiu x8,x2,60

  sltiu x9,x1,-50
  sltiu x10,x2,-50
##
  AddI x1 , x0,   1000  
  AddI x2 , x1,   2000  
  AddI x3 , x2,  -1000  
  AddI x4 , x3,  -2000  
  AddI x5 , x4,   1000  

  xori x2 , x1,  4  
  xori x3 , x2,  4  
  xori x4 , x3,  4  
  xori x5 , x4,  4  

  ori x2 , x1,  1  
  ori x3 , x2,  2  
  ori x4 , x3,  3  
  ori x5 , x4,  4  

  andi x2 , x1, 1 
  andi x3 , x2, 2  
  andi x4 , x3, 3  
  andi x5 , x4, 4

  SLLI x2 , x1, 1 
  SLLI x3 , x2, 1  
  SLLI x4 , x3, 1  
  SLLI x5 , x4, 1
 
  srli x2 , x1,  4  
  srli x3 , x2,  4  
  srli x4 , x3,  4  
  srli x5 , x4,  4  

  srai x3 , x2,  1  
##

  
  AddI x1 , x0,   1000  
  AddI x2 , x1,   2000  
  AddI x3 , x2,  -1000  
  AddI x4 , x3,  -2000  
  AddI x5 , x4,   1000  


  Add x1 , x0,   x6  
  Add x2 , x1,   x2  
  Add x3 , x2,  x3  
  Add x4 , x3,  x4  
  Add x5 , x4,   x5  

  sub x1 , x0, x1  
  sub x2 , x2, x1  
  sub x3 , x3, x1 
  sub x4 , x4, x1 
  sub x5 , x5, x1  

  AddI x1 , x0,   2
  AddI x2 , x1,   2000  
  AddI x3 , x2,  -1000  
  AddI x4 , x3,  -2000  
  AddI x5 , x4,   1000  

  sll x2 , x2, x1  
  sll x3 , x3, x1 
  sll x4 , x4, x1 
  sll x5 , x5, x1  


  AddI x1 , x0,   2


  slt x2 , x2, x1  
  slt x3 , x3, x1 
  slt x4 , x4, x1 
  slt x5 , x5, x1  


  sltu x6 , x2, x1  
  sltu x7 , x3, x1 
  sltu x8 , x4, x1 
  sltu x9 , x5, x1  
  
  AddI x1 , x0,   2
  AddI x2 , x1,   2000  
  AddI x3 , x2,  -1000  
  AddI x4 , x3,  -2000  
  AddI x5 , x4,   1000  

  xor x2 , x1,   x2  
  xor x3 , x2,  x3  
  xor x4 , x3,  x4  
  xor x5 , x4,   x5  


  or x2 , x1,   x2  
  or x3 , x2,  x3  
  or x4 , x3,  x4  
  or x5 , x4,   x5 

  
  and x2 , x1,   x2  
  and x3 , x2,  x3  
  and x4 , x3,  x4  
  and x5 , x4,   x5  
 

  AddI x1 , x0,   2
  AddI x2 , x1,   2000  
  AddI x3 , x2,  -1000  
  AddI x4 , x3,  -2000  
  AddI x5 , x4,   1000  

  
  srl x6 , x2, x1  
  srl x7 , x3, x1 
  srl x8 , x4, x1 
  srl x9 , x5, x1 

  sra x6 , x2, x1  
  sra x7 , x3, x1 
  sra x8 , x4, x1 
  sra x9 , x5, x1 
##

  NOP
  NOP
  NOP
  NOP
  NOP
  NOP
  NOP
  NOP
  NOP
  NOP

