with open("/Users/moshe/Desktop/Research_Antigen/Helpful_Codes/limit_fscore.txt", "r") as remove:
    for line in remove:
        new_line = line.strip().split(".")[0]
        new_line_2 = line.strip().split("_")[3]
        with open ("/Users/moshe/Desktop/Research_Antigen/Vorffip/Unbound_work_duplicate/Data/limit_fscore.txt", "a") as outfile:
            outfile.write(f"{new_line}_{new_line_2}\n")
        