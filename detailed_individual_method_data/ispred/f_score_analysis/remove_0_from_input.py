with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/ispred/f_score_analysis/proteins_above_0.csv") as infile:
    for line in infile:
        protein = line.strip()
        with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Unbound_predictor_results/unbound_ispred.txt") as infile_2:
            for item in infile_2:
                protein_2 = item.strip().split("_")[1]
                if protein.upper() == protein_2.upper():
                    with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/ispred/f_score_analysis/results_without_0.txt", "a") as f:
                        f.write(f"{item.strip()}\n")

