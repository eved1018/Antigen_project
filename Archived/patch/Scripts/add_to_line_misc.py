with open("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/patch/test_data/test_2_10.csv") as infile:
    for line in infile:
        protein = line.strip().split(",")[0]
        total_pred = (line.strip().split(",")[2])
        with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/patch/2_10_next.csv") as infile_2:
            for item in infile_2: 
                if protein == item.strip().split(",")[0]:
                    
                    print(f"{item.strip()},{total_pred}")