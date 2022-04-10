from pathlib import Path
import os
import shutil


folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/antigen_complexed/annotated_results_updated")
folder_2 = Path("/Users/moshe/Desktop/Research_Antigen/eppic/selenium_eppic")
for file in folder.iterdir():
    protein_name_275 = file.name[:4]
    for item in folder_2.iterdir():
        protein_name_335 = item.name[:4]
        if protein_name_275 == protein_name_335:
            #print(protein_name_275, protein_name_335)
            src = item
            dst = f"/Users/moshe/Desktop/Research_Antigen/eppic/275_eppic_job_ids/{item.name}"
            shutil.copy(src, dst)