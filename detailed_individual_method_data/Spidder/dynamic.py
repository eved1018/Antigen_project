with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/ispred/unbound_cutoff copy.csv") as infile_1:
    for line_1 in infile_1:
        protein_1 =line_1.strip().split(",")[0]
        final_column = line_1.strip().split(",")[-1]
        print(final_column)
        with open ("/Users/moshe/Desktop/Research_Antigen/Dynamic_Cutoffs_Revised_Unbound.csv") as infile_2:
            for line_2 in infile_2:
                protein_2 = line_2.strip().split(".")[0]
                if protein_1 == protein_2:
                    second_column = line_2.strip().split(",")[1]
                    third_column = line_2.strip().split(",")[2]
                    with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Spidder/unbound_cutoff.csv", "a") as infile_3:
                        infile_3.write(f"{protein_1},{second_column},{third_column},{final_column}\n")

list_include = []                    
with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Spidder/unbound_cutoff.csv") as infile_2:
    for line_2 in infile_2:
        protein_2 = line_2.strip().split(",")[0]
        list_include.append(protein_2)
print(list_include)

with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/ispred/unbound_cutoff copy.csv") as infile_3:
    for line_3 in infile_3:
        if line_3.strip().split(",")[0] not in list_include:
            print(line_3.strip())