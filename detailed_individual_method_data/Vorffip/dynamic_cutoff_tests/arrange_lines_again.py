from pathlib import Path
file_15 = Path("/Users/moshe/Downloads/arranged_lines_f_score_cutoff_15.txt")
file_17 = Path("/Users/moshe/Downloads/arranged_lines_f_score_cutoff_17.txt")
file_20 = Path("/Users/moshe/Downloads/arranged_lines_f_score_cutoff_20.txt")
file_22 = Path("/Users/moshe/Downloads/arranged_lines_f_score_cutoff_22.txt")

with open (file_15) as test_15:
    for line in (test_15):
        if line.startswith("bound"):
            protein_name = line[9:13]
            new_line = line[14:]
            number_annotated = new_line.split(",")[0]
            TP_num = new_line.split(",")[1]
            f_score = new_line.split(",")[2]
            with open (file_15) as test_15:
                for item in (test_15):
                    if item.startswith("unbound"):
                        protein_name_1 = item[9:13]
                        if protein_name == protein_name_1:
                            new_item = item[14:]
                            number_annotated_item = new_item.split(",")[0]
                            TP_num_ite = new_item.split(",")[1]
                            TP_num_item = TP_num_ite.strip()
                            f_score_item = new_item.split(",")[2]
                            #for 17 bound
                            with open (file_17) as test_17:
                                for thing in (test_17):
                                    if thing.startswith("bound"):
                                        protein_name_thing = thing[9:13]
                                        if protein_name_thing == protein_name_1:
                                            new_thing = thing[14:]
                                            number_annotated_thing = new_thing.split(",")[0]
                                            TP_num_thing = new_thing.split(",")[1]
                                            f_score_thing = new_thing.split(",")[2]
                                            #for 17 unbound
                                            with open (file_17) as test_17:
                                                for cookie in (test_17):
                                                    if cookie.startswith("unbound"):
                                                        protein_name_17 = cookie[9:13]
                                                        if protein_name_17 == protein_name_1:
                                                            new_cookie = cookie[14:]
                                                            TP_num_cookie = new_cookie.split(",")[1]
                                                            f_score_cookie = new_cookie.split(",")[2]
                                                            #for 20 bound
                                                                                            
                                                            with open (file_20) as test_20:
                                                                for tonka in (test_20):
                                                                    if tonka.startswith("bound"):
                                                                        protein_name_tonka = tonka[9:13]
                                                                        if protein_name_tonka == protein_name_1:
                                                                            new_tonka = tonka[14:]
                                                                            number_annotated_tonka = new_tonka.split(",")[0]
                                                                            TP_num_tonka = new_tonka.split(",")[1]
                                                                            f_score_tonka = new_tonka.split(",")[2]
                                                                            #for 20 unbound
                                                                            with open (file_20) as test_20:
                                                                                for batter in (test_20):
                                                                                    if batter.startswith("unbound"):
                                                                                        protein_name_batter = batter[9:13]
                                                                                        if protein_name_batter == protein_name_1:
                                                                                            new_batter = batter[14:]
                                                                                            TP_num_batter = new_batter.split(",")[1]
                                                                                            f_score_batter = new_batter.split(",")[2]
                                                                                            
                                                                                            with open (file_22) as test_22:
                                                                                                for tonka_1 in (test_22):
                                                                                                    if tonka_1.startswith("bound"):
                                                                                                        protein_name_tonka_1 = tonka_1[9:13]
                                                                                                        if protein_name_tonka_1 == protein_name_1:
                                                                                                            new_tonka_1 = tonka_1[14:]
                                                                                                            number_annotated_tonka_1 = new_tonka_1.split(",")[0]
                                                                                                            TP_num_tonka_1 = new_tonka_1.split(",")[1]
                                                                                                            f_score_tonka_1 = new_tonka_1.split(",")[2]
                                                                                                            #for 22 unbound
                                                                                                            with open (file_22) as test_22:
                                                                                                                for batter_1 in (test_22):
                                                                                                                    if batter_1.startswith("unbound"):
                                                                                                                        protein_name_batter_1 = batter_1[9:13]
                                                                                                                        if protein_name_batter_1 == protein_name_1:
                                                                                                                            new_batter_1 = batter_1[14:]
                                                                                                                            TP_num_batter_1 = new_batter_1.split(",")[1]
                                                                                                                            f_score_batter_1 = new_batter_1.split(",")[2]    
                                                                                                                            with open ("/Users/moshe/Desktop/Research_Antigen/Vorffip/arrange_cutoff.csv", "a") as fp:
                                                                                                                                fp.write(f"{protein_name.strip()},{number_annotated.strip()},{TP_num.strip()},{f_score.strip()},{TP_num_item.strip()},{f_score_item.strip()},{TP_num_thing.strip()},{f_score_thing.strip()},{TP_num_cookie.strip()},{f_score_cookie.strip()},{TP_num_tonka.strip()},{f_score_tonka.strip()},{TP_num_batter.strip()},{f_score_batter.strip()},{TP_num_tonka_1.strip()},{f_score_tonka_1.strip()},{TP_num_batter_1.strip()},{f_score_batter_1.strip()}\n")
                  