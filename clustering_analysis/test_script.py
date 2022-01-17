from pathlib import Path

folder_infile_1 = Path(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/{protein}")
for folder_inner in folder_infile_1.iterdir():
    print(folder_inner.name)
    