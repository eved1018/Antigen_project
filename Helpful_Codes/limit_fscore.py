with open ("/Users/moshe/Desktop/Research_Antigen/Vorffip/Unbound_work_duplicate/Data/unbound_vorffip_results.txt") as infile:
    for line in infile:
        part_a = line.strip().split(",")[0]
        parb_b = line.strip().split(",")[2]
        with open ("/Users/moshe/Desktop/Research_Antigen/Helpful_Codes/limit_fscore.txt", "a") as outfile:
            outfile.write(f"{part_a},0.00,{parb_b}\n")