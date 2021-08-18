from pathlib import Path

with open("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/clustering_bound_results/vorffip_bound_k_2_clustering.csv") as infile:
    for line in infile:
        protein = line.strip().split(",")[0]
        with open("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Vorffip/bound_fscores_vorffip.txt") as infile_2:
            for item in infile_2:
                protein_2 = item.strip().split(",")[0]
                if protein == protein_2:
                    fscore = item.strip().split(",")[3]
                    with open("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/clustering_bound_results/vorffip_bound_k_2_clustering_and_fscore.csv", "a") as outfile:
                        outfile.write(f"{line.strip()},{fscore.strip()}\n")