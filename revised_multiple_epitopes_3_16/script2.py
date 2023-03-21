from pathlib import Path

predicted_residues_folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/xgboost/kmeans_cluster_3")
annotated_folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_pdbs_and_annotated_residue_data/unbound_annotated_results_copy")
i = 0
for protein_file in predicted_residues_folder.iterdir():
    protein = protein_file.name[:4]
    predicted_residues = []
    with open (protein_file) as infile1:
        for line1 in infile1:
            predicted = line1.strip()[:-5]
            predicted_residues.append(predicted)
    for file_annotated in annotated_folder.iterdir():
        if protein == file_annotated.name[5:9]:
            annotated_list = []
            with open (file_annotated) as infile2:
                for line2 in infile2:
                    annotated_list.append(line2.strip().split(" ")[0])
            TPs = len(set(predicted_residues).intersection(annotated_list))
            FPs = len(predicted_residues) - TPs
            FNs = len(annotated_list) - int(TPs)
            bottom_half= float(TPs + (.5*FNs) +(FPs*.5))

            fscore = round((TPs/bottom_half),4)
            res = "+".join(annotated_list)
            print(f"{file_annotated.name[:9]},{res}")
            i = i+1
