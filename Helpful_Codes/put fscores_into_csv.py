from pathlib import Path


with open ("/Users/moshe/Desktop/Research_Antigen/Helpful_Codes/bound_with_fscore.csv") as csv_file:
    for line in csv_file:
        protein_bound_name = line.strip().split("_")[0]
        #print(protein_bound_name)
        with open ("/Users/moshe/Desktop/Research_Antigen/Helpful_Codes/195_bound_fscore.txt") as f_score_file:
            for item in f_score_file:
                protein_bound_name_2 = item.strip().split(",")[0]
                f_score = item.strip().split(",")[3]
                if protein_bound_name_2 == protein_bound_name:
                    # print(f"{line.strip()},{f_score}")
                    with open ("/Users/moshe/Desktop/Research_Antigen/Helpful_Codes/bound_unbound_lengths_and_fscore.csv", "a") as outfile:
                        outfile.write(f"{line.strip()},{f_score}\n")
