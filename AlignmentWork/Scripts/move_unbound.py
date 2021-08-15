from pathlib import Path
import shutil
paired_folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/Pairs_Updated_copy")
for folder in paired_folder.iterdir():

    for file in folder.iterdir():
        if "unbound_pdb_" in str(file):
            unbound_pdb = file
            print(file)
            destination = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/Unbound_pdbs")
            shutil.move(str(unbound_pdb), str(destination))
