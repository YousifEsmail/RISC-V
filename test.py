## Define the RegEx
import re
INST_Regex=re.compile(r'\t(0x(.*))\t')
## Read files 
F_in = open("assembly.txt", "r")
F_out = open("INST_HEX.txt", "w")
## Match

for x in F_in:
  print(x)
  INST = INST_Regex.search(x)
  print('INST is ' +INST.group(2))
  INST_str=INST.group(2)
  ## Divide to a bytes and reverse 
  F_out.write(INST_str[6]+INST_str[7]+'\n')
  F_out.write(INST_str[4]+INST_str[5]+'\n')
  F_out.write(INST_str[2]+INST_str[3]+'\n')
  F_out.write(INST_str[0]+INST_str[1]+'\n')


## Output file 

F_out.close()


##import os 
##os.system("vlog *.v")
##os.system('vsim  RISC_V_TB -do "run -all"  ' )
##exit()
### WEB Script ###

## Imports 
import time 
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC 
## Options settings 
options = webdriver.ChromeOptions() ;
prefs = {"download.default_directory" : "E:\EECE\POST_GRAD\RISC_V\RTL"};  ## Set the Download Directory 
options.add_experimental_option("prefs",prefs);


br = webdriver.Chrome(options);

## Go to the Website 
br.get('https://www.cs.cornell.edu/courses/cs3410/2019sp/riscv/interpreter/')

## Open Assembly Code File 
code_in = open("code.s", "r")

br.implicitly_wait(5)
## write Code 
dowload_reg=br.find_element(By.ID,'code')
dowload_reg.click()
dowload_reg.send_keys(code_in)
time.sleep(2)
## RUN
dowload_reg=br.find_element(By.ID,'run')
dowload_reg.click()
time.sleep(5)
# Download Reg_File
dowload_reg=br.find_element(By.ID,'register-download')
time.sleep(2)
dowload_reg.click()
time.sleep(5)
br.quit()
## Model Sim Script 
import os 
os.system("vlog *.v")
os.system('vsim  RISC_V_TB -do "run -all"  ' )

### Comparing op Files 
f1 = open("Regfile_out.txt")
next(f1)
 ## Skipping the First Line Cuz the bug of starting wierd Symbol
f1_l=f1.readlines()
f2 = open("registers.txt")
next(f2)
f2_l=f2.readlines()

if(f1_l==f2_l):
  print("Sucssess")
else:
  print("Fail")


