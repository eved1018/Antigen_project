import glob
from pathlib import Path

vorffip_folder = Path("/Users/moshe/Desktop/Research_Antigen/Vorffip/Bound_work/Data/bound_vorffip_with_annotated_results")

with open("/Users/moshe/Desktop/Research_Antigen/Vorffip/Bound_work/Data/bound_vorffip_results.txt", "w") as outfile:
    for file in vorffip_folder.iterdir():
        with open(file) as infile:
            contents = infile.read()
            outfile.write(contents)
            print(file.name)
