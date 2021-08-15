from pathlib import Path




def get_list_ann(bound_results):                    
    with open(bound_results) as annotated_file:
        annotated_text = str(annotated_file.read()).split("\n")
        ann_number = ""
        list1 = []
        for line in annotated_text:
            
            parts = line.split()
            try:
                ann_number = parts[3]
            
                list1.append(ann_number)
            except:
                pass
    return list1









folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/antigen_complexed/antigen_complexed_maps")

for file in folder.iterdir():
    if "map" in str(file):
        bound_map = file
        bound_name = bound_map.name[0:4]
        annotated_folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/antigen_complexed/annotated_results_updated")
        for file in annotated_folder.iterdir():
            if bound_name in str(file):
                bound_results = file




    with open(bound_map) as bound_map_file:
        bound_map_text = str(bound_map_file.read()).split("\n")
        bound_name = str(bound_map_file.name)[-18:-14]
        print(bound_name)
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
            #print(unbound_res_num_map, unbound_name)


            if bound_res_num_map in get_list_ann(bound_results):
                bound = "1"
            else:
                bound = "0"
            with open(f"/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/bound_annotated_or_not_for_residues/{bound_name}_annotated_or_not.csv", 'a') as f:
                f.write(f"{bound_res_num_map}_{bound_name},{bound_three_letter_AA},{bound} \n")
            