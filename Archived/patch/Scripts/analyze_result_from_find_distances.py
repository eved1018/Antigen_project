import pandas as pd

csv_file = "/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/patch/test_data/4DTG.csv"

protein = "4DTG"

df = pd.read_csv(csv_file)

rank_number_occurence = df['residue_top'].nunique()


top_ranking_residues = df["residue_top"].unique()
top_ranking_residue_1 = df["residue_top"].unique()[0]
top_ranking_residue_2 = df["residue_top"].unique()[1]
top_ranking_residue_3 = df["residue_top"].unique()[2]
top_ranking_residue_4 = df["residue_top"].unique()[3]
print(top_ranking_residue_2)

count_below_7 = 0
count_below_7_annotated = 0

with open(csv_file) as infile:
    for line in infile:
        if (str(line.strip().split(",")[0]) == (str(top_ranking_residue_1)) or (str(line.strip().split(",")[0])) == str(top_ranking_residue_2)):
            if float(line.strip().split(",")[2]) <= 7: 
                count_below_7 +=1
                if int(line.strip().split(",")[3]) == 1:
                    count_below_7_annotated +=1            


count_below_10 = 0
count_below_10_annotated = 0

with open(csv_file) as infile:
    for line in infile:
        if (str(line.strip().split(",")[0]) == (str(top_ranking_residue_1)) or (str(line.strip().split(",")[0])) == str(top_ranking_residue_2)):
            if float(line.strip().split(",")[2]) <= 10: 
                count_below_10 +=1
                if int(line.strip().split(",")[3]) == 1:
                    count_below_10_annotated +=1


count_below_15 = 0
count_below_15_annotated = 0

with open(csv_file) as infile:
    for line in infile:
        if (str(line.strip().split(",")[0]) == (str(top_ranking_residue_1)) or (str(line.strip().split(",")[0])) == str(top_ranking_residue_2)):
            if float(line.strip().split(",")[2]) <= 15: 
                count_below_15 +=1
                if int(line.strip().split(",")[3]) == 1:
                    count_below_15_annotated +=1

print(f"{protein},7,{count_below_7},{count_below_7_annotated}")
print(f"{protein},10,{count_below_10},{count_below_10_annotated}")
print(f"{protein},15,{count_below_15},{count_below_15_annotated}")