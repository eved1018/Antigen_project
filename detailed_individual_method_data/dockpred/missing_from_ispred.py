list = []
with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/ispred/finalized_bound_ispred_results.txt") as infile_2:
    for line_2 in infile_2:
        parta_d = line_2.strip().split("_")[0]
        partb_d = line_2.strip().split("_")[1]
        list.append(f"{parta_d}_{partb_d}")

with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/dockpred/Bound_Data/finalized_bound_dockpred_results.txt") as infile_1:
    for line_1 in infile_1:
        parta_i = line_1.strip().split("_")[0]
        partb_i = line_1.strip().split("_")[1]
        try:
            list.remove(f"{parta_i}_{partb_i}")
        except:
            pass
with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/dockpred/dockpred_missing.txt", "a") as f:
    f.write("\n".join(list))