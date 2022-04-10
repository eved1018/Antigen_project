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


DRIVER_PATH = Path("/Users/moshe/Desktop/Research_Antigen/docking/chromedriver") #fix path

chrome_options = Options()
chrome_options.add_argument("--headless")
chrome_options.add_argument("--disable-gpu")


#submit protein

folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_pdbs")
for file in folder.iterdir():
    protein = file.name[12:25]





    browser = webdriver.Chrome(executable_path=DRIVER_PATH,
                                    options=chrome_options)
    site = "https://zdock.umassmed.edu/"
    browser.get(site)

    #ddelement= Select(browser.find_element_by_css_selector("body > center > form > div > table:nth-child(1) > tbody > tr > td:nth-child(2) > select"))


    #protein 1 input pdb
    sel = Select(browser.find_element_by_xpath("/html/body/center/form/div/table[1]/tbody/tr/td[2]/select"))
    sel.select_by_visible_text("PDB File")
    time.sleep(0.8)

    file_input = browser.find_element_by_id("file1")

    file_input.send_keys(str(file))


    #protein 2 input pdb

    sel_2 = Select(browser.find_element_by_xpath("/html/body/center/form/div/table[2]/tbody/tr/td[2]/select"))
    sel_2.select_by_visible_text("PDB File")
    time.sleep(0.8)

    file_input_2 = browser.find_element_by_id("file2")

    file_input_2.send_keys("/Users/moshe/Downloads/2VIR.pdb")


    #input email
    email = browser.find_element_by_css_selector("body > center > form > div > table:nth-child(6) > tbody > tr > td:nth-child(2) > input[type=text]")
    email.send_keys("mcarrol2@mail.yu.edu")

    #hit box -- skip residue selection

    skip = browser.find_element_by_css_selector("body > center > form > div > table:nth-child(8) > tbody > tr:nth-child(3) > td:nth-child(2) > input[type=checkbox]")
    skip.click()

    #submit
    submit = browser.find_element_by_css_selector("body > center > form > input")
    submit.click()

    time.sleep(5)

    browser.save_screenshot(f"/Users/moshe/Desktop/Research_Antigen/docking/screenshots/{protein}.png")




