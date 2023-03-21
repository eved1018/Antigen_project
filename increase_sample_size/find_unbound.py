from pathlib import Path
import requests
import time
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.remote.switch_to import SwitchTo
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.chrome.options import Options

folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/increase_sample_size/antigen_fastas")

chrome_options = Options()
chrome_options.add_argument("--headless")
chrome_options.add_argument("--disable-gpu")


DRIVER_PATH = "/Users/moshe/Downloads/chromedriver_mac64/chromedriver"
browser = webdriver.Chrome(executable_path=DRIVER_PATH,
                        options=chrome_options)   
for file in folder.iterdir():
    with open (file) as infile:
        for line in infile:
            if "corona" in line:
                break
            else:
                if line.startswith(">") == False:
                    if len(line) >= 100:
                        print(file.name)
                        print(line)
                        site = f"""https://www.rcsb.org/search?request=%7B%22query%22%3A%7B%22type%22%3A%22group%22%2C%22logical_operator%22%3A%22and%22%2C%22nodes%22%3A%5B%7B%22type%22%3A%22group%22%2C%22logical_operator%22%3A%22and%22%2C%22nodes%22%3A%5B%7B%22type%22%3A%22group%22%2C%22logical_operator%22%3A%22and%22%2C%22nodes%22%3A%5B%7B%22type%22%3A%22terminal%22%2C%22service%22%3A%22text%22%2C%22parameters%22%3A%7B%22operator%22%3A%22equals%22%2C%22negation%22%3Afalse%2C%22value%22%3A1%2C%22attribute%22%3A%22rcsb_entry_info.polymer_entity_count_protein%22%7D%7D%5D%7D%5D%2C%22label%22%3A%22text%22%7D%2C%7B%22type%22%3A%22terminal%22%2C%22service%22%3A%22sequence%22%2C%22parameters%22%3A%7B%22evalue_cutoff%22%3A1000000%2C%22identity_cutoff%22%3A0.95%2C%22value%22%3A%22{line.strip()}%22%2C%22sequence_type%22%3A%22protein%22%7D%2C%22label%22%3A%22sequence%22%7D%5D%2C%22label%22%3A%22query-builder%22%7D%2C%22return_type%22%3A%22entry%22%2C%22request_options%22%3A%7B%22paginate%22%3A%7B%22start%22%3A0%2C%22rows%22%3A25%7D%2C%22results_content_type%22%3A%5B%22experimental%22%5D%2C%22sort%22%3A%5B%7B%22sort_by%22%3A%22score%22%2C%22direction%22%3A%22desc%22%7D%5D%2C%22scoring_strategy%22%3A%22combined%22%7D%2C%22request_info%22%3A%7B%22query_id%22%3A%22cbd9c2310de83a75cce33951b71adc47%22%7D%7D""".replace("\n", "").replace(" ", "")
                        browser.get(site)
                        protein = file.name[1:5]
                        time.sleep(5)
                        try:
                            browser.execute_script("document.body.style.zoom='50%'")
                            browser.save_screenshot("g.png")
                            test = browser.find_element_by_css_selector("#app > div:nth-child(4) > div:nth-child(2) > div:nth-child(3) > div > div:nth-child(1) > div:nth-child(3) > div:nth-child(3) > div:nth-child(1) > div > div.col-md-9.col-xs-12.results-item-info > table.results-item-header > tbody > tr > td:nth-child(1) > h3 > a")
                            with open("outfile_unbound.txt", "a") as f:
                                f.write(f"{protein},{test.text}\n")

                        except:
                            pass