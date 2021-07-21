from pathlib import Path

file= Path("/Users/moshe/Desktop/Research_Antigen/ispred/finalized_unbound_ispred_results.txt")

with open(file) as results:
    for line in results:
        res_num = line.strip().split("_")[0]
        protein_name = line.strip().split("_")[1]
        rest = line.strip().split("_")[3]
        with open(f"/Users/moshe/Desktop/Research_Antigen/ispred/fscore_formatted_ispred_unbound_results.csv", 'a') as f:
            f.write(f"{res_num}_{protein_name}_{rest}\n")
        
