# with open ("/Users/moshe/Desktop/Research_Antigen/Unbound_results/unbound_vorffip_results.txt") as infile:
#     for line in infile:
#         res_num = line.strip().split("_")[0]
#         protein_name = line.strip().split(".")[0].split("_")[1]
#         res_name_and_rest = line.strip().split("_")[3]
#         with open ("/Users/moshe/Desktop/Research_Antigen/Unbound_results/unbound_vorffip.txt", "a") as outfile:
#             outfile.write(f"{res_num}_{protein_name}_{res_name_and_rest}\n")



with open ("/Users/moshe/Desktop/Research_Antigen/Unbound_results/finalized_unbound_ispred_results copy.txt") as infile:
    for line in infile:
        res_num = line.strip().split("_")[0]
        protein_name = line.strip().split("_")[1]
        res_name_and_rest = line.strip().split("_")[3]
        with open ("/Users/moshe/Desktop/Research_Antigen/Unbound_results/unbound_ispred.txt", "a") as outfile:
            outfile.write(f"{res_num}_{protein_name}_{res_name_and_rest}\n")