predictor = "discotope"

total_fscore = 0
num_proteins = 0
with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/summary_file.csv") as infile_1:
    for line_1 in infile_1:
        fscore_per = float(line_1.strip().split(",")[1])
        num_proteins = num_proteins + 1
        total_fscore = total_fscore + fscore_per
with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/zero_tp_both_clusters.csv") as infile_2:
    for line_2 in infile_2:
        num_proteins = num_proteins + 1
print("avg fscore is: " + str(round(total_fscore/num_proteins,4)) + " for " + str(num_proteins) +" proteins")


#mcc calculation


































# list_protein = []
# with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/sppider/merged_cluster_outfile.csv") as infile_1:
#     for line_1 in infile_1:
#         protein = line_1.strip().split(",")[0]
#         list_protein.append(protein)

# with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/sppider/summary_file.csv") as infile_2:
#     for line_2 in infile_2:
#         protein_1 = line_2.strip().split(",")[0]
#         list_protein.remove(protein_1)

# with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/sppider/zero_tp_both_clusters.csv") as infile_3:
#     for line_3 in infile_3:
#         protein_2 = line_3.strip().split(",")[0]
#         list_protein.remove(protein_2)
# print(list_protein)