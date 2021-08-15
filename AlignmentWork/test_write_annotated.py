from pathlib import Path

def main():
    list1 = []
    with open("/Users/moshe/Desktop/Research_Antigen/AlignmentWork/PerlScripts/5edk.txt") as unbound_map_file: #unbound .map file
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
                list1.append(unbound_res_num_map)
            except:
                pass
        return list1

joined_string = main()
#print(joined_string)

with open("/Users/moshe/Desktop/Research_Antigen/AlignmentWork/list1.txt") as annotated_num_file:
    list1 = []
    for line in annotated_num_file:
        parts = line.split()
        
        try:
            unbound_annotated_num = parts[0]
            list1.append(unbound_annotated_num) 
        except:
            pass
    #print(list1)
    #print(joined_string)
        list_1 =[]
        for line in joined_string:
            
                #print(res_num)
            
            if line in list1:
                bound = "1"
            else:
                bound = "0"
            cookie = line, bound
            list_1.append(cookie)
        
        cookie1 = str(list_1)
        print(cookie1)
        with open(Path(f"/Users/moshe/Desktop/Research_Antigen/AlignmentWork/list__1.csv"),'w', newline= "\n") as outfile:
            outfile.write(cookie1)
