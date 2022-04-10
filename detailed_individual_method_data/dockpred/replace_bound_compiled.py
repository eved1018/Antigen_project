with open ("/Users/moshe/Desktop/Research_Antigen/dockpred/Bound_Data/bound_compiled_results_dockpred.txt") as infile:
    for line in infile:
        line_new = line.strip().split(",")[:2]
        line_new_new = ','.join(line_new)
        with open ("/Users/moshe/Desktop/Research_Antigen/dockpred/try_this.txt", "a") as outfile:
            outfile.write(f"{line_new_new}\n")