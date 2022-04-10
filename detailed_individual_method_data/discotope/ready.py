with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/discotope/ISPIP_ready_Discotope_data.txt") as infile:
    for line in infile:
        a = line.strip().split(".")[0]
        b= (line.strip().split(".")[1][1:])
        c = (line.strip().split(".")[2])
        with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/discotope/input.txt", "a") as f:
            f.write(f"{a}{b}.{c}\n")
