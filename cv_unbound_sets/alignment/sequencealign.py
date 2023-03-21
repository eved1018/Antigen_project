from Bio.Align.Applications import ClustalwCommandline
import subprocess
from pathlib import Path
import os

def clustalw_align_sequences(fasta_file): 
    #fasta_file = "/Users/moshe/Desktop/Research_Antigen/AlignmentWork/PerlScripts/5edk/1A2Y.txt"
    cline = ClustalwCommandline("clustalw", infile = fasta_file)
    print(str(cline))

    path = Path(__file__).parents[0]
    subprocess.run("pwd", shell= True)
    subprocess.run(str(cline), shell= True)



folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cv_unbound_sets/alignment/fasta")
for file in folder.iterdir():
        
    if "fasta_compiled" in str(file.name):
        fasta_file = file
        clustalw_align_sequences(fasta_file)

