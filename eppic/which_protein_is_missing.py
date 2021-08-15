from pathlib import Path

folder = Path('/Users/moshe/Desktop/Research_Antigen/eppic/boundData')

for folder_2 in folder.iterdir():
    protein = folder_2.name
    with open("/Users/moshe/Desktop/Research_Antigen/eppic/top_choice_interfaces.txt") as infile:
        for line in infile:
            list = []
            protein_name = line.strip().split("_")[0]
            list.append(protein_name)
            