with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/scripts_ispred/patch_nearest_to_dynamic_ispred_unbound_revised.csv") as infile:
    for line in infile:
        ispred_protein = line.strip().split(",")[0]
        ispred_patch_fscore = line.strip().split(",")[1]
        ispred_dynamic_cutoff_fscore = line.strip().split(",")[2]
        with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/scripts_sppider/sppider_patch_results.csv") as infile_2:
            for item in infile_2:
                if item.strip().split(",")[0] == ispred_protein:
                    print(f"{item.strip()},{ispred_patch_fscore},{ispred_dynamic_cutoff_fscore}")
