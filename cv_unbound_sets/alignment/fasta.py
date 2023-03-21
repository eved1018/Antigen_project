#can run code for all files then pair again
#but might be easier to have it work protein by protein...
from pathlib import Path




folder_bound = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cv_unbound_sets/alignment/bound_map")
folder_unbound = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cv_unbound_sets/alignment/unbound_map")

def bound_get_fasta_from_map(bound_map):
    with open(bound_map) as bound_map_file:
        bound_name = str(bound_map_file.name.split("/")[-1][0:4])
        
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
        bound_name = ">" + bound_name
        combined_bound = bound_name + "\n" + bound_fasta 
        
        return bound_fasta, bound_name



def unbound_get_fasta_from_map(unbound_map):
    with open(unbound_map) as unbound_map_file:
        old_unbound_name = str(unbound_map_file.name.split("/")[-1][0:4])
        
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
        print(unbound_name)
        return combined_unbound, old_unbound_name

i = 0
with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/increase_sample_size/outfile_unbound.txt") as infile:
    for line in infile:
        bound = line.strip().split(",")[0]
        unbound = line.strip().split(",")[1]
        for bound_map in folder_bound.iterdir():
            if bound == str(bound_map.name.split("/")[-1][0:4]):
                bound_get_fasta_from_map(bound_map)
                for unbound_map in folder_unbound.iterdir():
                    if unbound == str(unbound_map.name.split("/")[-1][0:4]):
                        unbound_get_fasta_from_map(unbound_map)
                        combined_fastas =  bound_get_fasta_from_map(bound_map)[1] + "\n" + bound_get_fasta_from_map(bound_map)[0] + "\n" + "\n" + unbound_get_fasta_from_map(unbound_map)[0]                        



                        f = open(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cv_unbound_sets/alignment/fasta/{bound_get_fasta_from_map(bound_map)[1]}_{unbound_get_fasta_from_map(unbound_map)[1]}_fasta_compiled.txt", "w")
                        f.write(combined_fastas)
                        f.close()