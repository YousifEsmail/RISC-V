import random

import os
import openpyxl
from openpyxl.styles import  Alignment

if os.path.exists("Result_out.txt"):
 os.remove("Result_out.txt")

if os.path.exists("Mul_Top_Wave.do"):
 os.remove("Mul_Top_Wave.do")

wb = openpyxl.load_workbook(r'testcases.xlsx')
center_aligned_text = Alignment(horizontal="center")
sheet = wb.active



with open('MUL_Transscript.do', 'r') as original_file:
  lines = original_file.readlines()

with open('Mul_Top_Wave_Initial.do', 'r') as initial_file:
  initial_lines = initial_file.readlines()

with open('Mul_Top_Wave.do', 'a') as generated_file:
  
  generated_file.writelines(initial_lines)
  
  for i in range(0,50):
    num1 = random.randint(65536,4294967296)
    bin_num1 = bin(num1)
    num2 = random.randint(65536,4294967296)
    bin_num2 = bin(num2)
    lines[1] = 'force -freeze sim:/MUL_Top/A '+ bin_num1[2:] +' 0\n'  
    lines[2] = 'force -freeze sim:/MUL_Top/B '+ bin_num2[2:] +' 0\n'  
    sheet['A{}'.format(i+2)].value = num1
    sheet['B{}'.format(i+2)].value = num2
    generated_file.writelines(lines[1:])


os.system("vlib work")
os.system("vlog *.v")
os.system('vsim MUL_Top -do "Mul_Top_Wave.do"')


with open('Result_out.txt', 'r') as file:
  lines = file.readlines()
  for i, line in enumerate(lines, start=1):
      # Write value to column D
      sheet[f'D{i+1}'] = int(line.strip())


# Save the workbook to a file
wb.save('testcases.xlsx')














