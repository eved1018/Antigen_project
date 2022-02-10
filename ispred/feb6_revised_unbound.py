from pathlib import Path

folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/ispred/annotatedResults")
list = []
for file in folder.iterdir():
    list.append(file.name[:4])

with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/ispred/finalized_unbound_ispred_results.txt") as infile:
    for line in infile:
        protein = line.strip().split("_")[1]
        residue = line.strip().split("_")[0]
        res_name = line.strip().split("_")[3]
        next_1 = line.strip().split(",")[1]
        next_2 = line.strip().split(",")[2]
        if protein not in list:
            with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/ispred/newest_finalized_unbound_ispred_results.txt", "a") as f:
                f.write(f"{residue}_{protein}_{res_name}\n")

import os

# filename = "/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/ispred/newest_finalized_unbound_ispred_results.txt"
# def remove_empty_lines(filename):
#     if not os.path.isfile(filename):
#         print("{} does not exist ".format(filename))
#         return
#     with open(filename) as filehandle:
#         lines = filehandle.readlines()

#     with open(filename, 'w') as filehandle:
#         lines = filter(lambda x: x.strip(), lines)
#         filehandle.writelines(lines) 
# remove_empty_lines(filename)