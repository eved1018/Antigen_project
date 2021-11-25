from pathlib import Path
import pandas as pd

#find maximum prediction value
folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/patch/test_data/unbound_data_with_annotated_copy")
x= 0


for file in folder.iterdir():
    protein = file.name[:-4]
    #find maximum prediction value
    df=pd.read_csv(file)
    max_index = df["prediction"].idxmax()
    max_row = df.iloc[[max_index]]
    parta= df["residue"].get(max_index)
    residue_number = parta.split("_")[0]
    with open("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/patch/test_data/spidder_unbound_max_residues.txt", "a") as outfile:
        outfile.write(f"{protein},{residue_number}\n")


    # #finds corresponding residue -- what happens if two residues have same prediction #?
    # with open (file) as infile:
    #     for line in infile:
    #         prediction_value = line.strip().split(",")[1]
    #         if str(prediction_value) == str(max_prediction_value):
    #             residue_number = line.strip().split("_")[0]
    #             print(protein)
    #             with open("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/patch/test_data/spidder_unbound_max_residues.txt", "a") as outfile:
    #                 outfile.write(f"{protein},{residue_number}\n")


