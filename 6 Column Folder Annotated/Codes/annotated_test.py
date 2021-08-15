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



def get_matching_proteins(fasta):
    
    site = f"""
    https://www.rcsb.org/search?request=%7B%22query%22%3A%7B%22type%22%3A%22group%22
    %2C%22logical_operator%22%3A%22and%22%2C%22nodes%22%3A%5B%7B%22type%22%3A%22
    group%22%2C%22logical_operator%22%3A%22and%22%2C%22nodes%22%3A%5B%7B%22type%22
    %3A%22group%22%2C%22logical_operator%22%3A%22and%22%2C%22nodes%22%3A%5B%7B%22
    type%22%3A%22terminal%22%2C%22service%22%3A%22text%22%2C%22parameters%22
    %3A%7B%22operator%22%3A%22equals%22%2C%22negation%22%3Afalse%2C%22value%22%3A1
    %2C%22attribute%22%3A%22rcsb_entry_info.polymer_entity_count_protein%22%7D%2C
    %22node_id%22%3A0%7D%5D%7D%5D%2C%22label%22%3A%22text%22%7D%2C%7B%22type%22%3A
    %22terminal%22%2C%22service%22%3A%22sequence%22%2C%22parameters%22%3A%7B%22
    evalue_cutoff%22%3A1000000%2C%22identity_cutoff%22%3A0%2C%22target%22%3A%22
    pdb_protein_sequence%22%2C%22value%22%3A%22
    {fasta}
    %22%7D%2C%22label%22%3A%22sequence%22%2C%22node_id%22%3A1%7D%5D%2C%22label%22
    %3A%22query-builder%22%7D%2C%22return_type%22%3A%22entry%22%2C%22request_options
    %22%3A%7B%22pager%22%3A%7B%22start%22%3A0%2C%22rows%22%3A100%7D%2C%22
    scoring_strategy%22%3A%22sequence%22%2C%22sort%22%3A%5B%7B%22sort_by%22%3A%22
    score%22%2C%22direction%22%3A%22desc%22%7D%5D%7D%2C%22request_info%22%3A%7B%22
    src%22%3A%22ui%22%2C%22query_id%22%3A%22e9c976822cc9649bdb9d8ae51c012163%22%7D
    %7D""".replace("\n", "").replace(" ", "")

    chrome_options = Options()
    chrome_options.add_argument("--headless")
    chrome_options.add_argument("--disable-gpu")


    DRIVER_PATH = "/Users/moshe/Desktop/Research Antigen/Resources/chromedriver"

    browser = webdriver.Chrome(executable_path=DRIVER_PATH,
                               options=chrome_options)

    browser.get(site)
    html = browser.page_source
    selector = "table.results-item-header>tr>td>h3>a"
    #element = SwitchTo.frame(WebDriverWait(browser, 10).until(
    #    EC.presence_of_element_located((By.CSS_SELECTOR, selector))))
    try:
        element = WebDriverWait(browser, 10).until(
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


def get_single_chain_fasta(protein_name):
    res = requests.get(f"https://www.rcsb.org/fasta/entry/{protein_name}/display")
    res.raise_for_status()

    fasta_text = res.text.split("\n")

    fasta_sequence = ""
    for i, line in enumerate(fasta_text):
        if i == 0:
            continue
        fasta_sequence += line

    return fasta_sequence


def get_fasta(protein_name, chain):
    
    
    
    """Gets the fasta sequence from "rcsb.org/fasta/entry/XXXX/display" using
    the protein name and chain.

    Args:
        protein_name (String): the 4-character protein code
        chain (String): The chain letter (e.g. "B")

    Return:
        String: the corresponding FASTA sequence of the protein and chain.
    """

    def get_chain(line):

        
            temp_portion = line.split("|")[1]  # Chains A...
            print("HEEEEEELEELELPEPEPLPLPE")
            print(str(temp_portion))
            print("HEEEEEELEELELPEPEPLPLPE")
            if temp_portion.startswith("Chains"):
                temp_portion = temp_portion[7:8]
                all_chains = temp_portion.split(",")
                print("Check it")
                print(temp_portion)
                print("Check it")
                #print(all_chains)
                #print("HELLLLOOOOOOO")
                return all_chains
                # return temp_portion[7]
            else:
                return [temp_portion[6]]

    res = requests.get(f"https://www.rcsb.org/fasta/entry/{protein_name}/display")
    res.raise_for_status()

    fasta_text = res.text.split("\n")

    fasta_sequence = ""
    begin_copying = False

    for line in fasta_text:
        if line.startswith(">"):
            current_chains = get_chain(line)
            begin_copying = (chain in current_chains)  # boolean value

        else:
            if begin_copying:
                fasta_sequence += line
    print(fasta_sequence)
    return fasta_sequence



def bio_compare(seq1, seq2):
    """Compares the 2 sequences and returns a matching score

    Args:
        seq1 (String): The first FASTA sequence to compare
        seq2 (String): The second FASTA sequence to compare

    Returns:
        Integer: The score mathcing score, as a percentage
    """
    def get_score(alignment_string):
        entries = alignments.__str__().split(",")
        for entry in entries:
            if "score" in entry:
                return float(entry.strip()[6:])

    seq1, seq2 = Seq(seq1), Seq(seq2)

    alignments = pairwise2.align.globalxx(seq1, seq2)
    score = get_score(alignments)
    # score = float(alignments.__str__().split(",")[2].strip()[6:])
    smaller_seq = min(len(seq1), len(seq2))

    return (score/smaller_seq) * 100
def get_res_from_path(patch_file):
    with open(patch_file) as patch_content:
            line = patch_content.read().split("\n")[1][3:-6]
            residues = line.split(",")
            residues = list(map(lambda x: x[1:], residues))
            return residues
def get_res_from_rcsb(protein_name):
    res = requests.get(f"https://files.rcsb.org/view/{protein_name}.pdb")
    res.raise_for_status()

    text = res.text.split("\n")

    # getting the fasta sequence
    res = requests.get(f"https://www.rcsb.org/fasta/entry/{protein_name}/display")
    res.raise_for_status()

    fasta_text = res.text.split("\n")
    return fasta_text, text
def get_match():
    return

def get_amino():
    return 

def Main():
    # TODO: Go through folder w/ patches, skip features.
    # Scan through chain_mapping.txt and select corresponding protein
    # If the protein isn't in chain_mapping.txt "continue"
    match_df = pd.read_csv("/Users/moshe/Desktop/Research Antigen/Resources/chain_mapping.txt", sep=" ", names = ["complex_protein","reserach_chain","match_chain"])
    new_df = pd.read_csv("/Users/moshe/Desktop/Research Antigen/Resources/chain_mapping (1).txt", sep= " ", names = ["complex_protein","reserach_chain","new_chain"])
    patches_dir = Path("//Users/moshe/Desktop/patches")
    #patches_dir.
    counter = 0
    proteins = []
    for patch_file in patches_dir.iterdir():
        if patch_file.name.endswith("features.csv"):
            protein_name = patch_file.name[:4]
            proteins.append(protein_name)
            residues = get_res_from_path(patch_file)
        else:
            pass
        

    match_proteins= match_df["complex_protein"].tolist()
    proteins = [x for x in proteins if x in match_proteins]

    for protein_name in proteins:
        
        protein_row = match_df.loc[match_df.complex_protein == protein_name]
        match_chain = protein_row.match_chain.tolist()[0]
        new_protein_row = new_df.loc[match_df.complex_protein == protein_name]
        new_chain = new_protein_row.new_chain.tolist()[0]   
        researcher_chain = new_protein_row.reserach_chain.tolist()[0]  
        fasta_text,text = get_res_from_rcsb(protein_name)
        residues.sort()
        residues = list(map(lambda x: str(x), residues))

        print(f"START: {protein_name}")
        # print(residues)

        protein1_fasta = get_fasta(protein_name, match_chain)
        #to change match must change args 2 of get_fasta
        matching_proteins = get_matching_proteins(protein1_fasta)

        match = "N/A"

        for i, matching_protein in enumerate(matching_proteins):
            if i > 2:  # if the the first 3 don't have a score over 95
                break

            print(matching_proteins)
            print(f"\n\n{matching_protein}--------------------------")
            protein2_fasta = get_single_chain_fasta(matching_protein)
            score = bio_compare(protein1_fasta, protein2_fasta)

            if True:
                match = matching_protein
                break

        jindex = 0

        amino = ""
        for residue in residues:
            while jindex < len(text):
                if not text[jindex].startswith("ATOM"):
                    jindex += 1
                    continue

                pdb_parts = [text[jindex][:6], text[jindex][6:11],
                    text[jindex][12:16], text[jindex][17:20], text[jindex][21],
                    text[jindex][22:26], text[jindex][30:38],
                    text[jindex][38:46], text[jindex][46:54]]

                pdb_parts = list(map(lambda x: x.strip(), pdb_parts))

                if pdb_parts[4] != new_chain:
                    jindex += 1
                    continue
                # print(pdb_parts[5], residue)

                if pdb_parts[5] == residue:
                    amino = pdb_parts[3]
                    jindex += 1
                    break

                jindex += 1
        
            
    
         
    