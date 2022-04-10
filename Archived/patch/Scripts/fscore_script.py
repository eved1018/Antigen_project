with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/patch/ispred_test/test_2_10.csv") as infile:
    x= 0
    total = 0
    total_tp = 0
    total_fp = 0
    total_fn = 0
    for line in infile:
        protein = line.strip().split(",")[0]
        total_predicted = line.strip().split(",")[2]
        dynamic_cutoff = line.strip().split(",")[5]
        full_predicted = int(line.strip().split(",")[2])
        TrueP = int(line.strip().split(",")[3])

        total_annotated = int(line.strip().split(",")[4])

        Fp = full_predicted - TrueP
        Fn = total_annotated - TrueP
        x = x + 1

        bottom_half= float(TrueP + (.5*Fp) +(Fn*.5))
        fscore = round((TrueP/bottom_half),4)
        total = fscore + total
        total_fp = total_fp + Fp
        total_tp = TrueP + total_tp
        total_fn = Fn + total_fn
        with open("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/patch/fscore_per_protein_patch_2_10.csv") as f:
            for item in f:
                if protein == item.strip().split(",")[0]:
                    fscore_spidder = item.strip().split(",")[1]
                    with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/patch/fscore_per_protein_patch_2_10_next.csv", "a") as outfile:
                        outfile.write(f"{protein},{fscore_spidder},{fscore},{total_predicted},{dynamic_cutoff}\n")
global_bottom_half= float(total_tp + (.5*total_fp) +(total_fn*.5))

global_fscore = round((total_tp/global_bottom_half),4)
print(global_fscore)