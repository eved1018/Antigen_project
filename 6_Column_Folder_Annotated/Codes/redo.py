from pathlib import Path
import requests

from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.remote.switch_to import SwitchTo
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.chrome.options import Options

import pandas as pd 
from Bio import pairwise2
from Bio.Seq import Seq

fasta = "DAEFRHDSGYEVHHQKSELKNSISDYTEAEFVQLLKEIEKENVAATDDVLDVLLEHFVKITEHPDGTDLIYYPSDNRDDSPEGIVKEIKEWRAANGKPGFKQ"

def get_matching_proteins(fasta):
    
    site = f"""
    https://www.rcsb.org/search?request=%7B%22query%22%3A%7B%22type%22%3A%22group%22%2C%22logical_operator%22%3A%22and%22%2C%22nodes%22%3A%5B%7B%22type%22%3A%22group%22%2C%22logical_operator%22%3A%22and%22%2C%22nodes%22%3A%5B%7B%22type%22%3A%22group%22%2C%22logical_operator%22%3A%22and%22%2C%22nodes%22%3A%5B%7B%22type%22%3A%22terminal%22%2C%22service%22%3A%22text%22%2C%22parameters%22%3A%7B%22operator%22%3A%22equals%22%2C%22negation%22%3Afalse%2C%22value%22%3A1%2C%22attribute%22%3A%22rcsb_entry_info.polymer_entity_count_protein%22%7D%2C%22node_id%22%3A0%7D%5D%7D%5D%2C%22label%22%3A%22text%22%7D%2C%7B%22type%22%3A%22terminal%22%2C%22service%22%3A%22sequence%22%2C%22parameters%22%3A%7B%22evalue_cutoff%22%3A1000000%2C%22identity_cutoff%22%3A0.95%2C%22target%22%3A%22pdb_protein_sequence%22%2C%22value%22%3A%22
    {fasta}
    %22%7D%2C%22label%22%3A%22sequence%22%2C%22node_id%22%3A1%7D%5D%2C%22label%22%3A%22query-builder%22%7D%2C%22return_type%22%3A%22entry%22%2C%22request_options%22%3A%7B%22pager%22%3A%7B%22start%22%3A0%2C%22rows%22%3A25%7D%2C%22scoring_strategy%22%3A%22combined%22%2C%22sort%22%3A%5B%7B%22sort_by%22%3A%22score%22%2C%22direction%22%3A%22desc%22%7D%5D%7D%2C%22request_info%22%3A%7B%22src%22%3A%22ui%22%2C%22query_id%22%3A%2211b6fadb78ff21df33e109ae2ffebfd7%22%7D%7D""".replace("\n", "").replace(" ", "")

    chrome_options = Options()
    chrome_options.add_argument("--headless")
    chrome_options.add_argument("--disable-gpu")


    DRIVER_PATH = "/Users/moshe/Desktop/Research_Antigen/Resources/chromedriver"

    browser = webdriver.Chrome(executable_path=DRIVER_PATH,
                               options=chrome_options)

    browser.get(site)
    html = browser.page_source
    selector = "table.results-item-header>tr>td>h3>a"
    #element = SwitchTo.frame(WebDriverWait(browser, 10).until(
    #    EC.presence_of_element_located((By.CSS_SELECTOR, selector))))
    try:
        element = WebDriverWait(browser, 5).until(
            EC.presence_of_element_located((By.CSS_SELECTOR, selector))
        )
        # print(f"ELEMENT: {element}")
    except:
        print("TIME OUT")
    finally:
        pass
        # browser.quit()
    
    print("-----------------")
    print("SEARCHING....")
    search = browser.find_elements_by_css_selector(selector)

    proteins = [s.text for s in search]
    browser.quit()
    return proteins

folder = Path("/Users/moshe/Desktop/Research_Antigen/Try2/fasta_pdb_data_bound")
for file in folder.iterdir():
    if "DS._Store" in str(file):
        continue
   
    with open(file) as bound_fasta_file:
        old_bound_name = str(bound_fasta_file.name)[-23:-19]
        #print(old_bound_name)
        bound_fasta_text = str(bound_fasta_file.read())
        fasta = bound_fasta_text
    matching_proteins = get_matching_proteins(fasta)
    match = "N/A"
    for i, matching_protein in enumerate(matching_proteins):
        if i > 2:  # if the the first 3 don't have a score over 95
            break

        print(matching_proteins)
        print(f"\n\n{matching_protein}--------------------------")
        match = matching_protein
        print(match)
    f = open(f"/Users/moshe/Desktop/Research_Antigen/Try2/Bound_and_unbound/{old_bound_name}.txt", "w")
    f.write(f"{old_bound_name} {match}")
    f.close()