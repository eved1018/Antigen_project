predictor = "xgboost"
#switch fscore_dynamic_condition #3
with open(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/merged_cluster_outfile.csv") as infile_1:
    for line in infile_1:
        protein_1 = line.strip().split(",")[0]
        fscore_cluster_1 = float(line.strip().split(",")[1])
        cluster_1_size = int(line.strip().split(",")[2])
        cluster_1_tp = int(line.strip().split(",")[3])
        fscore_cluster_2 = float(line.strip().split(",")[4])
        cluster_2_size = int(line.strip().split(",")[5])
        cluster_2_tp = int(line.strip().split(",")[6])
        distance = float(line.strip().split(",")[7])
        
        #1
        if ((cluster_1_tp == 0) and (cluster_2_tp == 0)):
            with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/zero_tp_both_clusters.csv", "a") as outfile_1:
                outfile_1.write(f"{line.strip()}\n")
        
        #2
        if ((cluster_2_tp != 0) and (cluster_1_tp == 0)) or ((cluster_1_tp != 0) and (cluster_2_tp == 0)):
            if cluster_2_tp !=0:
                with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/only_one_cluster_nonzero_tp.csv", "a") as outfile_2:
                    outfile_2.write(f"{protein_1},{fscore_cluster_2},{cluster_2_size},{cluster_2_tp},clusters:2\n")
            if cluster_1_tp !=0:
                with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/only_one_cluster_nonzero_tp.csv", "a") as outfile_3:
                    outfile_3.write(f"{protein_1},{fscore_cluster_1},{cluster_1_size},{cluster_1_tp},clusters:1\n")
        
        #3
        if ((cluster_2_tp != 0) and (cluster_1_tp != 0) and distance <= 23):
            dynamic_cutoff = cluster_2_size + cluster_1_size
            #sppider
            with open("/Users/moshe/Desktop/Research_MetaDPI/MetaDPIv2-main/metadpi/output/moshe2/fscore_mcc_by_protein.csv") as infile_fscore:
                for item in infile_fscore:
                    if str(item.strip().split(",")[0]) == str(protein_1):
                        fscore_dynamic = item.strip().split(",")[13]


                        with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/both_clusters_nonzero_tp_below_23A.csv", "a") as outfile_4:
                            outfile_4.write(f"{protein_1},{fscore_dynamic},{dynamic_cutoff},{(int(cluster_2_tp)+int(cluster_1_tp))},clusters:1_2\n")

            #ispred
            # with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/ispred/bound_ispred_fscores.txt") as infile_fscore:
            #     for item in infile_fscore:
            #         if str(item.strip().split(",")[0]) == str(protein_1):
            #             fscore_dynamic = item.strip().split(",")[3]
            #             with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/both_clusters_nonzero_tp_below_23A.csv", "a") as outfile_4:
            #                 outfile_4.write(f"{protein_1},{fscore_dynamic},{dynamic_cutoff},{(int(cluster_2_tp)+int(cluster_1_tp))},clusters:1_2\n")

        #4

        if ((cluster_2_tp != 0) and (cluster_1_tp != 0) and distance > 23):
            if cluster_2_size > cluster_1_size:
                with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/both_clusters_nonzero_tp_above_23A.csv", "a") as outfile_5:
                    outfile_5.write(f"{protein_1},{fscore_cluster_2},{cluster_2_size},{cluster_2_tp},clusters:2\n")                
            
            if cluster_1_size > cluster_2_size:
                with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/both_clusters_nonzero_tp_above_23A.csv", "a") as outfile_6:
                    outfile_6.write(f"{protein_1},{fscore_cluster_1},{cluster_1_size},{cluster_1_tp},clusters:1\n")                
            if cluster_1_size == cluster_2_size:
                if cluster_1_tp > cluster_2_tp:
                    with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/both_clusters_nonzero_tp_above_23A.csv", "a") as outfile_7:
                        outfile_7.write(f"{protein_1},{fscore_cluster_1},{cluster_1_size},{cluster_1_tp},clusters:1\n")
                if cluster_2_tp > cluster_1_tp:
                    with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/both_clusters_nonzero_tp_above_23A.csv", "a") as outfile_8:
                        outfile_8.write(f"{protein_1},{fscore_cluster_2},{cluster_2_size},{cluster_2_tp},clusters:2\n")                
                         
 
                    

filenames = [f'/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/both_clusters_nonzero_tp_above_23A.csv', f'/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/both_clusters_nonzero_tp_below_23A.csv', f'/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/only_one_cluster_nonzero_tp.csv']
with open(f'/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/summary_file.csv', 'w') as outfile:
    for fname in filenames:
        with open(fname) as infile:
            for line in infile:
                outfile.write(line)
total_tp = 0
total_predicted = 0
total_annotated = 0
with open (f'/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/summary_file.csv') as infile_3:
    for line_3 in infile_3:
        protein_3 = line_3.strip().split(",")[0]
        tp = int(line_3.strip().split(",")[3])
        total_tp = total_tp + tp
        predicted = int(line_3.strip().split(",")[2])
        total_predicted = total_predicted + predicted
with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/ispred/bound_ispred_fscores.txt") as infile_4:
    for line_4 in infile_4:
        annotated = int(line_4.strip().split(",")[1])
        total_annotated = annotated + total_annotated
        
Fn = int(total_annotated) - int(total_tp)
Fp = int(total_predicted) - int(total_tp)
bottom_half= float(total_tp + (.5*Fn) +(Fp*.5))
global_fscore = round((total_tp/bottom_half),4)

print(global_fscore)





