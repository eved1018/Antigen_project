from pathlib import Path
import os,sys
import glob

results_files = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/annotated_unbound_coordinates")
annotated_folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_data/unbound_annotated_results_copy")
for folder_1 in results_files.iterdir():
    protein_name = folder_1.name
    file_count = len(glob.glob1(folder_1,"*.txt"))
    with open("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/ispred/unbound_cutoff copy.csv") as cutoff:
        for line in cutoff:
            protein_name_check = line.strip().split(",")[0]
            if protein_name_check == protein_name:
                dynamic_cutoff = line.strip().split(",")[3]
                if int(file_count) != int(dynamic_cutoff):
                    print(protein_name, file_count, dynamic_cutoff)

    # for annotated_file in annotated_folder.iterdir():
    #         if (folder_1.name) in str(annotated_file.name):
    #             unbound_annotated_results_file = annotated_file
    #             with open(unbound_annotated_results_file) as file_unbound:
    #                 file_unbound = open(unbound_annotated_results_file,"r")
                
    #                 Counter = 0
    #                 Content = file_unbound.read()
    #                 CoList = Content.split("\n")

    #                 for i in CoList:
    #                     if i:
    #                         Counter += 1
    #                 counter1 = Counter

                
    #             if counter1 != file_count:
    #                 print(counter1, file_count, folder_1.name)