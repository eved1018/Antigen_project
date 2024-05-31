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




#         #loading the dataset
# file_2 = "/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/xgboost/4PP1/4PP1_unbound_averaged_results.txt"
# dataset = pd.read_csv(file_2, header=None)

# data = dataset.iloc[:, 1:4].values
# #print(data)
# Z = linkage(data, method='ward')

# # fig = plt.figure(figsize=(5, 5))
# dend = shc.dendrogram(shc.linkage(data, method='ward'))
# print(dend['color_list'])
# unique_colors=set(dend['color_list'])

# optimal_num = len(unique_colors) -1    
# # dn = dendrogram(Z,
# #             orientation='top',
# #             distance_sort='descending',
# #             show_leaf_counts=True)

# # cluster!
# cluster = AgglomerativeClustering(n_clusters=optimal_num, affinity='euclidean', linkage='ward', compute_full_tree=True, distance_threshold=None)

# cluster.fit_predict(data)    
# oneli = cluster.labels_
# if len(oneli) != len(data):
#     print(" the len(oneli) is not equal to len(data)")
# print(oneli)
# print(data)
# # this is a scatter plot of the data
# # plt.figure(figsize=(10, 7))
# # plt.scatter(data[:,0],data[:,1], c=cluster.labels_, cmap='rainbow')
# # plt.show()


# plt.figure(figsize=(10, 7))
# plt.xlabel("Residue Number")
# plt.ylabel("Euclidean Distance (A)")
# plt.axhline(y=31, c='black', lw=1, linestyle='dashed')
# plt.axhline(y=71, c='purple', lw=1, linestyle='dashed')
# plt.axhline(y=88, c='red', lw=1, linestyle='dashed')
# dend = shc.dendrogram(shc.linkage(data, method='ward'))
# plt.show()

































file_2 = "/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/manuscript_results/test_sample_points.csv"



def cluster():
    #loading the dataset
    dataset = pd.read_csv(file_2, header=None)
    
    data = dataset.iloc[:, 1:4].values
    #print(data)
    Z = linkage(data, method='ward')
    
    # fig = plt.figure(figsize=(5, 5))
    dend = shc.dendrogram(shc.linkage(data, method='ward'))
    print(dend['color_list'])
    unique_colors=set(dend['color_list'])
    
    optimal_num = len(unique_colors) -1    
    # dn = dendrogram(Z,
    #             orientation='top',
    #             distance_sort='descending',
    #             show_leaf_counts=True)

    # cluster!
    cluster = AgglomerativeClustering(n_clusters=optimal_num, affinity='euclidean', linkage='ward', compute_full_tree=True, distance_threshold=None)
    
    cluster.fit_predict(data)    
    oneli = cluster.labels_
    if len(oneli) != len(data):
        print(" the len(oneli) is not equal to len(data)")
    print(oneli)
    print(data)
    # this is a scatter plot of the data
    # plt.figure(figsize=(10, 7))
    # plt.scatter(data[:,0],data[:,1], c=cluster.labels_, cmap='rainbow')
    # plt.show()
    

    plt.figure(figsize=(10, 7))
    plt.title("test")
    dend = shc.dendrogram(shc.linkage(data, method='ward'))
    plt.show()

    
#     cluster1, cluster2, cluster3, cluster4, cluster5, data = getClusterList(oneli)
#     # needs to be fixed, not distance between just 2 but all other options
#     averageXYZ(cluster1, cluster2, cluster3, cluster4, cluster5, data)
    

# def getClusterList(ones):

#     # ones is a list that corolates position to cluster 
#     # ones can == [1 1 0 0 0 0 0 0 0 0 1 1 1 1 1].... IT GOES IN ORDER OF THE TXT FILE
#     dataset = pd.read_csv(file_2, header=None)
#     data = dataset.iloc[:, :].values
#     clu1 = []
#     clu2 = []
#     clu3 = []
#     clu4 = []
#     clu5 = []
#     ones = remove(ones)

#     for row in range(len(data)):
#         resNum = data[row][0]
#         cluster = ones[row]
#         # if the cluster is equal to zero
#         if cluster == '0':
#             # add up the sum of the points 
#             clu1 += [resNum]
            
#         elif cluster == '1':
#             clu2 += [resNum]
#         elif cluster == '2':
#             clu3 += [resNum]
#         elif cluster == '3':
#             clu4 += [resNum]
#         elif cluster == '4':
#             clu5 += [resNum]
#         else:
#             pass
    
#     print("cluster 1 is", clu1)
#     print("cluster 2 is",clu2)
#     print("cluster 3 is", clu3)
#     return clu1, clu2, clu3, clu4, clu5, data
cluster()