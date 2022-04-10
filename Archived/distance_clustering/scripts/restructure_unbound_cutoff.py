from pathlib import Path

# infile = "/Users/moshe/Desktop/Research_Antigen/ispred/unbound_cutoff.csv"
# with open (infile) as infile_1:
#     for line in infile_1:
#         protein_bound = line.strip().split(".")[0]
#         protein_unbound = line.strip().split(".")[1].split("_")[1]
#         print(line)
#         rest_a = line.strip().split(",")[1]
#         rest_b = line.strip().split(",")[2]
#         rest_c = line.strip().split(",")[3]
#         with open ("/Users/moshe/Desktop/Research_Antigen/distance_clustering/unbound_cutoff_test.csv", "a") as outfile:
#             outfile.write(f"{protein_bound}_{protein_unbound},{rest_a},{rest_b},{rest_c}\n")


infile = "/Users/moshe/Desktop/Research_Antigen/ispred/finalized_unbound_ispred_results.txt"
with open (infile) as infile_1:
    for line in infile_1:
        res_num = line.strip().split("_")[0]
        protein_bound = line.strip().split("_")[1]
        protein_unbound = line.strip().split("_")[2]

        rest_a = line.strip().split(",")[1]
        rest_b = line.strip().split(",")[2]
        with open ("/Users/moshe/Desktop/Research_Antigen/distance_clustering/test_ispred_unbound", "a") as outfile:
            outfile.write(f"{res_num}_{protein_bound}_{protein_unbound},{rest_a},{rest_b}\n")