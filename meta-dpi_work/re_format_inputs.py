file = "/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Unbound_predictor_results/dockpred_unbound_results.txt"

with open (file) as infile:
    for line in infile:
        residue = line.strip().split(",")[0][:-4]
        prediction = line.strip().split(",")[1]
        annotated = line.strip().split(",")[2]
        with open ("ispred_new.txt", "a") as f:
            f.write(f"{residue},{prediction},{annotated}\n")
 