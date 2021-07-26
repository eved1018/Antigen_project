import glob
from pathlib import Path

ispred_folder = Path("/Users/moshe/Desktop/Research_Antigen/Meta-ppisp/meta-ppisp_bound_formatted_results")
with open("/Users/moshe/Desktop/Research_Antigen/Meta-ppisp/meta_ppisp_bound_results_271.txt", "w") as outfile:
    for file in ispred_folder.iterdir():
    
        with open(file) as infile:
            contents = infile.read()
            outfile.write(f"{contents}\n")
