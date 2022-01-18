with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/dockpred/Unbound_Data/dockpred_unbound_f_scores.txt") as infile:
    list_actually_there = []
    for line in infile:
        list_actually_there.append(line.strip().split(",")[0])

from pathlib import Path
folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_data/unbound_pdbs")
list_suposed_to_be_there = []
for file in folder.iterdir():
    list_suposed_to_be_there.append(file.name[12:16])

# print(list_actually_there)
# print(list_suposed_to_be_there)
list_difference = []
for item in list_suposed_to_be_there:
  if item not in list_actually_there:
    list_difference.append(item)
print(list_difference)