from pathlib import Path
import subprocess
paired_folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cv_unbound_sets/alignment/fasta")

for file in paired_folder.iterdir():
    if str(file).endswith("fasta_compiled.aln"):
        print(str(file))
        cmd = f"perl /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/AlignmentWork/PerlScripts/msa2column.pl {str(file)} > {paired_folder}/{file.name}_msa_aligned.txt" 
        subprocess.run(cmd, shell=True)