from pathlib import Path

with open ('/Users/moshe/Desktop/Research_Antigen/distance_clustering/clustering_percentages_k_2.csv') as infile:
    for line in infile:
        protein_name = line.strip().split(",")[0]
        with open ("/Users/moshe/Desktop/Research_Antigen/dockpred/Bound_Data/dockpred_bound_f_scores.txt") as infile2:
            for item in infile2:
                protein_name_2 = item.strip().split(",")[0]
                f_score = item.strip().split(",")[3]
                if protein_name == protein_name_2:
                    with open ("/Users/moshe/Desktop/Research_Antigen/distance_clustering/clustering_percentages_k_2_and_fscore.csv", "a") as outfile:
                        outfile.write(f"{line.strip()},{f_score}\n")
