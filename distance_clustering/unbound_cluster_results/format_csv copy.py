from pathlib import Path

with open("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/unbound_cluster_results/unbound_compiled_2.csv") as infile:
    for line in infile:
        protein_infile = line.strip().split(",")[0]
        with open("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/unbound_cluster_results/metappisp_unbound_k_2_clustering.csv") as infile_2:
            for item in infile_2:
                protein_infile_2 = item.strip().split(",")[0]
                rest_of_line = ",".join(item.strip().split(",")[1:6])
                if protein_infile == protein_infile_2:
                    with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/unbound_cluster_results/unbound_compiled.csv", "a") as outfile:
                        outfile.write(f"{line.strip()},{rest_of_line}\n")
                

#ispred, dockpred, vorffip, metappisp, 