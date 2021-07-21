import glob
from pathlib import Path

ispred_folder = Path("/Users/moshe/Desktop/Research_Antigen/ispred/ispred_unbound_reformatted/")
with open("/Users/moshe/Desktop/Research_Antigen/ispred/finalized_unbound_ispred_results.txt", "w") as outfile:
    for file in ispred_folder.iterdir():
    
        with open(file) as infile:
            contents = infile.read()
            outfile.write(f"{contents}\n")
