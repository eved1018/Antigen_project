import os, sys
from pathlib import Path
import shutil

folder = Path("/Users/moshe/Desktop/Research_Antigen/docking/zdocked_pdbs")

for folder_2 in folder.iterdir():
    for file in folder_2.iterdir():
        if file.name == "complex.1.pdb":
            src = str(file) 
            new_file_name = str(folder_2.name)
            dst =f"{folder_2}/{new_file_name}.pdb"
            os.rename(src, dst)

            dst_2 = Path("/Users/moshe/Desktop/Research_Antigen/docking/195_complexed_2VIR_pdbs/")
            shutil.copy(dst, dst_2)