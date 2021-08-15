import os, sys
from pathlib import Path
import shutil


folder = Path("/Users/moshe/Desktop/Research_Antigen/eppic/boundData copy")

for folder_2 in folder.iterdir():
    for file in folder_2.iterdir():
        with open("/Users/moshe/Desktop/Research_Antigen/eppic/top_choice_interfaces.txt") as infile:
            for line in infile:
                file_alt_name = line.strip()
                if file.name == file_alt_name:
                    src = str(file)
                    dst = Path("/Users/moshe/Desktop/Research_Antigen/eppic/275_bound_top_interfaces/")
                    shutil.move(src, dst)