from pathlib import Path
predictor = "xgboost"
folder_cluster_1 = Path(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/kmeans_cluster_1")
folder_2 = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/bound_data/bound_annotated_results copy")

for file_1 in folder_cluster_1.iterdir():
    protein_name_1 = file_1.name[:4]
    combined_list_final = []
    tot_TP = 0
    with open(file_1) as infile_1:
        for line_1 in infile_1:
            cluster_1_predicted_residue = (line_1.strip()[:-5])
            combined_list_final.append(cluster_1_predicted_residue)

        for item in folder_2.iterdir():
            if item.name[:4] == protein_name_1:
                for i2 in combined_list_final:
                    with open (item) as infile_2:
                        for line_2 in infile_2:
                            if str(i2.strip()) == str(line_2.strip().split(" ")[0]):

                                tot_TP = tot_TP + 1
                #fix this


        with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/ispred/bound_ispred_fscores.txt") as infile_3:
            for tonka in infile_3:
                protein = tonka.strip().split(",")[0]
                if protein == protein_name_1:
                    tot_annotated = tonka.strip().split(",")[1]

                    Fn = int(tot_annotated) - int(tot_TP)
                    Fp = int(len(combined_list_final)) - int(tot_TP)
                    bottom_half= float(tot_TP + (.5*Fn) +(Fp*.5))
                    fscore = round((tot_TP/bottom_half),4)
                


                    print(f"{protein},{fscore},{len(combined_list_final)},{tot_TP}")
                    with open(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/cluster_1_outfile.csv", "a") as outfile:
                        outfile.write(f"{protein},{fscore},{len(combined_list_final)},{tot_TP}\n")



# #kmeans
# #protein,cluster_2_fscore,cluster_2_size,cluster_2_TP,cluster_1_fscore,cluster_1_size,cluster_1_TP,dynamic_cutoff,num_res_in_cluster_1,num_res_in_cluster_2,distance
# with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/merged_clustering_results.csv") as kmeans_infile:
#     for line in kmeans_infile:
#         protein = line.strip().split(",")[0]
#         cluster_2_fscore = line.strip().split(",")[1]
#         cluster_2_size = line.strip().split(",")[2]
#         cluster_2_TP = line.strip().split(",")[3]
#         cluster_1_fscore = line.strip().split(",")[4]
#         cluster_1_size = line.strip().split(",")[5]
#         cluster_1_TP = line.strip().split(",")[6]
#         dynamic_cutoff = line.strip().split(",")[7]
#         num_res_in_cluster_1 = line.strip().split(",")[8]
#         num_res_in_cluster_2 = line.strip().split(",")[0]
#         distance = line.strip().split(",")[10]
        
#         # if (int(cluster_1_TP) == 0) and (int(cluster_2_TP) == 0):
#         #     with open("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/scripts/analyze_results/sets/hierarchical_set_with_0_TP_both_clusters.csv", "a") as outfile_1:
#         #         outfile_1.write(f"{line}")

#         # if ((int(cluster_1_TP) == 0) and (int(cluster_2_TP) > 0)) or ((int(cluster_2_TP) == 0) and (int(cluster_1_TP) > 0)):
#         #     if (int(cluster_1_TP) == 0):
#         #         print(f"{protein},{cluster_2_fscore},{cluster_2_TP},{cluster_2_size}")
#         #     if (int(cluster_2_TP) == 0):
#         #         print(f"{protein},{cluster_1_fscore},{cluster_1_TP},{cluster_1_size}")
        
        
#         # if ((int(cluster_1_TP) > 0) and (int(cluster_2_TP) > 0)) and (float(distance) >23):
#         #     if (int(cluster_1_TP) > int(cluster_2_TP)):
#         #         print(f"{protein},{cluster_1_fscore},{cluster_1_TP},{cluster_1_size},{distance}")
#         #     if (int(cluster_2_TP) > int(cluster_1_TP)):
#         #         print(f"{protein},{cluster_2_fscore},{cluster_2_TP},{cluster_2_size},{distance}")
        
        
#         # if ((int(cluster_1_TP) > 0) and (int(cluster_2_TP) > 0)) and (float(distance) <23):
#         #     with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/ispred/unbound_ispred_fscores.txt") as infile_fscore:
#         #         for item in infile_fscore:
#         #             if item.strip().split(",")[0] == protein:
#         #                 fscore_dynamic = item.strip().split(",")[3]
#         #                 print(f"{protein},{fscore_dynamic},{(int(cluster_2_TP)+int(cluster_1_TP))},{dynamic_cutoff}")



