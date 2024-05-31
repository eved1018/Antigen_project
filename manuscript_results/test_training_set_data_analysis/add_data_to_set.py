with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/manuscript_results/test_training_set_data_analysis/test_all_protcopy.csv") as infile:
    for line in infile:
        protein_name = line.strip().split(",")[1]
        with open ("/Users/moshe/Desktop/Research_MetaDPI/ISPIP-main/Data/input/unbound_cutoff_2_23.csv") as infile2:
            for line2 in infile2:
                if protein_name == line2.strip().split(",")[0]:
                    cutoff = line2.strip().split(",")[2]
                    annotated_num = line2.strip().split(",")[3]
                    print(protein_name,cutoff,annotated_num)
                    with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/manuscript_results/size_unbound_antigens.txt") as infile3:
                        for line3 in infile3:
                            if protein_name == line3.strip().split(",")[0]:
                                size = line3.strip().split(",")[1]
                                with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/manuscript_results/test_with_cutoff_number_annotated_and_size.txt", "a") as outfile:
                                    outfile.write(f"{protein_name},{cutoff},{annotated_num},{size}\n")