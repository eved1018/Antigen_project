from os import path
from pathlib import Path
import requests

from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.remote.switch_to import SwitchTo
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.chrome.options import Options

import pandas as pd 


def get_single_chain_fasta(unbound_protein_name):
    res = requests.get(f"https://www.rcsb.org/fasta/entry/{unbound_protein_name}/display")
    res.raise_for_status()

    fasta_text = res.text#.split("\n")

    #fasta_sequence = ""
    #for i, line in enumerate(fasta_text):
    #    if i == 0:
    #        continue
    #    fasta_sequence += line
    print(fasta_text)
    return fasta_text

    

unbound_dir = Path("/Users/moshe/Desktop/Research_Antigen/Updated PDBs and Data/antigen_uncomplexed_pdbs")

for unbound_file in unbound_dir.iterdir():

    if unbound_file.name.endswith(".pdb"):
        pass
    unbound_protein_name = unbound_file.name[7:11]
    bound_name = unbound_file.name[0:4]
    with open(Path(f"/Users/moshe/Desktop/Research_Antigen/AlignmentWork/unbound_fasta/{bound_name}_{unbound_protein_name}_unbound_fasta.txt"),
        'w', newline="\n") as outfile:
        outfile.write(get_single_chain_fasta(unbound_protein_name))

    

        
