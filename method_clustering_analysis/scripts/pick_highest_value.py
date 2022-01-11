import csv
from pathlib import Path
import pandas as pd
import re
folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/test_data_ispred_unbound/patches")
folder_2 = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_data/unbound_annotated_results_copy")

def getkey(row):
    if not row.strip(): return 0 # insurance against blank lines
    data = row.split(',')
    return float(data[-1])

global_TP = 0
global_FN = 0
global_FP = 0

for file in folder.iterdir():
    with open(file) as f:
        lines = sorted(f, key=getkey)
        list_1 = []
        list_2 = []
        list_3 = []
        list_4 = []
        list_5 = []
        list_6 = []
        list_7 = []
        list_8 = []
        list_9 = []
        list_10 = []
        list_11 = []
        list_12 = []

        list_1 = (lines[-1]).strip().split(",")[1:-1]
        list_2 = (lines[-2]).strip().split(",")[1:-1]
        list_3 = (lines[-3]).strip().split(",")[1:-1]
        list_4 = (lines[-4]).strip().split(",")[1:-1]
        list_5 = (lines[-5]).strip().split(",")[1:-1]
        list_6 = (lines[-6]).strip().split(",")[1:-1]
        list_7 = (lines[-7]).strip().split(",")[1:-1]
        list_8 = (lines[-8]).strip().split(",")[1:-1]
        list_9 = (lines[-9]).strip().split(",")[1:-1]
        list_10 = (lines[-10]).strip().split(",")[1:-1]
        list_11 = (lines[-11]).strip().split(",")[1:-1]
        list_12 = (lines[-12]).strip().split(",")[1:-1]




        with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/ispred/unbound_cutoff copy.csv") as infile_4:
            for fire_medic in infile_4:
                if fire_medic.strip().split(",")[0] == file.name[:4]:
                    cutoff = fire_medic.strip().split(",")[2]


                    combined_list = (set().union(list_1, list_2))
                    s = ''.join(combined_list)
                    s = re.sub(r'[\'"\[\]]', ' ', s)
                    #print(s)
                    l = s.split()
                    combined_list_final = [str(i) for i in l]

                    tot_TP = 0
                    number_predicted = len(combined_list_final)

                    if int(number_predicted) < int(int(cutoff) -5):
                        combined_list = (set().union(list_1, list_2, list_3))
                        s = ''.join(combined_list)
                        s = re.sub(r'[\'"\[\]]', ' ', s)
                        #print(s)
                        l = s.split()
                        combined_list_final = [str(i) for i in l]
                        if len(combined_list_final) < int(int(cutoff) -5):
                            combined_list = (set().union(list_1, list_2, list_3, list_4))
                            s = ''.join(combined_list)
                            s = re.sub(r'[\'"\[\]]', ' ', s)
                            #print(s)
                            l = s.split()
                            combined_list_final = [str(i) for i in l]
                            if len(combined_list_final) < int(int(cutoff) -5):
                                combined_list = (set().union(list_1, list_2, list_3, list_4, list_5))
                                s = ''.join(combined_list)
                                s = re.sub(r'[\'"\[\]]', ' ', s)
                                #print(s)
                                l = s.split()
                                combined_list_final = [str(i) for i in l]
                                if len(combined_list_final) < int(int(cutoff) - 5):
                                    combined_list = (set().union(list_1, list_2, list_3, list_4, list_5, list_6))
                                    s = ''.join(combined_list)
                                    s = re.sub(r'[\'"\[\]]', ' ', s)
                                    #print(s)
                                    l = s.split()
                                    combined_list_final = [str(i) for i in l]
                                    if len(combined_list_final) < int(int(cutoff) -5):
                                        combined_list = (set().union(list_1, list_2, list_3, list_4, list_5, list_6, list_7))
                                        s = ''.join(combined_list)
                                        s = re.sub(r'[\'"\[\]]', ' ', s)
                                        #print(s)
                                        l = s.split()
                                        combined_list_final = [str(i) for i in l]
                                        if len(combined_list_final) < int(int(cutoff) -5):
                                            combined_list = (set().union(list_1, list_2, list_3, list_4, list_5, list_6, list_7, list_8))
                                            s = ''.join(combined_list)
                                            s = re.sub(r'[\'"\[\]]', ' ', s)
                                            #print(s)
                                            l = s.split()
                                            combined_list_final = [str(i) for i in l]
                                            if len(combined_list_final) < int(int(cutoff) -5):
                                                combined_list = (set().union(list_1, list_2, list_3, list_4, list_5, list_6, list_7, list_8,list_9))
                                                s = ''.join(combined_list)
                                                s = re.sub(r'[\'"\[\]]', ' ', s)
                                                #print(s)
                                                l = s.split()
                                                combined_list_final = [str(i) for i in l]
                                                if len(combined_list_final) < int(int(cutoff) -5):
                                                    combined_list = (set().union(list_1, list_2, list_3, list_4, list_5, list_6, list_7, list_8,list_9, list_10))
                                                    s = ''.join(combined_list)
                                                    s = re.sub(r'[\'"\[\]]', ' ', s)
                                                    #print(s)
                                                    l = s.split()
                                                    combined_list_final = [str(i) for i in l]

                                                    if len(combined_list_final) < int(int(cutoff) -5):
                                                        combined_list = (set().union(list_1, list_2, list_3, list_4, list_5, list_6, list_7, list_8,list_9, list_10,list_11))
                                                        s = ''.join(combined_list)
                                                        s = re.sub(r'[\'"\[\]]', ' ', s)
                                                        #print(s)
                                                        l = s.split()
                                                        combined_list_final = [str(i) for i in l]

                                                        if len(combined_list_final) < int(int(cutoff) -5):
                                                            combined_list = (set().union(list_1, list_2, list_3, list_4, list_5, list_6, list_7, list_8,list_9, list_10,list_11, list_12))
                                                            s = ''.join(combined_list)
                                                            s = re.sub(r'[\'"\[\]]', ' ', s)
                                                            #print(s)
                                                            l = s.split()
                                                            combined_list_final = [str(i) for i in l]
                                                        else:
                                                            pass


                                                    else:
                                                        pass
                                                    


                                                else:
                                                    pass
                                            
                                            
                                            else:
                                                pass
                                                
                                        else:
                                            pass
                                    else:
                                        pass
                                else:
                                    pass
                        
                            else:
                                pass
                        
                        else: 
                            pass                            


                    else: 
                        pass

                    # print(file.name[:4],len(combined_list))

                    # set_1 = set(list_1)
                    # set_2 = set(list_2)
                    
                    # list_2_items_not_in_list_1 = list(set_2 - set_1)
                    # combined_list = list_1 + list_2_items_not_in_list_1


                    combined_list_final = list(set(combined_list_final))

                    for item in folder_2.iterdir():
                        if item.name[:4] == file.name[:4]:
                            for i2 in combined_list_final:
                                with open (item) as infile_2:
                                    for line_2 in infile_2:
                                        if str(i2.strip()) == str(line_2.strip().split(" ")[0]):

                                            tot_TP = tot_TP + 1
                    
                    with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/ispred/unbound_ispred_fscores.txt") as infile_3:
                        for tonka in infile_3:
                            protein = tonka.strip().split(",")[0]
                            if protein == file.name[:4]:
                                tot_annotated = tonka.strip().split(",")[1]
                                old_fscore = tonka.strip().split(",")[3]

                                Fn = int(tot_annotated) - int(tot_TP)
                                Fp = int(len(combined_list_final)) - int(tot_TP)
                                bottom_half= float(tot_TP + (.5*Fn) +(Fp*.5))
                                fscore = round((tot_TP/bottom_half),4)
                                
                                print(f"{protein},{fscore},{old_fscore},{cutoff},{len(combined_list_final)},{tot_TP}")
                                global_TP = tot_TP + global_TP
                                global_FN = Fn + global_FN
                                global_FP = Fp + global_FP
                                pred_res_list = "+".join(combined_list_final)
                                with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/test_data_ispred_unbound/patch_predicted_residues/{protein}.txt", "a") as outfile:
                                    outfile.write(pred_res_list)


bottom_half_global= float(global_TP + (.5*global_FN) +(global_FP*.5))
fscore_global = round((global_TP/bottom_half_global),4)

print(fscore_global)