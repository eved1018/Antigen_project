from pathlib import Path
list1 = []
with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cv_unbound_sets/unbound_proteins_125_set.txt") as infile:
    for line in infile:
        item = line.strip()
        list1.append(item)
folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_pdbs_and_annotated_residue_data/unbound_pdbs")
i = 0
for item in list1:
    for file in folder.iterdir():
        if item in file.name:
            print(item)