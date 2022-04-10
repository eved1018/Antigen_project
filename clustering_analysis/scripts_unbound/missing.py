prot_list = []
with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Unbound_predictor_results/fscores/ISPRED_unbound.csv") as infile:
    for line in infile:
        prot = line.strip().split(",")[0]
        prot_list.append(prot)

with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/dockpred/zero_tp_both_clusters.csv") as infile_2:
    for line_2 in infile_2:
        prota = line_2.strip().split(",")[0]
        prot_list.remove(prota)

with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/dockpred/summary_file.csv") as infile_3:
    for line_3 in infile_3:
        protb = line_3.strip().split(",")[0]
        prot_list.remove(protb)

print(prot_list)