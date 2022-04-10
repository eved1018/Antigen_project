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






def split_pdb_line(line):
    pdb_parts = [line[:6], line[6:11],
                line[12:16], line[16:20], line[21],
                line[22:28], line[30:38],
                line[38:46], line[46:54],
                line[54:60], line[60:66]]
    pdb_parts = list(map(lambda x: x.strip(), pdb_parts))
    return pdb_parts





predictor = "dockpred"

pdb_folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_pdbs_and_annotated_residue_data/unbound_pdbs")
#on github -- bound/unbound
annotated_folder = Path(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/{predictor}/")
#on github -- bound/unbound
for item in annotated_folder.iterdir():
    for item_1 in item.iterdir():
        #print(item_1, "item1")
        if "_predicted_residues" in item_1.name:
            print(item_1.name)
            for file in pdb_folder.iterdir():
                #print(file.name[12:16])
                if file.name[12:16] == item.name:
                    with open(file) as pdb_file:
                        protein_name_complete = file.name[12:25]
                        protein_bound_name = file.name[12:16]
                        #print(protein_bound_name)
                        for line in pdb_file:
                            if line.startswith("ATOM"):
                                line_data = split_pdb_line(line)
                                res_num = line_data[5]
                                res_name = line_data[3]
                                atom_name = line_data[2]
                                xcoordinated = line_data[6]
                                ycoordinated = line_data[7]
                                zcoordinated = line_data[8]
                                #print(xcoordinated, "xcoo")

                                ann_protein_name = item_1.name[:4]
                                #print(item_1.name, ann_protein_name, "check here")
                                if ann_protein_name == protein_bound_name:
                                    with open(item_1) as annotated_file:
                                        for line1 in annotated_file:
                                            annotated_res_num = line1.strip()
                                            #print(annotated_res_num, res_num, protein)
                                            if (str(annotated_res_num) == str(res_num)): #change between pred and annotated
                                                with open(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/{predictor}/{item.name}/predicted_residues/{res_num}.txt", 'a') as f:
                                                    f.write(f"{atom_name},{res_name},{res_num},{xcoordinated},{ycoordinated},{zcoordinated}\n")

