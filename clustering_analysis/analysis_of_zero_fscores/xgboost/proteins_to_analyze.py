with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/bound_cath_data.csv") as f:
    for line in f:
        protein = (line.strip().split(",")[0][:4]).upper()
        if "2.10.77" in (line.strip().split(",")[1]):
            print(protein)
        if "3.90.209" in (line.strip().split(",")[1]):
            print(protein)