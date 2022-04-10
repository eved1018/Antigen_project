import os, sys
import requests
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

DRIVER_PATH = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/eppic/docking/chromedriver") #fix path



chrome_options = Options()
chrome_options.add_argument("--headless")
chrome_options.add_argument("--disable-gpu")
folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_data/newUnbound_pdbs/37_revised_unbound")
for file_trying_path in folder.iterdir():

    browser = webdriver.Chrome(executable_path=DRIVER_PATH,
                                    options=chrome_options)
    site = "http://sppider.cchmc.org/"
    browser.get(site)

    email_input = browser.find_element_by_name("EMail")
    email_input.send_keys("sppider37@gmail.com")
    browser.execute_script("window.scrollTo(0, document.body.scrollHeight);")


    file_input = browser.find_element_by_name("PDBFileName")
    file_input.send_keys(str(file_trying_path))
    change_pdb_format = browser.find_element_by_name("BFgradient")
    change_pdb_format.send_keys("Regression")

    browser.find_element_by_css_selector("#content > p > input[type=Submit]:nth-child(1)").click()
