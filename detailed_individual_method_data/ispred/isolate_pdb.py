from pathlib import Path
import os, sys
import shutil
folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/ispred/Revised_Unbound_Results_new")

with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_data/newUnbound_pdbs/37_unbound_proteins_start_end_res_nums.txt") as infile_1:
    for line_1 in infile_1:
        protein =line_1.strip().split(",")[0]
        for file in folder.iterdir():
            if protein in file.name:
                for file_2 in file.iterdir():
                    if "pdb_" in file_2.name:
                        
                        os.rename(str(file_2),(f"{file}/{protein}_pdb_download.txt"))
                        shutil.move((f"{file}/{protein}_pdb_download.txt"), "/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/ispred/pdb_hold")
