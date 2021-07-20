# with open ("/Users/moshe/Desktop/Research_Antigen/dockpred/bound_compiled_results_dockpred.txt") as infile:
#     for line in infile:
#         first_half = line.strip().split(".")[0]
#         second_half = line.strip().split("_")[1]
#         third_half = line.strip().split("_")[2]
#         with open ("/Users/moshe/Desktop/Research_Antigen/dockpred/finalized_bound_dockpred_results.txt", "a") as outfile:
#             outfile.write(f"{second_half}_{first_half}_{third_half}\n")

with open ("/Users/moshe/Desktop/Research_Antigen/dockpred/unbound_dockpred_with_annotated.txt") as infile:
    for line in infile:
        first_half = line.strip().split(".")[0]
        res_num = line.strip().split("_")[1]
        third_half = line.strip().split("_")[2]
        #print(f"{res_num}_{first_half}_{third_half}")
        with open ("/Users/moshe/Desktop/Research_Antigen/dockpred/finalized_unbound_dockpred_results.txt", "a") as outfile:
            outfile.write(f"{res_num}_{first_half}_{third_half}\n")
        