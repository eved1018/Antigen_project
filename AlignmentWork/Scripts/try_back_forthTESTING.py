from pathlib import Path

#pos_res_file_name = "/Users/moshe/Desktop/Research_Antigen/AlignmentWork/PerlScripts/5E8E.map"

def get_annotated_num():
    with open("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/antigen_complexed/annotated_results_updated/1FE8.A.txt") as annoted_num_file: #annotated_results_6_column
        annotated_text = str(annoted_num_file.read()).split("\n")
        annotated_res_num = ""
        list_annotated_num = []
        for line in annotated_text:
            parts = line.split()
            try:
                annotated_res_num = parts[3]
                annotated_res_name = parts[4] 
            except IndexError:
                pass
            list_annotated_num.append(annotated_res_num)
        return(list_annotated_num)


def find_corresponding_unbound_pos_num():
    with open("/Users/moshe/Desktop/Research_Antigen/AlignmentWork/PerlScripts/1FE8_msa.aln") as alignment_file: #msa2colum, pos0 ... pos1...
        alignment_text = str(alignment_file.read()).split("\n")
        bound_pos_num = ""
        unbound_pos_num = ""
        list_bound_and_unbound_pos_num = []
        try:
            for line in alignment_text:
                parts = line.split()
                bound_pos_num = parts[0]
                unbound_pos_num = parts[2]
                list_bound_and_unbound_pos_num.append(bound_pos_num, unbound_pos_num)
        except IndexError:
            pass
        return list_bound_and_unbound_pos_num
            



with open("/Users/moshe/Desktop/Research_Antigen/AlignmentWork/PerlScripts/1FE8.map") as pos_res_file_name: #bound .map file
    file_text = str(pos_res_file_name.read()).split("\n")
    pos_num = ""
    res_num = ""
    one_letter_AA = ""
    three_letter_AA = ""
    list_res_num = []
    for line in file_text:
        parts = line.split()
        try:
            pos_num = parts[0]
            res_num = parts[1]
            one_letter_AA = parts[2]
        except IndexError:
            pass
        if res_num in get_annotated_num():
            #print(res_num, pos_num)
            #print(pos_num)
            with open("/Users/moshe/Desktop/Research_Antigen/AlignmentWork/PerlScripts/1FE8_msa.aln") as alignment_file:
                alignment_text = str(alignment_file.read()).split("\n")
                bound_pos_num = ""
                unbound_pos_num = ""
                list_bound_and_unbound_pos_num = []
                for line in alignment_text:
                    parts = line.split()
                    try:
                        bound_pos_num = parts[0]
                        unbound_pos_num = parts[2]
                    except IndexError:
                        pass
                    if pos_num == bound_pos_num:
                        
                        with open("/Users/moshe/Desktop/Research_Antigen/AlignmentWork/PerlScripts/1ATZ.map") as unbound_map_file: #unbound .map file
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
                                    #print(unbound_res_num_map , unbound_pos_num)
                                    if unbound_pos_num == unbound_pos_num_map and unbound_one_letter_AA == one_letter_AA:
                                        print(unbound_res_num_map, unbound_three_letter_AA)
                                        unbound_three_letter_AA = unbound_three_letter_AA + "\n"
                                        with open("/Users/moshe/Desktop/Research_Antigen/AlignmentWork/Scripts/1FE8TEST/test.txt", 'a') as f:
                                            f.write(f"{unbound_res_num_map} {unbound_three_letter_AA}")
                                except IndexError:
                                    pass
