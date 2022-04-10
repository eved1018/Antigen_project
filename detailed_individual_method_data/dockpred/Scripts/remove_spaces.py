from pathlib import Path

with open ("/Users/moshe/Desktop/Research_Antigen/dockpred/unbound_antigen_docking_results") as infile:
    for line in infile:
        first_half = line.split("	")[0]
        second_half = line.split("	")[1]
        with open ("/Users/moshe/Desktop/Research_Antigen/dockpred/unbound_dockpred_results.txt", "a") as outfile:
            outfile.write(f"{first_half.strip()},{second_half.strip()}\n")