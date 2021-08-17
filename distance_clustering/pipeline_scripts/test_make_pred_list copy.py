import os 
import sys
import subprocess
import pandas as pd
from pathlib import Path
import sys


predictors = ['metappisp'] #vorffip, dockpred, meta-ppisp/metappisp...
df = pd.read_csv("/Users/moshe/Desktop/Research_Antigen/Meta-ppisp_copy/meta_ppisp_bound_results_271.txt")

#I'll send .csv for all dockpred, ispred, ...


#df.set_index('residue', inplace= True )
results_path = "/Users/moshe/Desktop/Research_Antigen/Vorffip/results"
cutoff_path = "/Users/moshe/Desktop/Research_Antigen/ispred/bound_cutoff.csv"
cutoff_csv = pd.read_csv(cutoff_path)


def pml_predicted(protein,cutoff_csv,df,predictor):
    frame = df[df["protein"] == protein]
    cutoff_row = cutoff_csv[cutoff_csv["Protein"] == protein]
    threshhold = cutoff_row["cutoff res"].values[0]
    predictedframesort = frame.sort_values(by=[predictor], inplace =False, ascending=False)
    thresholdframe = predictedframesort.head(threshhold) 
    predicted_res = thresholdframe.residue.values.tolist()
    predicted_res = [str(i) for i in predicted_res]
    pred_res = [i.split("_")[0] for i in predicted_res]
    pred_res_list = "\n".join(pred_res)
    #print(pred_res_list, protein)
    return pred_res_list
df["protein"] = [x.split('_')[1] for x in df.residue]
proteins = df["protein"].unique()

for predictor in predictors:
    for protein in proteins:
        pred_res_list= pml_predicted(protein,cutoff_csv,df,predictor)
        print(f"{pred_res_list},{protein}")
        with open(f"/Users/moshe/Desktop/Research_Antigen/distance_clustering/metappisp_bound_predicted_residues/{protein}_metappisp_bound_predicted_residues.txt", 'a') as f:
            f.write(f"{pred_res_list}")

