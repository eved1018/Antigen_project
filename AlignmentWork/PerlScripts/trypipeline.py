import subprocess
from pathlib import Path
import os



folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/antigen_complexed/antigen_pdbs_copy")
for file in folder.iterdir():
    if str(file).endswith(".pdb"):
        pipe = subprocess.Popen(["perl", "extractSeqPDB.pl", file])

"""
paired_folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/Pairs_Updated")
for folder in paired_folder.iterdir():
    for file in folder.iterdir():
        if str(file).endswith("fasta_compiled.aln"):
            print(str(file))
            cmd = f"perl /Users/moshe/Desktop/Research_Antigen/AlignmentWork/PerlScripts/msa2column.pl {str(file)} > {folder}/msa_aligned.txt" 
            subprocess.run(cmd, shell=True)

"""



#need to get header... wait for output of above?
"""
# def get_fasta_from_map():
#     with open("/Users/moshe/Desktop/Research_Antigen/AlignmentWork/PerlScripts/5edk.map") as map_file:
#         map_text = str(map_file.read()).split("\n")
#         one_letter_residue = ""
#         out_str = ""
#         list_fasta = []
#         for line in map_text:
#             try:
#                 parts = line.split()
#                 one_letter_residue = parts[2] 
#                 list_fasta.append(one_letter_residue)
#             except IndexError:
#                 pass
#         return(out_str.join(list_fasta))
# #print(get_fasta_from_map())
# """