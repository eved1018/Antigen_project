list1 = []
with open ("/Users/moshe/Desktop/Research_MetaDPI/protein_sizes_antigens/Under_30_bound.txt") as infile_1:
    for line in infile_1:
        protein = line.strip().split(",")[0]
        list1.append(protein)

with open ("/Users/moshe/Desktop/Research_MetaDPI/MetaDPIv2-main/metadpi/input/moshe_pretrained_jobs/input_data_moshe.csv") as infile_2:
    for line_1 in infile_2:
        if (line_1.strip().split("_")[1][:4]) in list1:
            with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/discotope/new_infile.csv", "a") as f:
                f.write(f"{line_1.strip()}\n")
         