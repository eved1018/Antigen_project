list1 = []
with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/manuscript_results/unbound_antigen_with_dynamic_cutoff_and_annotated_residues_try.csv") as infile:
    for line in infile:
        item = line.strip()
        list1.append(item)
test_list = []
with open ("/Users/moshe/Desktop/Research_MetaDPI/cath_data/cath-b-newest-all") as infile:
	for line in infile:
		protein_receiving_cath = line.strip().split(" ")[0][:4]
		for item in list1:
		if item.lower() == protein_receiving_cath:
			superfamily = line.strip().split(" ")[2]
			test_list.append(f"{item},{superfamily}")


print("\n".join(test_list))
#     #             list_protein.append(superfamily)
#     # stuff = ",".join(list_protein)
#     # with open ("/Users/moshe/Desktop/Research_MetaDPI/MetaDPIv2-main/metadpi/input/redone_cv/below_30_proteins_cath.csv", "a") as f:
#     #     f.write(f"{protein_cath},{stuff}\n")

with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/bound_cath_data.csv") as infile2:
    for line2 in infile2:
        for item in list1:
            if item.lower() == line2.strip()[:4]:
                super = line2.strip().split(",")[1]
                print(f"{item},{super}")