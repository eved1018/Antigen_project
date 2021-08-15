from pathlib import Path





def find_bound():
    with open("/Users/moshe/Desktop/Research_Antigen/AlignmentWork/Scripts/1FE8TEST/1ATZ.txt") as ann_num_file:
        ann_num_text = str(ann_num_file.read()).split("\n")
        ann_number = ""
        list1 = []
        for line in ann_num_text:
            
            parts = line.split()

            try:
                ann_number = parts[0]
                list1.append(ann_number)
                print(list1)
            except:
                pass
            
        
            while unbound_res_num_map in ann_number:
                bound = "1"
                return bound
            else:
                bound = "0" 
                return bound
        return list1


        
        











with open("/Users/moshe/Desktop/Research_Antigen/AlignmentWork/PerlScripts/1ATZ.map") as unbound_map_file: #unbound .map file
    unbound_name = str(unbound_map_file.name)[-8:-4]
    unbound_map_text = str(unbound_map_file.read()).split("\n")
    unbound_pos_num_map = ""
    unbound_res_num_map = ""
    unbound_one_letter_AA = ""
    unbound_three_letter_AA = ""
    #print(pos_num, bound_pos_num,unbound_pos_num)
    
    for line in unbound_map_text:
        parts = line.split()
        
        try:
            unbound_pos_num_map = parts[0]
            unbound_res_num_map = parts[1]
            unbound_one_letter_AA = parts[2]
            unbound_three_letter_AA = parts[3]

            #print(f"{unbound_res_num_map}_{unbound_name}, {find_bound()} \n")
        except IndexError:
            pass
        #print(unbound_res_num_map)
find_bound()    
        











