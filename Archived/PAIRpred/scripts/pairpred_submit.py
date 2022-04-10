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



browser = webdriver.Chrome(executable_path=DRIVER_PATH,
                                options=chrome_options)
site = "http://pairpred.pythonanywhere.com/#"
browser.get(site)

browser.save_screenshot("screenshot.png")
