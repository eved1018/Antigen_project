from pathlib import Path
from shutil import copyfile
import os

folder = Path("/Users/moshe/Desktop/Research_Antigen/Helpful_Codes/complexes copy")
folder_2 = Path("/Users/moshe/Desktop/Research_Antigen/Helpful_Codes/selenium_eppic")
for file in folder.iterdir():
    for item in folder_2.iterdir():
        if item.name[:10] == file.name[:10]:
            os.remove(file)