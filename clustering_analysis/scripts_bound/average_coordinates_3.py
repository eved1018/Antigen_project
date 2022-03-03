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

predictor = "xgboost"


folder_infile_1 = Path(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}")
for item in folder_infile_1.iterdir():
    for item_1 in item.iterdir():
        if "predicted_residues" == item_1.name:
            for file in item_1.iterdir():
                list_x = []
                list_y = []
                list_z = []
                with open (file) as infile:
                    for line in infile:
                        xcoordinate = line.strip().split(",")[3]
                        ycoordinate = line.strip().split(",")[4]
                        zcoordinate = line.strip().split(",")[5]
                        list_x.append(float(xcoordinate))
                        list_y.append(float(ycoordinate))
                        list_z.append(float(zcoordinate))
            
                x_mean = round(mean(list_x),3)
                y_mean = round(mean(list_y),3)
                z_mean = round(mean(list_z),3)
                residue = file.name.split(".")[0]
                with open (f"{item}/{item.name}_bound_averaged_results.txt", "a") as outfile:
                    outfile.write(f"{residue}P.txt,{x_mean},{y_mean},{z_mean}\n")




