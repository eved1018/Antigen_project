protein_test_list = []
with open ("/Users/moshe/Desktop/Research_MetaDPI/MetaDPIv2-main/metadpi/input/10_20_CV_Bound_test_bound/test_all_prot.csv") as infiletest:
    for linetest in infiletest:
        protein_test_list.append(linetest.strip().split(",")[1])
    protein_test_list.remove("protein")
print(protein_test_list)


protein_training1_list = []
with open ("/Users/moshe/Desktop/Research_MetaDPI/MetaDPIv2-main/metadpi/input/10_20_CV_Bound_test_bound/train_all_prot_CV_1.csv") as infilet1:
    for linet1 in infilet1:
        protein_training1_list.append(linet1.strip().split(",")[1])
    protein_training1_list.remove("protein")
print(protein_training1_list)

protein_training2_list = []
with open ("/Users/moshe/Desktop/Research_MetaDPI/MetaDPIv2-main/metadpi/input/10_20_CV_Bound_test_bound/train_all_prot_CV_2.csv") as infilet2:
    for linet2 in infilet2:
        protein_training2_list.append(linet2.strip().split(",")[1])
    protein_training2_list.remove("protein")
print(protein_training2_list)


protein_training3_list = []
with open ("/Users/moshe/Desktop/Research_MetaDPI/MetaDPIv2-main/metadpi/input/10_20_CV_Bound_test_bound/train_all_prot_CV_3.csv") as infilet3:
    for linet3 in infilet3:
        protein_training3_list.append(linet3.strip().split(",")[1])
    protein_training3_list.remove("protein")
print(protein_training3_list)


i = 0
with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/protein_size_length/size_distribution_unbound.csv") as infile:
    for line in infile:
        # for item in protein_test_list:
            
        #     if item in line:
        #         size = line.strip().split(",")[1]
        #         print(f"{item},{size}")
        size = line.strip().split(",")[1]
        for item2 in protein_training3_list:
            if item2 in line:
                print(f"{item2},{size}")
