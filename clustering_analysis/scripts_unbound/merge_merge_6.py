with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/test_/cluster_1_outfile.csv") as infile_1:
    for line in infile_1:
        protein = line.strip().split(",")[0]
        with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/test_/cluster_2_outfile.csv") as infile_2:
            for item in infile_2:
                protein_2 = item.strip().split(",")[0]
                parta = item.strip().split(",")[1]
                partb = item.strip().split(",")[2]
                partc = item.strip().split(",")[3]
                if protein_2 == protein:
                    with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/ispred_kmeans_clustering_results.csv") as infile_3:
                        for tonka in infile_3:
                            if protein_2 == tonka.strip().split(",")[0]:
                                distance = tonka.strip().split(",")[4]
                                with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/test_/merged_cluster_outfile.csv", "a") as outfile:
                                    outfile.write(f"{line.strip()},{parta},{partb},{partc},{distance}\n")