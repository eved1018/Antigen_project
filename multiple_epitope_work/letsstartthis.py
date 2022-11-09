from pathlib import Path
import os

folder1 = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt_unbound/data_unbound/xgboost/kmeans_cluster_1")
folder2 = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt_unbound/data_unbound/xgboost/kmeans_cluster_2")
folder3 = Path ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_pdbs_and_annotated_residue_data/unbound_annotated_results_copy")

# for file1 in folder2.iterdir():
#     protein_bound = file1.name[:4]
#     print(protein_bound)
#     with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/detailed_individual_method_data/ispred/unbound_cutoff.csv") as infile2:
#         for line2 in infile2:
#             protein_unbound = line2.strip()[7:11]
#             if protein_bound in line2:
#                 os.rename(str(file1), f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt_unbound/data_unbound/xgboost/kmeans_cluster_2/{protein_unbound}_xgboost.txt")

for file1 in folder1.iterdir():
    predicted_residues = []
    protein_name = file1.name[:4]
    #first make list
    with open(file1) as input_data_file:
        for line_input in input_data_file:
            preds = line_input.strip().split("P")[0]
            predicted_residues.append(preds)
    for file_annotated in folder3.iterdir():
        if protein_name in file_annotated.name:
            with open (file_annotated) as infile_annotated:
                list_annotated = []
                complete_protein_name = (file_annotated.name[:9])
                for line_annotated in infile_annotated:
                    annotated_residues = line_annotated.strip().split(" ")[0]
                    list_annotated.append(annotated_residues)
                # print(list_annotated,predicted_residues,complete_protein_name)
            TPs = len(set(predicted_residues).intersection(list_annotated))
            FPs = len(predicted_residues) - TPs
            FNs = len(list_annotated) - int(TPs)
            #will need to add TNs

            bottom_half= float(TPs + (.5*FNs) +(FPs*.5))

            fscore = round((TPs/bottom_half),4)
            if fscore > 1:
                print(fscore, complete_protein_name, TPs, FPs, FNs, len(predicted_residues), len(list_annotated))
            with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/multiple_epitope_work/cluster1_fscores.csv", "a") as f:
                f.write(f"{complete_protein_name},{fscore}\n")
