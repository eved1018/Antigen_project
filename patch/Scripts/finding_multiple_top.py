from pathlib import Path
import pandas as pd

#find maximum prediction value
folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/patch/test_data/unbound_data_with_annotated_copy")
x= 0


for file in folder.iterdir():
    protein = file.name[:-4]
    #find maximum prediction value
    df=pd.read_csv(file)
    max_index = df.nlargest(4,['prediction']).get(["residue"])
    top_4 = max_index.to_string(index=False, header=False)
    top_4_ready = str(top_4).strip()
    with open("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/patch/test_data/spidder_unbound_max_residues_top_4_test.txt", "a") as outfile:
        outfile.write(f"{top_4_ready}\n")