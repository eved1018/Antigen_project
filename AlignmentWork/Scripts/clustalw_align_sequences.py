from Bio.Align.Applications import ClustalwCommandline
import subprocess
from pathlib import Path
import os
def clustalw_align_sequences(fasta_file): 
    # try:
    #     os.mkdir(f"{protein}")
    # except:
    #     pass
    input_file = "/Users/moshe/Desktop/Research_Antigen/AlignmentWork/Scripts/5edk/2zvr.txt"
    cline = ClustalwCommandline("clustalw", infile = input_file)
    print(cline)

    path = Path(__file__).parents[0]
    print(path)
    #os.chdir(f"{path}/{protein}")
    subprocess.run("pwd", shell= True)
    subprocess.run(str(cline), shell= True)
protein = "5edk"
fasta_file = Path("/Users/moshe/Desktop/Research_Antigen/AlignmentWork/Scripts/5edk/2zvr.txt")
clustalw_align_sequences(fasta_file)