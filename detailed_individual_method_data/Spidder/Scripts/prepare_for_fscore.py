with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Spidder/unbound_data_hold.txt") as infile:

    for line in infile:
        print(line)
        part_1 = line.strip().split("_")[0]
        part_1a = line.strip().split("_")[1]
        part_2 = line.strip().split(",")[1]
        part_3 = line.strip().split(",")[2]


        with open("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Spidder/new_finalized_unbound_data.txt", "a") as f:
            f.write(f"{part_1}_{part_1a},{part_2},{part_3}\n")