# with open ("/Users/moshe/Desktop/Research_Antigen/dockpred/bound_compiled_results_dockpred.txt") as infile:
#     for line in infile:
#         first_half = line.strip().split(".")[0]
#         second_half = line.strip().split("_")[1]
#         third_half = line.strip().split("_")[2]
#         with open ("/Users/moshe/Desktop/Research_Antigen/dockpred/finalized_bound_dockpred_results.txt", "a") as outfile:
#             outfile.write(f"{second_half}_{first_half}_{third_half}\n")

with open ("/Users/moshe/Desktop/Research_Antigen/Meta-ppisp_copy/unbound_metappisp_results.txt") as infile:
    for line in infile:
        if "_" not in line:
            continue
        protein_name = line.strip().split("_")[1]
        res_num = line.strip().split("_")[0]
        third_half = line.strip().split("_")[3]
        print(f"{res_num}_{protein_name}_{third_half}")
        with open ("/Users/moshe/Desktop/Research_Antigen/Meta-ppisp_copy/finalized_unbound_metappisp_results.txt", "a") as outfile:
            outfile.write(f"{res_num}_{protein_name}_{third_half}\n")
        