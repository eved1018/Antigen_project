import csv
from pathlib import Path
import pandas as pd
folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/patch/ispred_test/results_division_test_ispred")
for file in folder.iterdir():
    df = pd.read_csv(file, header=None)
    df.to_csv(file, header=["residue_top","residue","distance","annotated"], index=False)
