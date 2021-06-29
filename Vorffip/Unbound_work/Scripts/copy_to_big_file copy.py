import glob
from pathlib import Path

vorffip_folder = Path("/Users/moshe/Desktop/Research_Antigen/Vorffip/Unbound_work/Data/unbound_with_annotated")

with open("/Users/moshe/Desktop/Research_Antigen/Vorffip/Unbound_work/Data/unbound_vorffip_results.txt", "w") as outfile:
    for file in vorffip_folder.iterdir():
        with open(file) as infile:
            contents = infile.read()
            outfile.write(contents)
            print(file.name)
