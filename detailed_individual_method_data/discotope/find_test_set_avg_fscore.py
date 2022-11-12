
list1 = []
with open("/Users/moshe/Desktop/Research_MetaDPI/MetaDPIv2-main/metadpi/input/10_20_CV_Bound_test_bound/test_all_prot.csv") as infile1:
    for line1 in infile1:
        protein = line1.strip().split(",")[1]
        list1.append(protein)
list1.remove("protein")

print(list1)
i = 0
num = 0
for item in list1:
    
    with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/detailed_individual_method_data/Meta-ppisp/meta_ppisp_f_score_bound.txt") as infile_test:
        for line in infile_test:
            print(line)
            if item in line:
                list1.remove(line.strip().split(",")[0])
                num = num + 1
                fscore = line.strip().split(",")[1]
                i = i + float(fscore)

print(float(fscore)/float(num))
      