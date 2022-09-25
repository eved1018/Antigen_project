from pathlib import Path
folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_pdbs_and_annotated_residue_data/unbound_pdbs")
list = []
i = 0
for file in folder.iterdir():
    list.append(file.name[19:23])

    # print(file.name[19:23])
listnew = []
for item in list:
    if list.count(item) > 1:
        # print(item)
        listnew.append(item)
listnewnew = set(listnew)
# print("\n".join(listnewnew))



# with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/meta-dpi_work/duplicated_unbound_names/duplicates.txt") as infile:
#     for line in infile:
#         list.append(line.strip())

# new_list = set(list)
# print("\n".join(new_list))


# list = []
# with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/meta-dpi_work/duplicated_unbound_names/input_data_unbound_fixing.csv") as infile:
#     for line in infile:
#         protein_bound = line.strip().split(",")[0][-4:]
#         for file in folder.iterdir():
#             protein_unbound = file.name[5:9]
#             if protein_bound == file.name[:4]:
#                 print(line.strip().replace(protein_bound,protein_unbound))
#                 list.append(line.strip().replace(protein_bound,protein_unbound))
# newlist = set(list)
# with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/meta-dpi_work/duplicated_unbound_names/output_unbound.csv", "a") as outfile:
#     outfile.write("\n".join(newlist))


# with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/meta-dpi_work/duplicated_unbound_names/input_data_unbound_fixing.csv") as infile:
#     for line in infile:
#         protein_bound = line.strip().split(",")[0][-4:]
#         for file in folder.iterdir():
#             protein_unbound = file.name[19:23]
#             # print(file.name[12:16])
#             # print(protein_bound, file.name[12:16])
#             if protein_bound == file.name[12:16]:
#                 if protein_unbound in listnewnew:
#                     with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/meta-dpi_work/duplicated_unbound_names/output_unbound.csv", "a") as outfile:
#                         outfile.write(f"{line.strip().replace(protein_bound,protein_unbound)}\n")

from pathlib import Path
input_file = "/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/meta-dpi_work/duplicated_unbound_names/output_unbound.csv"

with open(input_file, "r") as fp:
    lines = fp.readlines()
    new_lines = []
    for line in lines:
        #- Strip white spaces
        line = line.strip()
        first_half = line.strip().split(",")[0].split("_")[0]
        first_halfa = line.strip().split(",")[0].split("_")[1]
        first_half_complete = f"{first_half}_{first_halfa}"
        #print(first_half_complete)
        # first_half_2b = first_half_2.split(",")[0].split("_")[1]
        # first_half_2_complete = f"{first_half_2a}_{first_half_2b}"
        # print(first_half_2_complete)
        
        if line not in new_lines:
            str1 = ""
            if first_half_complete not in "\n".join(new_lines):
                new_lines.append(line)
#print("\n".join(new_lines))
with open("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/meta-dpi_work/duplicated_unbound_names/output_unbound_test2.csv", "w") as fp:
    fp.write("\n".join(new_lines))

