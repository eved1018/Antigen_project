import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import math 

from sklearn.cluster import AgglomerativeClustering
import scipy.cluster.hierarchy as shc
from scipy.cluster.hierarchy import dendrogram, linkage
from sklearn.cluster import KMeans

from yellowbrick.cluster import KElbowVisualizer, elbow
from pathlib import Path


folder = Path("/Users/moshe/Desktop/Research_Antigen/distance_clustering/combined_dockpred_annotated_results")

for file in folder.iterdir():
    protein_name = file.name[:4]
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
        # cluster!
        numCl = 3
        cluster = AgglomerativeClustering(n_clusters=numCl, affinity='euclidean', linkage='ward')
        
        cluster.fit_predict(data)    
        oneli = cluster.labels_

        if len(oneli) != len(data):
            print(" the len(oneli) is not equal to len(data)")
            
        # this is a scatter plot of the data
        # plt.figure(figsize=(10, 7))
        # plt.scatter(data[:,0],data[:,1], c=cluster.labels_, cmap='rainbow')
        # plt.show()
        
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
        string_clu1 = ", ".join(clu1)
        predicted_occurences_clu1 = string_clu1.count("P")
        total_occurences_clu1 = string_clu1.count(".txt")
        annotated_occurences_clu1 = int(total_occurences_clu1) - int(predicted_occurences_clu1)
        # print(f"For cluster 1 - {protein_name}: There are {predicted_occurences_clu1} predicted residues, {annotated_occurences_clu1} annotated residues, and {total_occurences_clu1} total residues in cluster 1.")
        # print(f"So, predicted residues comprise {percentage_of_predicted_1}% and annotated residues comprise {percentage_of_annotated_1}% of cluster 1\n")





        string_clu2 = ", ".join(clu2)
        predicted_occurences_clu2 = string_clu2.count("P")
        total_occurences_clu2 = string_clu2.count(".txt")
        annotated_occurences_clu2 = int(total_occurences_clu2) - int(predicted_occurences_clu2)
        # print(f"For cluster 2 - {protein_name}: There are {predicted_occurences_clu2} predicted residues, {annotated_occurences_clu2} annotated residues, and {total_occurences_clu2} total residues in cluster 2.")
        # print(f"So, predicted residues comprise {percentage_of_predicted_2}% and annotated residues comprise {percentage_of_annotated_2}% of cluster 2\n")

        string_clu3 = ", ".join(clu3)
        predicted_occurences_clu3 = string_clu3.count("P")
        total_occurences_clu3 = string_clu3.count(".txt")
        annotated_occurences_clu3 = int(total_occurences_clu3) - int(predicted_occurences_clu3)
        
        total_number_of_annotated = (annotated_occurences_clu3 + annotated_occurences_clu2 + annotated_occurences_clu1)
        total_number_of_predicted = (predicted_occurences_clu3 + predicted_occurences_clu2 + predicted_occurences_clu1)


        percentage_of_predicted_1 = round(((int(predicted_occurences_clu1)/int(total_number_of_predicted))*100),2)
        
        percentage_of_annotated_1 = round(((int(annotated_occurences_clu1)/int(total_number_of_annotated))*100),2)
        percentage_of_predicted_2 = round(((int(predicted_occurences_clu2)/int(total_number_of_predicted))*100),2)
        percentage_of_annotated_2 = round(((int(annotated_occurences_clu2)/int(total_number_of_annotated))*100),2)
        percentage_of_predicted_3 = round(((int(predicted_occurences_clu3)/int(total_number_of_predicted))*100),2)
        percentage_of_annotated_3 = round(((int(annotated_occurences_clu3)/int(total_number_of_annotated))*100),2)
        
            

        with open("/Users/moshe/Desktop/Research_Antigen/distance_clustering/clustering_percentages.txt", "a") as outfile:
            outfile.write(f"{protein_name},{percentage_of_annotated_1},{percentage_of_predicted_1},{percentage_of_annotated_2},{percentage_of_predicted_2},{percentage_of_annotated_3},{percentage_of_predicted_3}\n")

        # print("cluster 1 is", string_clu1)
        # print("cluster 2 is", clu2)
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
        
        x_1 = sumClus1X/len(cluster1)
        y_1 = sumClus1Y/len(cluster1)
        z_1 = sumClus1Z/len(cluster1)
        
        x_2 = sumClus2X/len(cluster2)
        y_2 = sumClus2Y/len(cluster2)
        z_2 = sumClus2Z/len(cluster2)

    def main():
        cluster()
    
    main()