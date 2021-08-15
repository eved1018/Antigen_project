from pathlib import Path




def get_list_ann(unbound_results):                    
    with open(unbound_results) as annotated_file:
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









paired_folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/Pairs_Updated")
for folder in paired_folder.iterdir():

    for file in folder.iterdir():
        if "_annotated.txt" in str(file):
            unbound_results = file
            #print(unbound_results)
        if "_unbound_map.csv" in str(file):
            unbound_map = file










    with open(unbound_map) as unbound_map_file:
            unbound_map_text = str(unbound_map_file.read()).split("\n")
            unbound_name = str(unbound_map_file.name)[-20:-16]
            bound_name = str(unbound_map_file.name)[-27:-23]
            unbound_pos_num_map = ""
            unbound_res_num_map = ""
            unbound_one_letter_AA = ""
            unbound_three_letter_AA = ""
            #print(pos_num, bound_pos_num,unbound_pos_num)
            
            for line in unbound_map_text:
                parts = line.split(",")
                
                try:
                    unbound_res_num_map = parts[1]
                    unbound_three_letter_AA = parts[3]
                except IndexError:
                    pass
                #print(unbound_res_num_map, unbound_name)


                if unbound_res_num_map in get_list_ann(unbound_results):
                    bound = "1"
                else:
                    bound = "0"
                print(f"{unbound_res_num_map}_{unbound_name},{unbound_three_letter_AA},{bound} \n")
                # with open(f"/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/Unbound_annotated_in_res/{bound_name}_{unbound_name}_annotated_or_not.csv", 'a') as f:
                #     f.write(f"{unbound_res_num_map}_{unbound_name},{unbound_three_letter_AA},{bound} \n")
                #     f.close()