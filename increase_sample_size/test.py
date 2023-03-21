# # from pathlib import Path
# # list1=[]
# # with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/increase_sample_size/outfile_unbound.txt") as infile:

# #     for line in infile:

# #         list1.append(line.strip().split(",")[1])

# # test_list = list(set(list1))

# # print(len(test_list))


# # folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_pdbs_and_annotated_residue_data/unbound_pdbs")
# # for file in folder.iterdir():
# #     for item in test_list:
# #         if item in file.name:
# #             test_list.remove(item)
# # print("\n".join(test_list))

# list1 = []
# from pathlib import Path
# import requests
# import urllib.request 

# file = ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/increase_sample_size/new_list_of_unbound_added.txt")

# with open(file) as myfile:
#     for line in myfile: 
#         protein_name = line.strip()

#         try:
#             res = requests.get(f"https://files.rcsb.org/view/{protein_name}.pdb")
#             res.raise_for_status()
#             new_name = f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/increase_sample_size/unbound_pdbs_new/{protein_name}.pdb"
#             # playFile = open(new_name, 'wb')
            
#             for chunk in res.iter_content(100000):
#                 if "NMR" or "nmr" or "ELECTRON" or "electron" in chunk:
#                     list1.append(protein_name)
    
                    
#             print("hello")
#         except:
#             print("hello")
# test_list = list(set(list1))
# print(len(test_list))
from pathlib import Path 
import shutil
folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/increase_sample_size/newly_added_pdbs_49")  
list1 = []
with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/increase_sample_size/new_list_of_unbound_added.txt") as infile:
    for line in infile:
        list1.append(line.strip())
print(len(list1))
for file in folder.iterdir():
    for item in list1:
        if item in file.name:
            list1.remove(item)
            shutil.move(file, f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/increase_sample_size/new_pdbs_49/{file.name}") 
print(list1)