import pandas as pd
from pathlib import Path

folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/patch/test_data/results_division_test")
for csv_file in folder.iterdir():

    df = pd.read_csv(csv_file)

    rank_number_occurence = df['residue_top'].nunique()


    top_ranking_residues = df["residue_top"].unique()
    top_ranking_residue_1 = df["residue_top"].unique()[0]
    top_ranking_residue_2 = df["residue_top"].unique()[1]
    top_ranking_residue_3 = df["residue_top"].unique()[2]
    top_ranking_residue_4 = df["residue_top"].unique()[3]

    #include dynamic cutoff and total annotated



    for i in range (7,11):
        list_below_i = []
        list_below_i_annotated = []
        with open(csv_file) as infile:
            protein = csv_file.name[:4]
            for line in infile:
                if (str(line.strip().split(",")[0]) == (str(top_ranking_residue_1)) or (str(line.strip().split(",")[0])) == str(top_ranking_residue_2)) or (str(line.strip().split(",")[0])) == str(top_ranking_residue_3) or (str(line.strip().split(",")[0])) == str(top_ranking_residue_4):
                    if float(line.strip().split(",")[2]) <= (i): 
                        list_below_i.append(float(line.strip().split(",")[2]))
                        if int(line.strip().split(",")[3]) == 1:
                            list_below_i_annotated.append(int(line.strip().split(",")[1]))
                            with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/ispred/unbound_cutoff.csv") as cutoff_file:
                                for line in cutoff_file:
                                    if protein == line.strip().split(",")[0][:4]:
                                        dynamic_cutoff = line.strip().split(",")[2]
                                        total_annotated = line.strip().split(",")[3]
        # print(protein, dynamic_cutoff, total_annotated, i,len(set(list_below_i)),len(set(list_below_i_annotated)))
        
        
        with open("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/patch/test_data/outfile_top_4.csv", "a") as outfile:
            outfile.write(f"{protein},{i},{len(set(list_below_i))},{len(set(list_below_i_annotated))},{total_annotated},{dynamic_cutoff}\n")