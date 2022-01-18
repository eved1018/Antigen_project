from pathlib import Path
predictor = "sppider"
folder_cluster_1 = Path(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/kmeans_cluster_2")
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
                    with open(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/cluster_2_outfile.csv", "a") as outfile:
                        outfile.write(f"{protein},{fscore},{len(combined_list_final)},{tot_TP}\n")
