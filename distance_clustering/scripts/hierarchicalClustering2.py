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
from yellowbrick.cluster import KElbowVisualizer, elbow



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
    dataset = pd.read_csv(file, header=None)
    data = dataset.iloc[:, 1:4].values
    
    Z = linkage(data, method='ward')
    
    # fig = plt.figure(figsize=(5, 5))
    
    # dn = dendrogram(Z,
    #             orientation='top',
    #             distance_sort='descending',
    #             show_leaf_counts=True)
    #print(Z[:555])




    # data = dataset.iloc[:, 1:4].values
    
    # values = dataset.iloc[:, 0].values
    # for i in range(len(values)):
    #     values[i] = values[i].split(".")[0]
    
    # xpoint = dataset.iloc[:, 1]
    # ypoint = dataset.iloc[:, 2]
    
    # plt.figure(figsize=(10, 7))
    
    # dend = shc.dendrogram(shc.linkage(data, method='ward'), 
    #                       labels=values,
    #                       leaf_rotation=90.,  # rotates the x axis labels
    #                       leaf_font_size=8., )
                           # font size for the x axis labels)
    # plt.axhline(linestyle='--', y=35)
    # plt.title('Dendrogram for 5FB8--dockpred and annotated set')
    # plt.xlabel('x-axis')
    # plt.ylabel('y-axis')
    # plt.show()

   















    protein = file.name[:4]


    # model = KMeans()
    # # k is range of number of clusters.
    # visualizer = KElbowVisualizer(model, k=(2,20))
    # visualizer.fit(data)# Fit data to visualizer
    # elbow_method = visualizer.elbow_value_
    # #visualizer.show()
    # #    Finalize and render figure
    

    # model = KMeans()
    # # k is range of number of clusters.
    # visualizer = KElbowVisualizer(model, k=(2,20),metric='silhouette', timings= True)
    # visualizer.fit(data)
    # silhouette_elbow = visualizer.elbow_value_      # Fit the data to the visualizer
    # #visualizer.show()        # Finalize and render the figure
    # with open ("/Users/moshe/Desktop/Research_Antigen/distance_clustering/elbow_silhouette_k_value.txt", "a") as outfile:
    #     outfile.write(f"{protein},{elbow_method},{silhouette_elbow}\n")


    # model = KMeans()
    # # k is range of number of clusters.
    # visualizer = KElbowVisualizer(model, k=(2,30),metric='calinski_harabasz', timings= True)
    # visualizer.fit(data) 
    # print(visualizer.elbow_value_, protein)       # Fit the data to the visualizer
    # #visualizer.show()        # Finalize and render the figure
    























    # cluster!
    numCl = 2
    cluster = AgglomerativeClustering(n_clusters=numCl, affinity='euclidean', linkage=' ')
    
    cluster.fit_predict(data)    
    oneli = cluster.labels_
    #print(oneli)
    if len(oneli) != len(data):
        print(" the len(oneli) is not equal to len(data)")
        
    # this is a scatter plot of the data
    #plt.figure(figsize=(10, 7))
    #plt.scatter(data[:,0],data[:,1], c=cluster.labels_, cmap='rainbow')
    #plt.show()
    
    cluster1, cluster2, data = getClusterList(oneli)
    averageXYZ(cluster1, cluster2, data)
    

def getClusterList(ones):
    # ones is a list that corolates position to cluster 
    # ones can == [1 1 0 0 0 0 0 0 0 0 1 1 1 1 1].... IT GOES IN ORDER OF THE TXT FILE
    dataset = pd.read_csv(file, header=None)
    data = dataset.iloc[:, :].values
    
    #print(data)
    clu1 = []
    clu2 = []
    clu3 = []
    
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
        elif cluster == '2':
            clu3 += [resNum]
        else:
            pass
    print("cluster 1 is", clu1)
    print("cluster 2 is", clu2)



    string_clu2 = "\n".join(clu2)
    string_clu1 = "\n".join(clu1)

    predicted_occurences_clu1 = string_clu1.count("P")
    total_occurences_clu1 = string_clu1.count(".txt")
    annotated_occurences_clu1 = int(total_occurences_clu1) - int(predicted_occurences_clu1)
    # percentage_of_predicted_1 = round(((int(predicted_occurences_clu1)/int(total_occurences_clu1))*100),2)
    # percentage_of_annotated_1 = round(((int(annotated_occurences_clu1)/int(total_occurences_clu1))*100),2)
    # # print(f"For cluster 1 - {protein_name}: There are {predicted_occurences_clu1} predicted residues, {annotated_occurences_clu1} annotated residues, and {total_occurences_clu1} total residues in cluster 1.")
    # # print(f"So, predicted residues comprise {percentage_of_predicted_1}% and annotated residues comprise {percentage_of_annotated_1}% of cluster 1\n")





    string_clu2 = "\n".join(clu2)
    predicted_occurences_clu2 = string_clu2.count("P")
    total_occurences_clu2 = string_clu2.count(".txt")
    annotated_occurences_clu2 = int(total_occurences_clu2) - int(predicted_occurences_clu2)




    total_number_of_annotated = (annotated_occurences_clu2 + annotated_occurences_clu1)
    total_number_of_predicted = (predicted_occurences_clu2 + predicted_occurences_clu1)


    percentage_of_predicted_1 = round(((int(predicted_occurences_clu1)/int(total_number_of_predicted))*100),2)
        
    percentage_of_annotated_1 = round(((int(annotated_occurences_clu1)/int(total_number_of_annotated))*100),2)
    percentage_of_predicted_2 = round(((int(predicted_occurences_clu2)/int(total_number_of_predicted))*100),2)
    percentage_of_annotated_2 = round(((int(annotated_occurences_clu2)/int(total_number_of_annotated))*100),2)



    with open (f"/Users/moshe/Desktop/Research_Antigen/distance_clustering/clustered_residues_k_2/{protein}/clu1.txt", "a") as infile_1:
        infile_1.write(string_clu1)
    with open (f"/Users/moshe/Desktop/Research_Antigen/distance_clustering/clustered_residues_k_2/{protein}/clu2.txt", "a") as infile_2:
        infile_2.write(string_clu2)
   
    with open("/Users/moshe/Desktop/Research_Antigen/distance_clustering/clustering_percentages_k_2.csv", "a") as outfile:
        outfile.write(f"{protein},{percentage_of_annotated_1},{percentage_of_predicted_1},{percentage_of_annotated_2},{percentage_of_predicted_2}\n")











    # print("cluster 3 is", clu3)
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
    
    # x_1 = sumClus1X/len(cluster1)
    # y_1 = sumClus1Y/len(cluster1)
    # z_1 = sumClus1Z/len(cluster1)
    
    # x_2 = sumClus2X/len(cluster2)
    # y_2 = sumClus2Y/len(cluster2)
    # z_2 = sumClus2Z/len(cluster2)
    
    # dis_total = (((x_1)-(x_2))**2) + (((y_1)-(y_2))**2) +(((z_1)-(z_2))**2)
    # distance_final = (dis_total)**.5
    # distance = round(distance_final, 4)
    # #print(distance)

def main():
    cluster()

folder = Path("/Users/moshe/Desktop/Research_Antigen/distance_clustering/combined_dockpred_annotated_results")

for file in folder.iterdir():
    protein = file.name[:4]
    os.mkdir(f"/Users/moshe/Desktop/Research_Antigen/distance_clustering/clustered_residues_k_2/{protein}")      
    main()