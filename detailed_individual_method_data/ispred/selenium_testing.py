#submit all jobs at once? download later?
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


DRIVER_PATH = Path("/Users/moshe/Desktop/Research_Antigen/6 Column Folder Annotated/Resources/chromedriver") #fix path

chrome_options = Options()
chrome_options.add_argument("--headless")
chrome_options.add_argument("--disable-gpu")


folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/antigen_complexed/antigen_pdbs") #fix path
for file_trying_path in folder.iterdir():
    antigen_chain = file_trying_path.name[-5:-4]
    protein_name = file_trying_path.name[-10:-6]
    #change for bound vs unbound

    browser = webdriver.Chrome(executable_path=DRIVER_PATH,
                                options=chrome_options)
    site = "https://ispred4.biocomp.unibo.it/ispred"
    browser.get(site)
    html = browser.page_source
    file_input = browser.find_element_by_id("subtab_structure")
    file_input.send_keys(str(file_trying_path))
    chain_name = browser.find_element_by_id("subtab_ispred_chain")
    chain_name.send_keys(antigen_chain)
    chain_name.submit()

    browser.implicitly_wait(20)


    # selector = "/html/body/div[3]/div[1]/div[2]/div[3]/div[2]"
    # search = browser.find_element_by_xpath("/html/body/div[3]/div[1]/div[2]/div[3]/div[2]")


    # browser.implicitly_wait(20)

    html = browser.page_source
    with open("/Users/moshe/Desktop/Research_Antigen/ispred/html_test_1.txt", 'w') as f: #fix path
        f.write(html)


  #consider splitting code into 2 parts - submit all jobs first, download html w/correct path and protein name
  #a day later, download the rest


    with open("/Users/moshe/Desktop/Research_Antigen/ispred/html_test_1.txt") as file: #fix path, might f string for prtoein name
        for line in file:
            if "job_summary?jobid=" in line:
                line_new = line.split("=")[3]
                job_id = line_new[:36]
    print(job_id)
    time.sleep(30) #give it time to run

    os.mkdir(f"/Users/moshe/Desktop/Research_Antigen/ispred/{protein_name}") #fix path, might want to move that up and put the html inside it
    url_txt = f"https://ispred4.biocomp.unibo.it/ispred/default/downloadjob?jobid={job_id}"
    r_txt = requests.get(url_txt, allow_redirects=True)
    open(f"/Users/moshe/Desktop/Research_Antigen/ispred/{protein_name}/{protein_name}_download_txt_test_1.txt", 'wb').write(r_txt.content) #fix path

    url_pdb = f"https://ispred4.biocomp.unibo.it/ispred/static/jobs/{job_id}/ispred_download.pdb"
    r_pdb = requests.get(url_pdb, allow_redirects=True)
    open(f"/Users/moshe/Desktop/Research_Antigen/ispred/{protein_name}/{protein_name}_download_pdb_test_1.txt", 'wb').write(r_pdb.content) #fix path