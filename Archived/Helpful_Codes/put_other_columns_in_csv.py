from pathlib import Path

with open ("/Users/moshe/Desktop/Research_Antigen/Helpful_Codes/newer_bound_unbound_lengths_and_fscore.csv") as infile:
    for line in infile:
        original_protein_name = line.strip()[:4]
        with open ("/Users/moshe/Desktop/Research_Antigen/ispred/unbound_ispred_fscores.txt") as dockpred:
            for item in dockpred:
                dockpred_protein_name = item.strip().split(",")[0]
                if dockpred_protein_name == original_protein_name:
                    f_score = item.strip().split(",")[3]
                    with open ("/Users/moshe/Desktop/Research_Antigen/Helpful_Codes/newest_bound_unbound_lengths_and_fscore.csv", "a") as outfile:
                        outfile.write(f"{line.strip()},{f_score}\n")
