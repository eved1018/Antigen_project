from pathlib import Path

# with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/dockpred/Unbound_Data/finalized_unbound_dockpred_results.txt") as infile:
#     for line in infile:
#         line_new = line.strip().split(",")[0]
#         with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/dockpred/Unbound_Data/unbound_dockpred_results.txt", "r") as infile_2:
#             for item in infile_2:
#                 if line_new not in item.strip().split(",")[0]:
#                     print(line_new)



with open('/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/dockpred/Unbound_Data/unbound_dockpred_results.txt', 'r') as file1:
    with open('try_this_unbound.txt', 'r') as file2:
        same = set(file1).difference(file2)

same.discard('\n')

for line in same:
    print(line.strip())

# with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/dockpred/Unbound_Data/unbound_dockpred_with_annotated.txt") as infile:
#     for line in infile:
#         with open("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/dockpred/try_this_unbound.txt", "a") as outfile:
#             outfile.write(f"{(line.strip().split(',')[0])},{line.strip().split(',')[1]}\n")
