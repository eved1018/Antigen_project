list_remove_these = []
with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Spidder/unbound_data_hold.txt") as infile_1:
    for line_1 in infile_1:
        protein = line_1.strip().split("_")[1]
        list_remove_these.append(protein)

list_remove_these = (list(set(list_remove_these)))

with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Spidder/finalized_unbound_data.txt") as infile_2:
    for line_2 in infile_2:
        protein_original = line_2.strip().split(",")[0][-4:]
        if protein_original not in list_remove_these:
            with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Spidder/new_unbound.txt", "a") as f:
                f.write(f"{line_2}")