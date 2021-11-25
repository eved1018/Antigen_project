with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/patch/test_data/test_2_10.csv") as infile:
    x= 0
    total = 0
    for line in infile:
        protein = line.strip().split(",")[0]
        full_predicted = int(line.strip().split(",")[2])
        TrueP = int(line.strip().split(",")[3])
        if TrueP == 0:
            print(line)
        total_annotated = int(line.strip().split(",")[4])

        Fp = full_predicted - TrueP
        Fn = total_annotated - TrueP
        x = x + 1

        bottom_half= float(TrueP + (.5*Fp) +(Fn*.5))
        fscore = round((TrueP/bottom_half),8)
        total = fscore + total
# print(round(total/x,4))
        
        


