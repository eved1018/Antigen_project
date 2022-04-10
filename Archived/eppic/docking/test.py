import os, sys
import ssl
from pathlib import Path
import requests
import time
import shutil
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


DRIVER_PATH = Path("/Users/moshe/Desktop/Research_Antigen/docking/chromedriver")

chrome_options = Options()
chrome_options.add_argument("--headless")
chrome_options.add_argument("--disable-gpu") 

#submit protein
with open ("/Users/moshe/Desktop/Research_Antigen/docking/zdock.txt") as infile:
    for line in infile:
        link = line.strip()

        browser = webdriver.Chrome(executable_path=DRIVER_PATH,
                                        options=chrome_options)

        site = f"{link}"
        browser.get(site)

        browser.maximize_window()
        htmlElem = browser.find_element_by_tag_name('html')
        htmlElem.send_keys(Keys.END)

        time.sleep(5)
        text = (browser.find_element_by_css_selector("body > center > center").text)
        text_narrowed = text.strip().split("Input receptor: ")[1]
        text_super_narrowed = text_narrowed.strip().split("Input ligand:")[0]
        input_protein_name = text_super_narrowed.strip()[:25]
        os.mkdir(f"/Users/moshe/Desktop/Research_Antigen/docking/zdocked_pdbs/{input_protein_name}")
        new_folder = f"/Users/moshe/Desktop/Research_Antigen/docking/zdocked_pdbs/{input_protein_name}"

        time.sleep(5)
        file_input = browser.find_element_by_css_selector("body > center > center > table > tbody > tr > td:nth-child(1) > div > a:nth-child(10)")
        file_input.click()
        print(input_protein_name, link)

        time.sleep(10)

        folder = Path("/Users/moshe/Desktop/Research_Antigen/docking")
        for file in folder.iterdir():
            if "top_preds" in (file.name):
                
                shutil.move(str(file), str(new_folder))
            
                

        browser.save_screenshot("screenshot.png")
        time.sleep(4)