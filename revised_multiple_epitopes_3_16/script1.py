from pathlib import Path
import os, sys
folder1 = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/xgboost/kmeans_cluster_3")
folder_compare = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_pdbs_and_annotated_residue_data/unbound_annotated_results_copy")
for file in folder1.iterdir():
    print(file.name)
    protein_bound = file.name[:4]
    for file2 in folder_compare.iterdir():
        print(file2.name)
        if protein_bound == file2.name[:4]:
            protein_unbound = file2.name[5:9]
            print(protein_unbound)
            os.rename(str(file),f"{(str(folder1))}/{protein_unbound}_xgboost.txt")
