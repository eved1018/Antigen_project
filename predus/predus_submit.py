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


folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/bound_data/bound_pdbs") #fix path

for file in folder.iterdir():
    protein_name = file.name[:4]
    
    browser = webdriver.Chrome(executable_path=DRIVER_PATH,
                                options=chrome_options)
    site = "https://bhapp.c2b2.columbia.edu/PredUs/index_omega.html"
    browser.get(site)

    #part 1

    #upload file
    file_input = browser.find_element_by_id("file")
    file_input.send_keys(str(file))

    #input email
    email_input = browser.find_element_by_id("email1")
    email_input.send_keys("mcarrol2@mail.yu.edu")

    #submit

    submit = browser.find_element_by_css_selector("#structure > form > div > p:nth-child(6) > input:nth-child(2)")
    submit.click()

    time.sleep(5)

    #part 2

    #choose chain
    click_chain = browser.find_element_by_css_selector("#chainlist > input[type=checkbox]")
    click_chain.click()


    #submit part 2

    submit_part_2 = browser.find_element_by_id("submit")
    submit_part_2.click()

    #part 3
    time.sleep(5)
    link_text = browser.current_url

    job_id = str(link_text.strip().split("=")[1])

    print(job_id)
    browser.save_screenshot("screenshot.png")

    with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/predus/bound_job_ids/{protein_name}_job_id_bound", "a") as outfile:
        outfile.write(job_id)





folder_ids = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/predus/bound_job_ids")
for id in folder_ids.iterdir():
    protein_name = id.name.strip().split("_")[0]
    with open (id) as infile:
        job_id = infile.read()
        url_txt = f"https://bhapp.c2b2.columbia.edu/PredUs/data/job_data/{job_id}/PD2.1l3w_A.comb.pdb"
        r_txt = requests.get(url_txt, allow_redirects=True)
        open(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/predus/bound_result_pdbs/{protein_name}_predus_pdb", 'wb').write(r_txt.content)




