# list = []
# with open ("/Users/moshe/Desktop/Research_MetaDPI/MetaDPIv2-main/metadpi/output/3_fold_cv_9_7/fscore_mcc_by_protein.csv") as infile:
#     for line in infile:
#         protein = line.strip().split(",")[0]
#         list.append(protein)

# with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/meta-dpi_work/unbound_results/fscore_mcc_by_protein_unbound_195.csv") as infile2:
#     for line2 in infile2:
#         if line2.strip().split(",")[0] in list:
#             with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/meta-dpi_work/unbound_results/77_unbound_results.csv", "a") as f:
#                 f.write(f"{line2.strip()}\n")
                # reformat input data
list = []
with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/meta-dpi_work/unbound_results/bound_test_proteins.txt") as infile2:
    for line2 in infile2:
        protein = line2.strip().split(",")[1]
        list.append(protein)

with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/meta-dpi_work/unbound_results/input_data_unbound_copy.csv") as infile:
    for line in infile:
        protein2 = (line.strip().split("_")[1][:4])
        if protein2 in list:
            with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/meta-dpi_work/unbound_results/input_data_10_18_corresponding.csv", "a") as f:
                f.write(f"{line.strip()}\n")
