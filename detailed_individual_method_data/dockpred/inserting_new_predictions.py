from pathlib import Path

new_proteins_list = []
folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/detailed_individual_method_data/dockpred/converted-files")

# for file in folder.iterdir():
#     new_proteins_list.append(file.name[:4])
# print(new_proteins_list)

# with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/detailed_individual_method_data/dockpred/Unbound_Data/finalized_unbound_dockpred_results.txt") as infile:
#     for line in infile:
#         protein_original = line.strip().split("_")[1]
#         if protein_original not in new_proteins_list:
#             with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/detailed_individual_method_data/dockpred/hold_finalized_unbound.txt", "a") as f:
#                 f.write(f"{line.strip()}\n")
#         if protein_original in new_proteins_list:
#             with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/detailed_individual_method_data/dockpred/hold_to_modify.txt", "a") as f_1:
#                 f_1.write(f"{line.strip()}\n")

for file in folder.iterdir():
    protein_name = file.name[:4]
    with open (file) as infile:
        for line in infile:
            if "Prob" not in line:
                res_total = line.strip().split(",")[1]
                res = res_total.split("_")[0]
                res_name = res_total.split("_")[1]
                score = line.strip().split(",")[3]
                with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/detailed_individual_method_data/dockpred/hold_to_modify.txt") as infile_2:
                    for line_2 in infile_2:
                        mod_res = line_2.strip().split("_")[0]
                        mod_prot = line_2.strip().split("_")[1]
                        annotated = line_2.strip().split(",")[2]
                        if (res == mod_res) and (protein_name == mod_prot):
                            with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/detailed_individual_method_data/dockpred/hold_finalized_unbound.txt", "a") as f:
                                f.write(f"{res}_{protein_name}_{res_name},{score},{annotated}\n")