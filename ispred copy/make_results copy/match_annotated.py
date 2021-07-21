from pathlib import Path

ispred_folder = Path("/Users/moshe/Desktop/Research_Antigen/ispred/ispred_bound_results_pdb")
for file in ispred_folder.iterdir():
    with open(file) as ispred_file:
        ispred_protein_name = file.name[:4]
        for line in ispred_file:
            ispred_res = line.split("_")[0]
            annotated_folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/bound_annotated_or_not_for_residues")
            for item in annotated_folder.iterdir():
                ann_protein_name = item.name[:4]
                if ann_protein_name == ispred_protein_name:
                    with open(item) as annotated_file:
                        for line1 in annotated_file:
                         
                            annotated_res_num = line1.split("_")[0]
                            if_annotated = line1.split(",")[2]
                         #print(item.name,file.name)
                            if annotated_res_num == ispred_res: 
                                with open(f"/Users/moshe/Desktop/Research_Antigen/ispred/ispred_annotated_results/{ann_protein_name}_ispred_results_with_annotated.txt", 'a') as f:
                                    f.write(f"{line.strip()},{if_annotated.strip()} \n")
                            

                        
                    





            # for line2 in file2:
            #     res2 = line2.split("_")[0]

            #     if res == res2:
            #         annotated_val = line2.split(",")[-1].strip()
            #         break

        # print(f"{line}, {annotated_val}")




# with open("file.txt") as file, open("file2.txt") as file2, open("file3.txt", 'w') as out_file: 
#         for line in file:
#             res = line.split("_")[0]
#             for line2 in file2:
#                 res2 = line2.split("_")[0]

#                 if res == res2:
#                     annotated_val = line2.split(",")[-1].strip()
#                     break