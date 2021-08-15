import glob
from pathlib import Path

vorffip_folder = Path("/Users/moshe/Desktop/Research_Antigen/Vorffip/Bound_work/Data/bound_vorffip_with_annotated_results")
vorffip_unbound_folder = Path("/Users/moshe/Desktop/Research_Antigen/Vorffip/Unbound_work/Data/unbound_with_annotated")
with open("/Users/moshe/Desktop/Research_Antigen/Vorffip/Bound_work/Data/bound_vorffip_results_shortened_set.txt", "w") as outfile:
    for file in vorffip_folder.iterdir():
        for item in vorffip_unbound_folder.iterdir():
            if item.name[:4] == file.name[:4]:
        
                with open(file) as infile:
                    contents = infile.read()
                    outfile.write(contents)
                    print(file.name, item.name)
