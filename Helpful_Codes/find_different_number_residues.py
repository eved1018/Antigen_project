from pathlib import Path

#protein names, len(bound residues), len(unbound residues), # of matching residues by sequence alignment)


pairs_folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/Pairs_Updated")
for protein_folder in pairs_folder.iterdir():

    for file in protein_folder.iterdir():
        if "_bound_map.csv" in str(file):
            bound_map = file
        if "_unbound_map.csv" in str(file):
            unbound_map = file
        if "_fasta_compiled.aln" in str(file.name):
            alignment = file


    with open(unbound_map, "r") as unbound_map_file:
            unbound_map_text = str(unbound_map_file.read()).strip().split("\n")
            unbound_name = str(unbound_map_file.name)[-20:-16]
            bound_name = str(unbound_map_file.name)[-27:-23]
            complete_name = f"{bound_name}_{unbound_name}"
            unbound_length = (unbound_map_text[-1].split(",")[0])

    with open(bound_map, "r") as bound_map_file:
            bound_map_text = str(bound_map_file.read()).strip().split("\n")    
            bound_name_1 = str(bound_map_file.name[-28:-24])
            if bound_name_1 == bound_name:

                bound_length = (bound_map_text[-1].split(",")[0])
           # print(bound_length,unbound_length, bound_map.name)
            
            
    with open(alignment, "r") as alignment_file:
        data = alignment_file.read()

        bound_name_2 = alignment.name[:4]
        if (bound_name_2 == bound_name_1) and (bound_name_2 == bound_name):
            matching_residues = data.count("*")
        

        
        percent_of_matching_in_unbound = round(int(matching_residues)/int(unbound_length), 3)
        percent_of_matching_in_bound = round(int(matching_residues)/int(bound_length), 3)
        #print(complete_name,bound_length, unbound_length, matching_residues,percent_of_matching_in_bound,percent_of_matching_in_unbound)
  
        if float(percent_of_matching_in_unbound) < .95:
            print(complete_name)
        # with open(f"/Users/moshe/Desktop/Research_Antigen/Helpful_Codes/bound_unbound_lengths.csv", 'a') as f:
        #     f.write(f"{complete_name},{bound_length},{unbound_length},{matching_residues},{percent_of_matching_in_bound},{percent_of_matching_in_unbound}\n")








    #     with open(unbound_map, "r") as file_unbound:       
    #     data = file_unbound.read()

    
    #     matching_residues = data.count(",")
    #     lines_total = int(matching_residues/3)
    #     protein_name = unbound_map.name[:4]
    # if str(lines_total) != str(tests):
    #     print(lines_total, tests, protein_name)