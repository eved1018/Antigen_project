#can run code for all files then pair again
#but might be easier to have it work protein by protein...
from pathlib import Path






def bound_get_fasta_from_map(bound_map):
    with open(bound_map) as bound_map_file:
        old_bound_name = str(bound_map_file.name.split("/")[-1][0:4])
        bound_map_text = str(bound_map_file.read()).split("\n")
        bound_one_letter_residue = ""
        bound_out_str = ""
        bound_list_fasta = []
        for line in bound_map_text:
            try:
                parts = line.split(",")
                bound_one_letter_residue = parts[2] 
                bound_list_fasta.append(bound_one_letter_residue)
            except IndexError:
                pass
        bound_fasta = bound_out_str.join(bound_list_fasta)
        bound_name = ">" + old_bound_name
        combined_bound = bound_name + "\n" + bound_fasta  
        return bound_fasta, old_bound_name


def unbound_get_fasta_from_map(unbound_map):
    with open(unbound_map) as unbound_map_file:
        old_unbound_name = unbound_map_file.name[-20:-16] 
        
        unbound_map_text = str(unbound_map_file.read()).split("\n")
        unbound_one_letter_residue = ""
        unbound_out_str = ""
        unbound_list_fasta = []
        for line in unbound_map_text:
            try:
                parts = line.split(",")
                unbound_one_letter_residue = parts[2] 
                unbound_list_fasta.append(unbound_one_letter_residue)
            except IndexError:
                pass
        unbound_fasta = unbound_out_str.join(unbound_list_fasta)
        unbound_name = ">" + old_unbound_name
        combined_unbound =  unbound_name + "\n" + unbound_fasta 
        return combined_unbound, old_unbound_name


































paired_folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/Pairs_Updated")
for folder in paired_folder.iterdir():
    #with open(folder):

    for file in folder.iterdir():
        
        if "unbound_map" in str(file):
            file2 = file
        if "_bound_map" in str(file):
            file3 = file
    unbound_map = file2
    bound_map = file3
    # combined_fastas =  bound_get_fasta_from_map(bound_map)[0] + "\n" + "\n" + unbound_get_fasta_from_map(unbound_map)[0]
    # print(combined_fastas)
    f = open(f"/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/fasta_pdb_data_bound/{bound_get_fasta_from_map(bound_map)[1]}_fasta_compiled.txt", "w")
    f.write(bound_get_fasta_from_map(bound_map)[0])
    f.close()