from pathlib import Path

import pandas as pd

folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/bound_annotated_or_not_for_residues/")
for file in folder.iterdir():
    with open(Path(file)) as f1:
        lines = f1.readlines()

    with open(Path(file), 'w') as f2:
        f2.writelines(lines[:-1])