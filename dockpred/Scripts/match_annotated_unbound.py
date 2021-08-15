from pathlib import Path


"1A14.A-6HCX.A_458_TRP,1"

with open ("/Users/moshe/Desktop/Research_Antigen/dockpred/unbound_dockpred_results.txt") as dockpred_infile:

    for line in dockpred_infile:
            dockpred_bound_protein_name = line.strip().split("-")[0][:4]
            dockpred_unbound_protein_name = line.strip().split(".")[1].split("-")[1]
            dockpred_res_num = line.strip().split("_")[1]
            dockpred_res_name = line.split("_")[2].split(",")[0]
            #print(dockpred_bound_protein_name, dockpred_unbound_protein_name)
            annotated_folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Unbound_annotated_or_not_for_residues")
            for item in annotated_folder.iterdir():
                ann_protein_name = item.name[:4]
                ann_unbound_protein_name = item.name[5:9]
                if (ann_protein_name == dockpred_bound_protein_name) and (ann_unbound_protein_name == dockpred_unbound_protein_name):
                    with open(item) as annotated_file:
                        for line1 in annotated_file:
                            annotated_res_name = line1.split(",")[1]
                            annotated_res_num = line1.split("_")[0]
                            if_annotated = line1.split(",")[2]
                            if (annotated_res_num== dockpred_res_num) and (annotated_res_name == dockpred_res_name):
        
                                with open(f"/Users/moshe/Desktop/Research_Antigen/dockpred/unbound_dockpred_with_annotated.txt", 'a') as f:
                                    f.write(f"{line.strip()},{if_annotated.strip()} \n")
                        