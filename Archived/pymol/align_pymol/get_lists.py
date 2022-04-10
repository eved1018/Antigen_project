import os 
import sys
import subprocess
import pandas as pd
from pathlib import Path
import sys


def test():
    predictors = ['vorffip']
    df = pd.read_csv("/Users/moshe/Desktop/Research_Antigen/Vorffip/Bound_work/Data/bound_vorffip_results_shortened_set.csv") #change
    results_path = "/Users/moshe/Desktop/Research_Antigen/Vorffip/results"
    code = 1
    Main(predictors,df,results_path,code)


def Main(predictors,df,results_path,code):
    path = Path(__file__).parents[2]
    print(path)
    results_folder = "/Users/moshe/Desktop/Research_Antigen/Vorffip/results"
    folder = "Images"


    #makes list of unique proteins, introduces cutoff
    df["protein"] = [x.split('_')[1] for x in df.residue]
    proteins = df["protein"].unique()
    cutoff_path = "/Users/moshe/Desktop/Research_Antigen/ispred/bound_cutoff.csv"
    cutoff_csv = pd.read_csv(cutoff_path)
    for protein in proteins:
        pml_maker(protein,df,cutoff_csv,folder,path,predictors,results_folder)






def pml_annotated(protein,df,folder):
    frame = df[df["protein"] == protein]
    annotated_frame = frame[frame['annotated'] == 1]
    annotated_res_prot = annotated_frame.residue.tolist()  
    annotated_res = [x.split('_')[0] for x in annotated_res_prot] 
    annotated_res_list = "+".join(annotated_res)
    return(annotated_res_list)

def pml_predicted(protein,cutoff_csv,df,predictor):
    frame = df[df["protein"] == protein]
    cutoff_row = cutoff_csv[cutoff_csv["Protein"] == protein]
    threshhold = cutoff_row["cutoff res"].values[0]
    predictedframesort = frame.sort_values(by=[predictor], inplace =False, ascending=False)
    thresholdframe = predictedframesort.head(threshhold) 
    predicted_res = thresholdframe.residue.values.tolist()
    predicted_res = [str(i) for i in predicted_res]
    pred_res = [i.split("_")[0] for i in predicted_res]
    pred_res_list = "+".join(pred_res)
    return pred_res_list


def pml_maker(protein,df,cutoff_csv,folder,path,predictors,results_folder):
    protein_name = protein.split(".")[0]
    folder_chain = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/antigen_complexed/annotated_results_updated")
    for tonka in folder_chain.iterdir():
        if protein == str(tonka.name)[:4]:
            chain_name = str(tonka.name)[5:6]







    # watch out for this
    # predictors = ['predus', "ispred","dockpred","rfscore","logreg","vorffip","meta-ppisp"]
    for predictor in predictors:
        annotated_res_list = pml_annotated(protein,df,folder)
        pred_res_list= pml_predicted(protein,cutoff_csv,df,predictor)
        with open(f"/Users/moshe/Desktop/Research_Antigen/pymol/bound_annotated_list/{protein}.{chain_name}_annotated_list_pymol.txt", "a") as f:
            f.write(annotated_res_list)
        # with open(f"/Users/moshe/Desktop/Research_Antigen/pymol/bound_annotated_list/{protein}.{chain_name}_annotated_list_pymol.txt", "a") as f:
        #     f.write(annotated_res_list)
        
        


test()
