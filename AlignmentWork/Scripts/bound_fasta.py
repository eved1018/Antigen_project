from os import path
from pathlib import Path
import requests
def get_chain(line):
    temp_portion = line.split("|")[1]  # Chains A...
    
    if temp_portion.startswith("Chains"):
        if "," in temp_portion:
            chain = temp_portion.split(",")[0]      
        else:
            chain = temp_portion
        chain = chain[7]
        # temp_portion = temp_portion[7:8]
        # all_chains = temp_portion.split(",")
        
        #return all_chains
        # print(temp_portion[7:8])
        return chain
        # return temp_portion[7]
    else:
        print("problem")
        # print(temp_portion[6])
        
        return [temp_portion[6]]

# def get_fasta(bound_name, chain):
#     res = requests.get(f"https://www.rcsb.org/fasta/entry/{bound_name}/display")
#     res.raise_for_status()

#     fasta_text = res.text.split("\n")
#     fasta_sequence = ""
#     begin_copying = False

#     for line in fasta_text:
#         if line.startswith(">"):
#                 fasta_sequence = line
#                 current_chains = get_chain(line)
                
#                 begin_copying = (chain in current_chains)
                
                
#                       # boolean value
#                 #print(begin_copying)
#                 #its copying the last line in fasta...

#         else:
#             if begin_copying:
#                 fasta_sequence += line
                
#     print(fasta_sequence)
#     print(chain)
#     return fasta_sequence


def main():
    unbound_dir = Path("/Users/moshe/Desktop/Research_Antigen/Updated PDBs and Data/antigen_uncomplexed_pdbs")

    """for unbound_file in unbound_dir.iterdir():
        
        if unbound_file.name.endswith(".pdb"):
            pass
        unbound_protein_name = unbound_file.name[7:11]
        bound_name = unbound_file.name[0:4]"""

    with open("/Users/moshe/Desktop/Research_Antigen/Updated PDBs and Data/Researcher-RCSB Correlating Chains/chain_mapping.txt") as chain_mapping:
        chain_mapping_text = str(chain_mapping.read()).split("\n")
        bound_name = ""
        chain = ""
        for line in chain_mapping_text:
            parts = line.split()
            bound_name = parts[0]
        
            # print(bound_name)
            
            researcher_chain = parts[1]

            chain = parts[2]
            
            # print(chain)
            
            # print(bound_name, chain)
            if True:
                bound_fasta = get_fasta_new(bound_name, chain)
                print(type(bound_fasta))
                with open(Path(f"/Users/moshe/Desktop/Research_Antigen/AlignmentWork/bound_fasta/{bound_name}_bound_fasta.txt"),
                    'w', newline="\n") as outfile:
                    try:
                        outfile.write(bound_fasta)
                    except: 
                        pass



def get_fasta_new(bound_name,chain):
    print(bound_name)
    res = requests.get(f"https://www.rcsb.org/fasta/entry/{bound_name}/display")
    res.raise_for_status()
    fasta_text = res.text.split(">")
    fasta_text = fasta_text[1:] 
    bound_fasta = False
    for i in fasta_text:
        chain_index = get_chain(i)
        # print("chain, fasta")
        # print(chain_index, i )
        print("chain , index")
        
        chain_index = " ".join(chain_index)
        print(chain, chain_index)
        if chain == chain_index:
            bound_fasta = str(i) 
            return bound_fasta
        else:
            pass





main()
            