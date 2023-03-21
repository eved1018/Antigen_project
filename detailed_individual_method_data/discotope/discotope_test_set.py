list1 =[]
with open ("/Users/moshe/Desktop/Research_MetaDPI/MetaDPIv2-main/metadpi/input/unbound_2_23_cv/test_all_prot.csv") as infile:
    for line in infile:
        protein = line.strip().split(",")[1]
        list1.append(protein)
print(len(list1))

i = 0
with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/detailed_individual_method_data/discotope/discotope_fscore_unbound.csv") as infile2:
    for lin2 in infile2:
        prot = lin2.strip().split(",")[0]
        for item in list1:
            if prot == item:
                print(lin2.strip().split(",")[1])
                
                
