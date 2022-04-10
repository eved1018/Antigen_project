# predictor = "xgboost"
# with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/summary_file.csv") as infile_1:
#     for line_1 in infile_1:
#         protein = line_1.strip().split(",")[0]
#         fscore = line_1.strip().split(",")[1]
#         print(f"{protein},{fscore}")
#         with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/{predictor}_bound_fscores.csv", "a") as f:
#             f.write(f"{protein},{fscore}\n")

# with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/zero_tp_both_clusters.csv") as infile_2:
#     for line_2 in infile_2:
#         protein_2 = line_2.strip().split(",")[0]
#         fscore_2 = "0"
#         print(f"{protein_2},{fscore_2}")
#         with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/{predictor}_bound_fscores.csv", "a") as f_2:
#             f_2.write(f"{protein_2},{fscore_2}\n")



with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/dockpred_bound_fscores.csv") as infile:
    for line in infile:
        protein = line.strip().split(",")[0]
        fscore = line.strip().split(",")[1]
        with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/ispred_bound_fscores.csv") as infile_1:
            for line_1 in infile_1:
                if protein == line_1.strip().split(",")[0]:
                    fscore_1 = line_1.strip().split(",")[1]
                    with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/linearreg_bound_fscores.csv") as infile_2:
                        for line_2 in infile_2:
                            if protein == line_2.strip().split(",")[0]:
                                fscore_2 = line_2.strip().split(",")[1]
                                with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/logreg_bound_fscores.csv") as infile_3:
                                    for line_3 in infile_3:
                                        if protein == line_3.strip().split(",")[0]:
                                            fscore_3 = line_3.strip().split(",")[1]
                                            with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/randomforest_bound_fscores.csv") as infile_4:
                                                for line_4 in infile_4:
                                                    if protein == line_4.strip().split(",")[0]:
                                                        fscore_4 = line_4.strip().split(",")[1]

                                                        with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/sppider_bound_fscores.csv") as infile_5:
                                                            for line_5 in infile_5:
                                                                if protein == line_5.strip().split(",")[0]:
                                                                    fscore_5 = line_5.strip().split(",")[1]
                                                                    with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/xgboost_bound_fscores.csv") as infile_6:
                                                                        for line_6 in infile_6:
                                                                            if protein == line_6.strip().split(",")[0]:
                                                                                fscore_6 = line_6.strip().split(",")[1]
                                                                                with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/distribution_bound_fscores.csv", "a") as f:
                                                                                    f.write(f"{protein},{fscore},{fscore_1},{fscore_2},{fscore_3},{fscore_4},{fscore_5},{fscore_6}\n")