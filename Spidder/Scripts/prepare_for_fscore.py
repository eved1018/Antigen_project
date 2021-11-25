with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Spidder/unbound_data_complete.txt") as infile:

    for line in infile:
        part_1 = line.strip().split(".")[0]
        part_2 = line.strip().split(",")[1]
        part_3 = line.strip().split(",")[2]
        with open("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Spidder/unbound_data_complete_fscore.txt", "a") as f:
            f.write(f"{part_1},{part_2},{part_3}\n")