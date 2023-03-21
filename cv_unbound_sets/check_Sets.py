list2 = []
with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cv_unbound_sets/unbound_proteins_115_set.txt") as infile2:
    for line2 in infile2:
        list2.append(line2.strip())

with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cv_unbound_sets/in_actual_sets.txt") as infile:
    for line in infile:
        item = line.strip()
        for item1 in list2:
            if item1==item:
                list2.remove(item1)
print("\n".join(list2))