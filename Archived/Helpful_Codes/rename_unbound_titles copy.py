from pathlib import Path
import os, sys

folder = Path("/Users/moshe/Desktop/Research_Antigen/Helpful_Codes/unbound_pred_list copy")
folder_complete = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_pdbs")
for file in folder.iterdir():
    bound_protein = file.name[:4]
    for item in folder_complete.iterdir():
        bound_protein_2 = item.name[12:16]
        #print(unbound_protein)
        if bound_protein == bound_protein_2:
            unbound_protein = item.name[19:25]
            src = "/Users/moshe/Desktop/Research_Antigen/Helpful_Codes/unbound_pred_list copy/"+ file.name 
            dst ="/Users/moshe/Desktop/Research_Antigen/Helpful_Codes/unbound_pred_list_renamed/" + f"{bound_protein}_{unbound_protein}_predicted_list_pymol.txt"
            #print(src, dst)
            os.rename(src, dst)
