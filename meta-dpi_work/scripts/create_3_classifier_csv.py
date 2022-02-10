# with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/meta-dpi_work/dockpred_finalized_bound_dockpred_results_copy.txt") as infile_1:
#     for line_1 in infile_1:
#         dockpred_res_num = str(line_1.strip().split("_")[0])
#         dockpred_protein_name = str(line_1.strip().split("_")[1])
#         dockpred_prediction = str(line_1.strip().split(",")[1])
#         annotated = str(line_1.strip().split(",")[2])
#         with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/meta-dpi_work/ispred_finalized_bound_ispred_results_copy.txt") as infile_2:
#             for line_2 in infile_2:
#                 ispred_res_num = str(line_2.strip().split("_")[0])
#                 ispred_protein_name = str(line_2.strip().split("_")[1])
#                 ispred_prediction = str(line_2.strip().split(",")[1])
#                 if (dockpred_protein_name == ispred_protein_name) and (ispred_res_num == dockpred_res_num):
#                     with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/meta-dpi_work/sppider_bound_data_complete_copy.txt") as infile_3:
#                         for line_3 in infile_3:
#                             sppider_res_num = str(line_3.strip().split("_")[0])
#                             sppider_protein_name = str(line_3.strip().split("_")[1])
#                             sppider_prediction = str(line_3.strip().split(",")[1])
#                             if (sppider_protein_name == ispred_protein_name) and (sppider_res_num == dockpred_res_num):
#                                 with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/meta-dpi_work/input.csv", "a") as f:
#                                     f.write(f'"{sppider_res_num}_{ispred_protein_name}",{sppider_prediction},{ispred_prediction},{dockpred_prediction},{annotated}\n')
                                








# #output
# ##"2_1ACB.E",0,0,0.01764,0


with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/dockpred/dockpred_missing.txt") as infile:
    for line in infile:
        res = line.strip().split("_")[0]
        protein = line.strip().split("_")[1]
        with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/meta-dpi_work/ispred_finalized_bound_ispred_results_copy.txt") as infile_2:
            for line_2 in infile_2:
                ispred_res_num = str(line_2.strip().split("_")[0])
                ispred_protein_name = str(line_2.strip().split("_")[1])
                ispred_prediction = str(line_2.strip().split(",")[1])
                if (protein == ispred_protein_name) and (ispred_res_num == res):
                    with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/meta-dpi_work/sppider_bound_data_complete_copy.txt") as infile_3:
                        for line_3 in infile_3:
                            sppider_res_num = str(line_3.strip().split("_")[0])
                            sppider_protein_name = str(line_3.strip().split("_")[1])
                            sppider_prediction = str(line_3.strip().split(",")[1])
                            annotated = str(line_3.strip().split(",")[2])
                            if (sppider_protein_name == ispred_protein_name) and (sppider_res_num == res):
                                with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/meta-dpi_work/dockpred_missing_add.txt", "a") as f:
                                    f.write(f'"{sppider_res_num}_{ispred_protein_name}",{sppider_prediction},{ispred_prediction},{0},{annotated}\n')
                                 

