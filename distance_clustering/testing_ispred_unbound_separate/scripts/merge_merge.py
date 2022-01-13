with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/cluster_kmeans_pre_merged.csv") as infile_1:
    for line in infile_1:
        protein = line.strip().split(",")[0]
        with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/ispred_unbound_k_2_kmeans_clustering_predicted_only.csv") as infile_2:
            for item in infile_2:
                protein_2 = item.strip().split(",")[0]
                parta = item.strip().split(",")[1]
                partb = item.strip().split(",")[2]
                partc = item.strip().split(",")[3]
                partd = item.strip().split(",")[4]
                if protein_2 == protein:
                    print(f"{line.strip()},{parta},{partb},{partc},{partd}")