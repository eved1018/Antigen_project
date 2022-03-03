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
os.mkdir(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/kmeans_cluster_1")
os.mkdir(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/kmeans_cluster_2")

def remove(string):
    # get rid of the spaces in the list and turn it into a string. returns the list
    ones = ''
    for i in string:
            if i != " ":
                ones += str(i)
    #print(ones)
    return ones

def cluster():
    #loading the dataset
    print(file_2.name)
    dataset = pd.read_csv(file_2, header=None)
    
    data = dataset.iloc[:, 1:4].values
    #print(data)
    Z = linkage(data, method='ward')
    
    # fig = plt.figure(figsize=(5, 5))
    
    # dn = dendrogram(Z,
    #             orientation='top',
    #             distance_sort='descending',
    #             show_leaf_counts=True)

    # cluster!
    numCl = 2
    cluster = KMeans(n_clusters=2, random_state=0)
    
    cluster.fit_predict(data)    
    oneli = cluster.labels_
    if len(oneli) != len(data):
        print(" the len(oneli) is not equal to len(data)")
        
    # this is a scatter plot of the data
    # plt.figure(figsize=(10, 7))
    # plt.scatter(data[:,0],data[:,1], c=cluster.labels_, cmap='rainbow')
    # plt.show()
    

    # plt.figure(figsize=(10, 7))
    # plt.title("1A2Y")
    # dend = shc.dendrogram(shc.linkage(data, method='ward'))
    # plt.show()

    
    cluster1, cluster2, data = getClusterList(oneli)
    averageXYZ(cluster1, cluster2, data)
    

def getClusterList(ones):

    # ones is a list that corolates position to cluster 
    # ones can == [1 1 0 0 0 0 0 0 0 0 1 1 1 1 1].... IT GOES IN ORDER OF THE TXT FILE
    dataset = pd.read_csv(file_2, header=None)
    data = dataset.iloc[:, :].values
    clu1 = []
    clu2 = []
    ones = remove(ones)

    for row in range(len(data)):
        resNum = data[row][0]
        cluster = ones[row]
        # if the cluster is equal to zero
        if cluster == '0':
            # add up the sum of the points 
            clu1 += [resNum]
            
        elif cluster == '1':
            clu2 += [resNum]
        else:
            pass
    
    # print("cluster 1 is", clu1)
    # print("cluster 2 is",clu2)
    return clu1, clu2, data
    
def averageXYZ(cluster1, cluster2, data):
    # should print averages in the end
    sumClus1X = 0
    sumClus2X = 0
    sumClus1Y = 0
    sumClus2Y = 0
    sumClus1Z = 0
    sumClus2Z = 0

    for row in data:
        # add the X to the data 
        if row[0] in cluster1:
            sumClus1X += row[1]
            sumClus1Y += row[2]
            sumClus1Z += row[3]
            
        if row[0] in cluster2:
            sumClus2X += row[1]
            sumClus2Y += row[2]
            sumClus2Z += row[3]
    
    xcoordinate_1 = (sumClus1X/len(cluster1))
    ycoordinate_1 = (sumClus1Y/len(cluster1))
    zcoordinate_1 = (sumClus1Z/len(cluster1))
    
    xcoordinate_2 = (sumClus2X/len(cluster2))
    ycoordinate_2 = (sumClus2Y/len(cluster2))
    zcoordinate_2 = (sumClus2Z/len(cluster2))

    dis_total_1_2 = round((((((xcoordinate_1)-(xcoordinate_2))**2) + (((ycoordinate_1)-(ycoordinate_2))**2) +(((zcoordinate_1)-(zcoordinate_2))**2))**.5),4)

    






    string_clu1 = "\n".join(cluster1)

    predicted_occurences_clu1 = string_clu1.count("P")
    total_occurences_clu1 = string_clu1.count(".txt")
    #annotated_occurences_clu1 = int(total_occurences_clu1) - int(predicted_occurences_clu1)
    
    clu1_length = len(cluster1)
    clu2_length = len(cluster2)
    string_clu2 = "\n".join(cluster2)


    protein_name = file.name[:4]
    if protein_name == protein:
        with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/ispred/bound_cutoff.csv") as infile_4:
            for fire_medic in infile_4:
                if fire_medic.strip().split(",")[0] == protein_name:
                    dynamic_cutoff = fire_medic.strip().split(",")[2]
                    with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/kmeans_cluster_1/{protein_name}_{predictor}.txt", "a") as outfile_1:
                        outfile_1.write(f"{string_clu1}")
                    with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/kmeans_cluster_2/{protein_name}_{predictor}.txt", "a") as outfile_2:
                        outfile_2.write(f"{string_clu2}")
                    with open(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/{predictor}_kmeans_clustering_results.csv", "a") as outfile:
                        outfile.write(f"{protein},{dynamic_cutoff},{clu1_length},{clu2_length},{dis_total_1_2}\n")

def main():
    cluster()






folder = Path(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}")    
for file in folder.iterdir():
    for file_2 in file.iterdir():
        if "_bound_averaged_results" in file_2.name:
            protein = file.name[:4]
            main()         