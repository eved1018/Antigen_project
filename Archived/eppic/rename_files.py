from pathlib import Path
import os, sys
folder = Path("/Users/moshe/Desktop/Research_Antigen/eppic/boundData copy")

for folder_2 in folder.iterdir():
    for file in folder_2.iterdir():
        id = file.name.split("_")[3]
        protein_name = file.name.split("_")[0]
        chain_1 = file.name.split("_")[1]
        chain_2 = file.name.split("_")[2]
        last_part = file.name.split("_")[4]

        os.rename(file, f"{folder_2}/{protein_name}_{id}_{chain_1}_{chain_2}_chain_{last_part}")