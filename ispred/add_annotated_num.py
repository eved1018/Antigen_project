# from pathlib import Path
# annotated_bound_folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/antigen_complexed/annotated_results_updated") 

# with open("/Users/moshe/Desktop/Research_Antigen/ispred/bound_Dynamic_Cutoffs.csv") as bound_cutoff:
#     for line in bound_cutoff:
#         protein_name = line.split(",")[0]
#         for annotated_file in annotated_bound_folder.iterdir():
#             if protein_name in str(annotated_file.name):
#                 unbound_annotated_results_file = annotated_file
#                 with open(unbound_annotated_results_file) as file_unbound:
#                     file_unbound = open(unbound_annotated_results_file,"r")
                
#                     Counter = 0
#                     Content = file_unbound.read()
#                     CoList = Content.split("\n")

#                     for i in CoList:
#                         if i:
#                             Counter += 1
#                     print(f"{line.strip()},{Counter}\n")
#                     with open(f"/Users/moshe/Desktop/Research_Antigen/ispred/unbound_cutoff.csv", 'a') as f:
#                         f.write(f"{line.strip()},{Counter}\n")



















from pathlib import Path
annotated_unbound_folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/unbound_annotated_results") 

with open("/Users/moshe/Desktop/Research_Antigen/ispred/unbound_dynamic_cutoff.csv") as unbound_cutoff:
    for line in unbound_cutoff:
        protein_name = line.split("_")[0][:4]
        # print(protein_name)
        for annotated_file in annotated_unbound_folder.iterdir():
            if protein_name == str(annotated_file.name[:4]):
                unbound_annotated_results_file = annotated_file
                with open(unbound_annotated_results_file) as file_unbound:
                    file_unbound = open(unbound_annotated_results_file,"r")
                
                    Counter = 0
                    Content = file_unbound.read()
                    CoList = Content.split("\n")

                    for i in CoList:
                        if i:
                            Counter += 1
                    print(f"{line.strip()},{Counter}\n")
                    with open(f"/Users/moshe/Desktop/Research_Antigen/ispred/unbound_cutoff.csv", 'a') as f:
                        f.write(f"{line.strip()},{Counter}\n")
                    
                    