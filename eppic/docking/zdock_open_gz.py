from pathlib import Path
import tarfile
import shutil


folder_1 = Path("/Users/moshe/Desktop/Research_Antigen/docking/zdocked_pdbs")

for folder_2 in folder_1.iterdir():
    for file in folder_2.iterdir():
        if "top_preds" in file.name:
            tar_file = file

            with tarfile.open(tar_file) as tar:
                tar.extractall(path=f"{folder_2}/")
            


