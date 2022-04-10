list_tot = []

with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/detailed_individual_method_data/Vorffip/bound_fscores_vorffip.txt") as infile:
    for line in infile:
        proteinA = line.strip().split(",")[0]
        list_tot.append(proteinA)

print(list_tot)

with open ("fscore_bound_disco.txt") as infile_2:
    for line_1 in infile_2:
        proteinB = line_1.strip().split(",")[0]
        list_tot.remove(proteinB)

print(list_tot)