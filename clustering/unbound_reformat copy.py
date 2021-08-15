from pathlib import Path




def get_list_ann(file):                    
    with open(file) as annotated_file:
        annotated_text = str(annotated_file.read()).split("\n")
        ann_number = ""
        list1 = []
        for line in annotated_text:
            
            parts = line.split()
            try:
                ann_number = parts[0]
            
                list1.append(ann_number)
            except:
                pass
    return list1

folder_map = Path("/Users/moshe/Desktop/Research_Antigen/AlignmentWork/Bound_map_files")
folder = Path("/Users/moshe/Desktop/Research_Antigen/clustering/predicted_vorffip_annotated")

for file in folder.iterdir():
    protein_name = file.name[:4]
    for item in folder_map.iterdir():
        item_protein_name = item.name[:4]
        if protein_name == item_protein_name:




            with open(item) as bound_map_file:
                        bound_map_text = str(bound_map_file.read()).split("\n")
                        bound_pos_num_map = ""
                        bound_res_num_map = ""
                        bound_one_letter_AA = ""
                        bound_three_letter_AA = ""
                        #print(pos_num, bound_pos_num,unbound_pos_num)
                        
                        for line in bound_map_text:
                            parts = line.split(",")
                            
                            try:
                                bound_res_num_map = parts[1]
                                bound_three_letter_AA = parts[3]
                            except IndexError:
                                pass
                            print(bound_res_num_map, protein_name)


                            if bound_res_num_map in get_list_ann(file):
                                bound = "1"
                            else:
                                bound = "0"
                            with open(f"/Users/moshe/Desktop/Research_Antigen/clustering/vorffip_annotated_or_not/{protein_name}_vorffip_annotated_or_not.csv", 'a') as f:
                                f.write(f"{bound_res_num_map}_{item_protein_name},{bound_three_letter_AA},{bound} \n")
                                f.close()













# paired_folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/Pairs_Updated_copy")
# for folder in paired_folder.iterdir():

#     for file in folder.iterdir():
#         if "_annotated.txt" in str(file):
#             unbound_results = file
#             #print(unbound_results)
#         if "_unbound_map.csv" in str(file):
#             unbound_map = file










    # with open(unbound_map) as unbound_map_file:
    #         unbound_map_text = str(unbound_map_file.read()).split("\n")
    #         unbound_name = str(unbound_map_file.name)[-20:-16]
    #         bound_name = str(unbound_map_file.name)[-27:-23]
    #         unbound_pos_num_map = ""
    #         unbound_res_num_map = ""
    #         unbound_one_letter_AA = ""
    #         unbound_three_letter_AA = ""
    #         #print(pos_num, bound_pos_num,unbound_pos_num)
            
    #         for line in unbound_map_text:
    #             parts = line.split(",")
                
    #             try:
    #                 unbound_res_num_map = parts[1]
    #                 unbound_three_letter_AA = parts[3]
    #             except IndexError:
    #                 pass
    #             #print(unbound_res_num_map, unbound_name)


    #             if unbound_res_num_map in get_list_ann(unbound_results):
    #                 bound = "1"
    #             else:
    #                 bound = "0"
    #             with open(f"/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/Unbound_annotated_in_res/{bound_name}_{unbound_name}_annotated_or_not.csv", 'a') as f:
    #                 f.write(f"{unbound_res_num_map}_{unbound_name},{unbound_three_letter_AA},{bound} \n")
    #                 f.close()