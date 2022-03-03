with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/xgboost_bound_fscores.csv") as infile:
    for line in infile:
        if float(line.strip().split(",")[1]) < .05:
            
            print(line.strip().split(",")[0])