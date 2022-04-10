from pathlib import Path
import os, sys

folder = Path("/Users/moshe/Desktop/Research_Antigen/distance_clustering/clustered_residues_k_2")
folder_2 = Path("/Users/moshe/Desktop/Research_Antigen/distance_clustering/combined_dockpred_annotated_results")
for folder_inner in folder.iterdir():
    protein_name1 = folder_inner.name[:4]
    # os.mkdir(f"/Users/moshe/Desktop/Research_Antigen/distance_clustering/distances_folder_k_2/{protein_name1}")
    for item in folder_2.iterdir():
        protein_name2 = item.name[:4]
        if protein_name1 == protein_name2:
            for file in folder_inner.iterdir():
                if "clu2.txt" == file.name:
                    with open (file) as infile:
                        for line in infile:
                            residue = (str(line.strip().split(".")[0]))
                            with open (item) as infile_2:
                                for tonka in infile_2:
                                    if residue == str(tonka.strip().split(".")[0]):
                                        with open (f"/Users/moshe/Desktop/Research_Antigen/distance_clustering/distances_folder_k_2/{protein_name1}/clust2_lines", "a") as outfile:
                                            outfile.write(f"{tonka.strip()}\n")
