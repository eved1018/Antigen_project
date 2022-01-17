with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/cluster_1_kmeans.csv") as infile_1:
    for line_1 in infile_1:
        protein = line_1.strip().split(",")[0]
        part2 = line_1.strip().split(",")[1]
        part3 = line_1.strip().split(",")[2]
        part4 = line_1.strip().split(",")[3]
        with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/cluster_2_kmeans.csv") as infile_2:
            for line_2 in infile_2:
                if protein == line_2.strip().split(",")[0]:
                    print(f"{line_2.strip()},{part2.strip()},{part3},{part4}")