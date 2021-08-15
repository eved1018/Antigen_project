from Bio.Align.Applications import ClustalwCommandline
import subprocess
from pathlib import Path
import os


def clustalw_align_sequences(fasta_file): 
    #fasta_file = "/Users/moshe/Desktop/Research_Antigen/AlignmentWork/PerlScripts/5edk/1A2Y.txt"
    cline = ClustalwCommandline("clustalw", infile = fasta_file)
    print(cline)

    path = Path(__file__).parents[0]
    print(path)
    subprocess.run("pwd", shell= True)
    subprocess.run(str(cline), shell= True)




file = Path()
        
        if "fasta_compiled" in str(file):
            fasta_file = file
        clustalw_align_sequences(fasta_file)

