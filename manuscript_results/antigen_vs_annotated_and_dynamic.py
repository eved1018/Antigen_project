with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/manuscript_results/list_of_unbound_antigens.txt") as infile:
    for line in infile:
        protein1 = line.strip()
        with open ("/Users/moshe/Desktop/Research_MetaDPI/ISPIP-main/Data/input/unbound_cutoff_2_23.csv") as infile2:
            for line2 in infile2:
                protein = line2.strip().split(",")[0]
                dynamic = line2.strip().split(",")[2]
                annotated = line2.strip().split(",")[3]
                if protein1 == protein:
                    print(f"{line.strip()},{dynamic},{annotated}")