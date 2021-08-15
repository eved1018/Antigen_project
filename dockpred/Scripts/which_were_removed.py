from pathlib import Path

# with open ("/Users/moshe/Desktop/Research_Antigen/dockpred/Bound_Data/bound_dockpred_results_unannotated.txt") as infile:
#     for line in infile:
#         line_new = line.strip().split(",")[0]
#         with open ("/Users/moshe/Desktop/Research_Antigen/dockpred/Bound_Data/bound_compiled_results_dockpred.txt", "r") as infile_2:
#             for item in infile_2:
#                 if line_new not in item.strip().split(",")[0]:
#                     print(line_new)



with open('/Users/moshe/Desktop/Research_Antigen/dockpred/Bound_Data/bound_dockpred_results_unannotated.txt', 'r') as file1:
    with open('/Users/moshe/Desktop/Research_Antigen/dockpred/try_this.txt', 'r') as file2:
        same = set(file1).difference(file2)

same.discard('\n')

for line in same:
    print(line.strip())