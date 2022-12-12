prot_test = []
with open ("/Users/moshe/Desktop/Research_MetaDPI/MetaDPIv2-main/metadpi/input/10_20_CV_Bound_test_bound/test_all_prot.csv") as infile:
    for line in infile:
        protein_test = line.strip().split(",")[1]
        protein_test = protein_test.upper()
        prot_test.append(protein_test)
prot_test.remove("PROTEIN")

fscore_tot = 0
i = 0
with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/bound_predictor_results/fscores/vorffip_bound.csv") as disco_file:
    for line_disco in disco_file:
        protein_disco = line_disco.strip().split(",")[0]
        fscore = line_disco.strip().split(",")[2]
        if protein_disco in prot_test:
            fscore_tot = float(fscore) + fscore_tot
            i = i +1
print(i)
print(round(fscore_tot/i,3))
            
