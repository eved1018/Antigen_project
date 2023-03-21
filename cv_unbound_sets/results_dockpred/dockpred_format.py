from pathlib import Path
folder_ann = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cv_unbound_sets/alignment/unbound_annotations")
with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cv_unbound_sets/results_dockpred/dockpred_49_unbound") as infile:
    for line in infile:
        protein = line.strip()[:4]
        list_ann = []
        res_num = line.strip().split("_")[1]
        prob = line.strip().split("	")[1]
        for file_ann in folder_ann.iterdir():
            if protein == file_ann.name.split("_")[1]:
                with open (file_ann) as infile1:
                    for line1 in infile1:
                        res_check = line1.split(" ")[0]
                        list_ann.append(res_check)
    
        if list_ann.count(res_num) ==1:
            with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cv_unbound_sets/results_dockpred/results.txt", "a") as f:
                f.write(f"{res_num}_{protein},{prob},1\n")
        if list_ann.count(res_num) ==0:
            with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cv_unbound_sets/results_dockpred/results.txt", "a") as f1:
                f1.write(f"{res_num}_{protein},{prob},0\n")
                
                
