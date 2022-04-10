from pathlib import Path




#fix 61A...


vorffip_folder = Path("/Users/moshe/Desktop/Research_Antigen/Vorffip/Unbound_work/Data/unbound_pdbs_reformatted")
for file in vorffip_folder.iterdir():
    with open(file) as vorffip_file:
        vorffip_protein_name1 = file.name[:4]
        vorffip_protein_name2 = file.name[7:11]
        vorffip_protein_name = f"{vorffip_protein_name1}_{vorffip_protein_name2}"
        print(vorffip_protein_name)
        for line in vorffip_file:
            vorffip_res = line.split("_")[0]
            annotated_folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/Unbound_annotated_or_not_for_residues")
            for item in annotated_folder.iterdir():
                ann_protein_name = item.name[:9]
                if ann_protein_name == vorffip_protein_name:
                    with open(item) as annotated_file:
                        for line1 in annotated_file:
                         
                            annotated_res_num = line1.split("_")[0]
                            if_annotated = line1.split(",")[2]
                            if annotated_res_num== vorffip_res:
                                
                                with open(f"/Users/moshe/Desktop/Research_Antigen/Vorffip/Unbound_work/Data/unbound_with_annotated/{ann_protein_name}_vorffip_results_with_annotated.txt", 'a') as f:
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