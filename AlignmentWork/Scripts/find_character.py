
from pathlib import Path
import re




"""for file in folder.iterdir():
    list1 = []
    with open(file, encoding="utf8", errors='ignore') as myfile:
        for line in myfile:
            list1.append(line.strip())
            if str(">") in list1:"""

folder = Path("/Users/moshe/Desktop/Research_Antigen/AlignmentWork/unbound_fasta")

for file in folder.iterdir():
    with open(file, encoding="utf8", errors='ignore') as myfile:
        file_text = str(myfile.read()).split("\n")

        if len(re.findall(">", str(file_text))) >= 2:
        	print(file)
                
        

