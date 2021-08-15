from pathlib import Path

#pos_res_file_name = "/Users/moshe/Desktop/Research_Antigen/AlignmentWork/PerlScripts/5E8E.map"
import pandas as pd
from pandas.core.indexes.base import Index
unbound_map = "/Users/moshe/Desktop/Research_Antigen/AlignmentWork/PerlScripts/5edk.txt"
bound_map = "/Users/moshe/Desktop/Research_Antigen/AlignmentWork/PerlScripts/5E8E.map"
annotated_results_file = "/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/antigen_complexed/annotated_results_updated/5E8E.H.txt"
msa2column_file = "/Users/moshe/Desktop/Research_Antigen/AlignmentWork/PerlScripts/testmsa.aln" #bound on left, unbound on right

def get_annotated_num(annotated_results_file):
    with open(annotated_results_file) as annoted_num_file: #annotated_results_6_column
        annotated_text = str(annoted_num_file.read()).split("\n")
        annotated_res_num = ""
        list_annotated_num = []
        for line in annotated_text:
            parts = line.split()
            try:
                annotated_res_num = parts[3]
                annotated_res_name = parts[4]
                unbound_name = parts[5] 
            except IndexError:
                pass
            list_annotated_num.append(annotated_res_num)
        return(list_annotated_num)


def find_corresponding_unbound_pos_num(msa2column_file):
    with open(msa2column_file) as alignment_file: #msa2colum, pos0 ... pos1...
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
            


def main(unbound_map, bound_map):
    results_dic = {}
    with open(bound_map) as pos_res_file_name: #bound .map file
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
            if res_num in get_annotated_num(annotated_results_file):
                #print(res_num, pos_num)
                #print(pos_num)
                with open(msa2column_file) as alignment_file:
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
                            
                            with open(unbound_map) as unbound_map_file: #unbound .map file
                                unbound_map_text = str(unbound_map_file.read()).split("\n")
                                unbound_pos_num_map = ""
                                unbound_res_num_map = ""
                                unbound_one_letter_AA = ""
                                unbound_three_letter_AA = ""
                                #print(pos_num, bound_pos_num,unbound_pos_num)
                                
                                unbound_name = unbound_map[-8:-4] #CHECK THIS WHEN PIPELINE COMES ALONG!!!!!!!
                                #print(unbound_name)
                                for line in unbound_map_text:
                                    parts = line.split()
                                    
                                    try:
                                        unbound_pos_num_map = parts[0]
                                        unbound_res_num_map = parts[1]
                                        unbound_one_letter_AA = parts[2]
                                        unbound_three_letter_AA = parts[3]
                                        
                                        #print(unbound_res_num_map , unbound_pos_num)
                                        if unbound_pos_num == unbound_pos_num_map and unbound_one_letter_AA == one_letter_AA:
                                            #print(unbound_res_num_map, unbound_three_letter_AA)
                                            #print(f"{unbound_res_num_map}_{unbound_name}, {unbound_three_letter_AA}")
                                            #unbound_three_letter_AA = unbound_three_letter_AA + "\n"
                                            results_dic[unbound_res_num_map] = unbound_three_letter_AA
                                    except IndexError:
                                        pass
    df=pd.DataFrame.from_dict(results_dic, orient= "index").reset_index()
    df.columns = ["unbound_res_num_map", "unbound_three_letter_AA"]   
    df.to_csv("/Users/moshe/Desktop/Research_Antigen/AlignmentWork/Scripts/1FE8TEST/testalt_pandas.csv", index=False)



                                            # """with open("/Users/moshe/Desktop/Research_Antigen/AlignmentWork/Scripts/1FE8TEST/testalt.txt", 'a') as f:
                                            #     f.write(f"{unbound_res_num_map}\t{unbound_three_letter_AA}")"""
                                    
main(unbound_map, bound_map)
