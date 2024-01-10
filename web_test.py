## Imports 
import time 
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC 
## Options settings 
options = webdriver.ChromeOptions() ;

prefs = {"download.default_directory" : "E:\EECE\POST_GRAD\RISC_V\REG_FILE_Download"};  ## Set the Download Directory 
options.add_experimental_option("prefs",prefs);



br = webdriver.Chrome(options);
## Go to the Website 
br.get('https://www.cs.cornell.edu/courses/cs3410/2019sp/riscv/interpreter/')
print("WEB")
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
time.sleep(2)
# Download Reg_File
dowload_reg=br.find_element(By.ID,'register-download')
time.sleep(2)
dowload_reg.click()
time.sleep(5)


##Download_reg=br.find_element(By.ID,"suggestion-search")

