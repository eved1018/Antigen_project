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
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from os import path

# Special imports
from scipy.cluster.hierarchy import dendrogram, linkage
import scipy.cluster.hierarchy as shc
from sklearn.cluster import AgglomerativeClustering



output_input = "10_20_CV_unbound_test_bound"
#vorffip, dockpred, meta-ppisp/metappisp...
df = pd.read_csv(f"/Users/moshe/Desktop/Research_MetaDPI/MetaDPIv2-main/metadpi/output/{output_input}/bin_frame.csv")
cutoff_path = "/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cutoffs/bound_cutoff.csv"
# fscore_file = "/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/detailed_individual_method_data/discotope/fscore_bound_disco.csv"

path_starter = Path(f"/Users/moshe/Desktop/Research_MetaDPI/MetaDPIv2-main/metadpi/output/{output_input}/fscore_by_method")
for file_starter in path_starter.iterdir():
    predictor = file_starter.name[:-4]
    predictors =[predictor]
    fscore_file = file_starter
    os.mkdir(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}")


    #df.set_index('residue', inplace= True )
    results_path = "/Users/moshe/Desktop/Research_Antigen/Vorffip/results"
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
            os.mkdir(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/{protein}")
            os.mkdir(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/{protein}/predicted_residues/")

            with open(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/{protein}/{protein}_bound_predicted_residues.txt", 'a') as f:
                f.write(f"{pred_res_list}")
    print("pred_list_complete")



    def split_pdb_line(line):
        pdb_parts = [line[:6], line[6:11],
                    line[12:16], line[16:20], line[21],
                    line[22:28], line[30:38],
                    line[38:46], line[46:54],
                    line[54:60], line[60:66]]
        pdb_parts = list(map(lambda x: x.strip(), pdb_parts))
        return pdb_parts





    pdb_folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/bound_pdbs_and_annotated_residue_data/bound_pdbs")
    #on github -- bound/unbound
    annotated_folder = Path(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/")
    #on github -- bound/unbound
    for item in annotated_folder.iterdir():
        for item_1 in item.iterdir():
            #print(item_1, "item1")
            if "_predicted_residues" in item_1.name:
                for file in pdb_folder.iterdir():
                    #print(file.name[12:16])
                    if file.name[:4] == item.name:
                        with open(file) as pdb_file:
                            print(file.name, item.name)
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
                                    if ann_protein_name == file.name[:4]:
                                        with open(item_1) as annotated_file:
                                            for line1 in annotated_file:
                                                annotated_res_num = line1.strip()
                                                #print(annotated_res_num, res_num, protein)
                                                if (str(annotated_res_num) == str(res_num)):
                                                    #change between pred and annotated
                                                    with open(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/{item.name}/predicted_residues/{res_num}.txt", 'a') as f:
                                                        f.write(f"{atom_name},{res_name},{res_num},{xcoordinated},{ycoordinated},{zcoordinated}\n")

    folder_infile_1 = Path(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}")
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















    #4



    os.mkdir(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/kmeans_cluster_1")
    os.mkdir(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/kmeans_cluster_2")

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
        plt.figure(figsize=(8,4))
        dend = shc.dendrogram(shc.linkage(data, method='ward'))
        print(dend['color_list'])
        unique_colors=set(dend['color_list'])
        
        optimal_num = len(unique_colors) -1
        plt.title(f"{file_2.name[:4]}_clusters:{str(optimal_num)}")
        plt.show()
        print(optimal_num)
        cluster = AgglomerativeClustering(n_clusters=None, affinity='euclidean', linkage='ward', compute_full_tree=True, distance_threshold=200)
        cluster.fit_predict(data)


        

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

        
    def main():
        cluster()






    folder = Path(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}")    
    for file in folder.iterdir():
        if ".DS_Store" not in str(file):
            for file_2 in file.iterdir():
                if ".DS_Store" not in str(file_2):
                    if "_bound_averaged_results" in file_2.name:
                        protein = file.name[:4]
                        main() 