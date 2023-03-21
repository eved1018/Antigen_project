
list1 = []
with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cv_unbound_sets/tentative_sets/test.txt") as infile:
    for line in infile:
        item = line.strip()
        list1.append(item)
with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cv_unbound_sets/protein_unbound_length.csv") as infile2:
    for line2 in infile2:
        for item in list1:
            if item == line2.strip().split(",")[0]:
                length= line2.strip().split(",")[1]
                print(f"{item},{length}")
