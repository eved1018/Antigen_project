with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/discotope/test_training_analysis/train_all_prot_CV_5 copy.csv") as f:
    for line in f:
        proteinA = line.strip().split(",")[1]
        with open ("/Users/moshe/Desktop/Research_MetaDPI/protein_sizes_antigens/protein_fasta_lengths.csv") as infile_2:
            for line_2 in infile_2:
                proteinB = line_2.strip().split(",")[0]
                length = line_2.strip().split(",")[1]
                if proteinB == proteinA:
                    with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/discotope/outfile_analyze.csv", "a") as outfile:
                        outfile.write(f"{proteinA},{length}\n")
