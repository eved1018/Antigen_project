# count = 0
# with open("/Users/moshe/Downloads/1a2y-1a2y.A.aln", "r+") as infile:
#     for line in infile:
#         if line.startswith("<repChain>A</repChain>") and count == 1:
#             print(line)
            
        
#         if line.startswith("<repChain>A</repChain>") and count == 0:
#             count = 1
# import requests

# from pathlib import Path      

# res = requests.get(f"https://www.eppic-web.org/ewui/ewui/dataDownload?type=xml&id=1a2y&withResInfo=t")
# res.raise_for_status()
# new_name = Path(f"//Users/moshe/Downloads/test_xml.txt")
# playFile = open(new_name, 'wb')
# for chunk in res.iter_content():
#     playFile.write(chunk)
            
# import xml.etree.ElementTree as ET
# import requests
# from pathlib import Path

# tree = ET.parse("/Users/moshe/Downloads/1a2y-1a2y.A.aln")
# root = tree.getroot()

# for i in root.findall("./residueInfos/pdbResidueNumber"): 
#     print(i.text)


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
import sys, os

DRIVER_PATH = Path("/Users/moshe/Desktop/Research_Antigen/docking/chromedriver") #fix path

chrome_options = Options()
chrome_options.add_argument("--headless")
chrome_options.add_argument("--disable-gpu")

folder = Path("/Users/moshe/Desktop/Research_Antigen/eppic/195_complexed_2VIR_pdbs_copy")
for file in folder.iterdir():
    time.sleep(5)
    protein = str(file.name)
    browser = webdriver.Chrome(executable_path=DRIVER_PATH,
                                options=chrome_options)
    site = "https://www.eppic-web.org/ewui/"
    browser.get(site)

    time.sleep(5)
    selection_input = browser.find_element_by_css_selector("#gwt-uid-2")
    selection_input.click()


    file_input = browser.find_element_by_class_name("GMFEK3REU")
    file_input.send_keys(str(file))
    time.sleep(1)
    # chain_name = browser.find_element_by_id("subtab_ispred_chain")
    # chain_name.send_keys(antigen_chain)
    email_input = browser.find_element_by_id("x-auto-9-input")
    email_input.send_keys("eppicweb2@gmail.com")
    time.sleep(1)
    id = browser.find_element_by_xpath("/html/body/div[2]/div/div/div[3]/div/div/div/div[3]/div/div[2]/div[2]/div[1]/div/div/div[2]/div/div/div[2]/div/table/tbody/tr[2]/td[2]/div/div/table/tbody/tr/td/div")
    id.click()

    time.sleep(20)
    job_id_hold = str(browser.current_url)
    job_id = job_id_hold.strip().split("/")[-1]
    browser.save_screenshot(f"/Users/moshe/Desktop/Research_Antigen/eppic/screenshots/{protein}_screenshot.png")
    print(protein)
    if int(len(job_id)) != int(30):
        print(str(file.name) + " problem!!!!!!!!!!!!")

    with open (f"/Users/moshe/Desktop/Research_Antigen/eppic/selenium_eppic_195_job_id_unbound/{protein}_eppic_job_id.txt", "w") as outfile:
        outfile.write(job_id)
    


