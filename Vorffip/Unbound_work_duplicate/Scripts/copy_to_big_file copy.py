import glob
from pathlib import Path

vorffip_folder = Path("/Users/moshe/Desktop/Research_Antigen/Vorffip/Unbound_work_duplicate/Data/unbound_with_annotated")


with open("/Users/moshe/Desktop/Research_Antigen/Vorffip/Unbound_work_duplicate/Data/unbound_vorffip_results.txt", "w") as outfile:
    for file in vorffip_folder.iterdir():
        vorffip_protein_name = file.name[:9]
        with open ("/Users/moshe/Desktop/Research_Antigen/Vorffip/Unbound_work_duplicate/Data/remove_these.txt") as check:
            if vorffip_protein_name in check.read():
                print(vorffip_protein_name)
                continue
            if vorffip_protein_name not in check.read():
                with open(file) as infile:
                    contents = infile.read()
                    outfile.write(contents)
                    
