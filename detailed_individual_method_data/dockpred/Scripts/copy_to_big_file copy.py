import glob
from pathlib import Path

ispred_folder = Path("/Users/moshe/Desktop/Research_Antigen/dockpred/bound_dockpred_results_annotated")
with open("/Users/moshe/Desktop/Research_Antigen/dockpred/bound_compiled_results_dockpred.txt", "w") as outfile:
    for file in ispred_folder.iterdir():
    
        with open(file) as infile:
            contents = infile.read()
            outfile.write(f"{contents}\n")
