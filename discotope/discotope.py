import os, sys

from pathlib import Path
import requests
import time
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.keys import Keys
from selenium.webdriver import ActionChains
from selenium.webdriver.common.action_chains import ActionChains
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.support.ui import Select


DRIVER_PATH = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/eppic/docking/chromedriver") #fix path

chrome_options = Options()
chrome_options.add_argument("--headless")
chrome_options.add_argument("--disable-gpu")


#submit protein

folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_pdbs")






browser = webdriver.Chrome(executable_path=DRIVER_PATH,
                                options=chrome_options)
site = "https://services.healthtech.dtu.dk/service.php?DiscoTope-2.0/"
browser.get(site)


# cookies= browser.find_element_by_id("cookiescript_accept")
# cookies.send_keys()
browser.execute_script("window.scrollTo(0, 800)") 
# test = browser.find_element_by_xpath("/html/body/form/ol/li[3]/p[1]/input")
file_input = browser.find_element_by_name("inputfile")
print(file_input)
# file_input.send_keys("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/bound_data/bound_pdbs/1A2Y.A.pdb")


browser.save_screenshot("screenshot.png")


