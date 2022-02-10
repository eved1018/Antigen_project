import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import math 
from pathlib import Path
from sklearn.cluster import AgglomerativeClustering
import scipy.cluster.hierarchy as shc
from scipy.cluster.hierarchy import dendrogram, linkage
from sklearn.cluster import KMeans
import os, sys
from numpy import mean
import subprocess
import pandas as pd
from pathlib import Path
import sys

predictor = "linearreg"
os.mkdir(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}")

predictors = ['linearregression'] #vorffip, dockpred, meta-ppisp/metappisp...
df = pd.read_csv("/Users/moshe/Desktop/Research_MetaDPI/antigen_data/linearreg_bound.txt")

#I'll send .csv for all dockpred, ispred, ...


#df.set_index('residue', inplace= True )
results_path = "/Users/moshe/Desktop/Research_Antigen/Vorffip/results"
cutoff_path = "/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/ispred/bound_cutoff.csv"
cutoff_csv = pd.read_csv(cutoff_path)


def pml_predicted(protein,cutoff_csv,df,item_predictor):
    frame = df[df["protein"] == protein]
    cutoff_row = cutoff_csv[cutoff_csv["Protein"] == protein]
    threshhold = cutoff_row["cutoff res"].values[0]
    predictedframesort = frame.sort_values(by=[item_predictor], inplace =False, ascending=False)
    thresholdframe = predictedframesort.head(threshhold) 
    predicted_res = thresholdframe.residue.values.tolist()
    predicted_res = [str(i) for i in predicted_res]
    pred_res = [i.split("_")[0] for i in predicted_res]
    pred_res_list = "\n".join(pred_res)
    #print(pred_res_list, protein)
    return pred_res_list
df["protein"] = [x.split('_')[1] for x in df.residue]
proteins = df["protein"].unique()

for item_predictor in predictors:
    for protein in proteins:
        pred_res_list= pml_predicted(protein,cutoff_csv,df,item_predictor)
        os.mkdir(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/{protein}")
        os.mkdir(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/{protein}/predicted_residues/")

        with open(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/{protein}/{protein}_bound_predicted_residues.txt", 'a') as f:
            f.write(f"{pred_res_list}")
print("pred_list_complete")
