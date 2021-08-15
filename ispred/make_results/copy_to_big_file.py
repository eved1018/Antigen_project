import glob
from pathlib import Path

ispred_folder = Path("/Users/moshe/Desktop/Research_Antigen/Meta-ppisp_copy/unbound_metappisp_annotated")
with open("/Users/moshe/Desktop/Research_Antigen/Meta-ppisp_copy/unbound_metappisp_results.txt", "w") as outfile:
    for file in ispred_folder.iterdir():
    
        with open(file) as infile:
            contents = infile.read()
            outfile.write(f"{contents}\n")
