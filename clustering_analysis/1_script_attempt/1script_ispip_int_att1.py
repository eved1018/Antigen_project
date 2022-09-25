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


#vorffip, dockpred, meta-ppisp/metappisp...
df = pd.read_csv("/Users/moshe/Desktop/Research_MetaDPI/MetaDPIv2-main/metadpi/output/bound_test_9_7/bin_frame.csv")
cutoff_path = "/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cutoffs/bound_cutoff.csv"
# fscore_file = "/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/detailed_individual_method_data/discotope/fscore_bound_disco.csv"

path_starter = Path("/Users/moshe/Desktop/Research_MetaDPI/MetaDPIv2-main/metadpi/output/bound_test_9_7/fscore_by_method")
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
            with open (cutoff_path) as infile_4:
                for fire_medic in infile_4:
                    if fire_medic.strip().split(",")[0] == protein_name:
                        dynamic_cutoff = fire_medic.strip().split(",")[2]
                        with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/kmeans_cluster_1/{protein_name}_{predictor}.txt", "a") as outfile_1:
                            outfile_1.write(f"{string_clu1}")
                        with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/kmeans_cluster_2/{protein_name}_{predictor}.txt", "a") as outfile_2:
                            outfile_2.write(f"{string_clu2}")
                        with open(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/{predictor}_kmeans_clustering_results.csv", "a") as outfile:
                            outfile.write(f"{protein},{dynamic_cutoff},{clu1_length},{clu2_length},{dis_total_1_2}\n")

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



    #5


    folder_cluster_1 = Path(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/kmeans_cluster_1")
    folder_2 = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/bound_pdbs_and_annotated_residue_data/bound_annotated_results copy")

    for file_1 in folder_cluster_1.iterdir():
        protein_name_1 = file_1.name[:4]
        combined_list_final = []
        tot_TP = 0
        with open(file_1) as infile_1:
            for line_1 in infile_1:
                cluster_1_predicted_residue = (line_1.strip()[:-5])
                combined_list_final.append(cluster_1_predicted_residue)

            for item in folder_2.iterdir():
                if item.name[:4] == protein_name_1:
                    for i2 in combined_list_final:
                        with open (item) as infile_2:
                            for line_2 in infile_2:
                                if str(i2.strip()) == str(line_2.strip().split(" ")[0]):

                                    tot_TP = tot_TP + 1
                    #fix this


            with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/detailed_individual_method_data/ispred/bound_ispred_fscores.txt") as infile_3:
                for tonka in infile_3:
                    protein = tonka.strip().split(",")[0]
                    if protein == protein_name_1:
                        tot_annotated = tonka.strip().split(",")[1]

                        Fn = int(tot_annotated) - int(tot_TP)
                        Fp = int(len(combined_list_final)) - int(tot_TP)
                        bottom_half= float(tot_TP + (.5*Fn) +(Fp*.5))
                        fscore = round((tot_TP/bottom_half),4)
                    


                        print(f"{protein},{fscore},{len(combined_list_final)},{tot_TP}")
                        with open(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/cluster_1_outfile.csv", "a") as outfile:
                            outfile.write(f"{protein},{fscore},{len(combined_list_final)},{tot_TP}\n")


    #5b

    folder_cluster_1 = Path(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/kmeans_cluster_2")
    folder_2 = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/bound_pdbs_and_annotated_residue_data/bound_annotated_results copy")

    for file_1 in folder_cluster_1.iterdir():
        protein_name_1 = file_1.name[:4]
        combined_list_final = []
        tot_TP = 0
        with open(file_1) as infile_1:
            for line_1 in infile_1:
                cluster_1_predicted_residue = (line_1.strip()[:-5])
                combined_list_final.append(cluster_1_predicted_residue)

            for item in folder_2.iterdir():
                if item.name[:4] == protein_name_1:
                    for i2 in combined_list_final:
                        with open (item) as infile_2:
                            for line_2 in infile_2:
                                if str(i2.strip()) == str(line_2.strip().split(" ")[0]):

                                    tot_TP = tot_TP + 1
                    #fix this


            with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/detailed_individual_method_data/ispred/bound_ispred_fscores.txt") as infile_3:
                for tonka in infile_3:
                    protein = tonka.strip().split(",")[0]
                    if protein == protein_name_1:
                        tot_annotated = tonka.strip().split(",")[1]

                        Fn = int(tot_annotated) - int(tot_TP)
                        Fp = int(len(combined_list_final)) - int(tot_TP)
                        bottom_half= float(tot_TP + (.5*Fn) +(Fp*.5))
                        fscore = round((tot_TP/bottom_half),4)
                    


                        print(f"{protein},{fscore},{len(combined_list_final)},{tot_TP}")
                        with open(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/cluster_2_outfile.csv", "a") as outfile:
                            outfile.write(f"{protein},{fscore},{len(combined_list_final)},{tot_TP}\n")

    #6


    with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/cluster_1_outfile.csv") as infile_1:
        for line in infile_1:
            protein = line.strip().split(",")[0]
            with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/cluster_2_outfile.csv") as infile_2:
                for item in infile_2:
                    protein_2 = item.strip().split(",")[0]
                    parta = item.strip().split(",")[1]
                    partb = item.strip().split(",")[2]
                    partc = item.strip().split(",")[3]
                    if protein_2 == protein:
                        with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/{predictor}_kmeans_clustering_results.csv") as infile_3:
                            for tonka in infile_3:
                                if protein_2 == tonka.strip().split(",")[0]:
                                    distance = tonka.strip().split(",")[4]
                                    with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/merged_cluster_outfile.csv", "a") as outfile:
                                        outfile.write(f"{line.strip()},{parta},{partb},{partc},{distance}\n")


    #7



    #switch fscore_dynamic_condition #3
    with open(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/merged_cluster_outfile.csv") as infile_1:
        for line in infile_1:
            protein_1 = line.strip().split(",")[0]
            fscore_cluster_1 = float(line.strip().split(",")[1])
            cluster_1_size = int(line.strip().split(",")[2])
            cluster_1_tp = int(line.strip().split(",")[3])
            fscore_cluster_2 = float(line.strip().split(",")[4])
            cluster_2_size = int(line.strip().split(",")[5])
            cluster_2_tp = int(line.strip().split(",")[6])
            distance = float(line.strip().split(",")[7])
            
            #1
            if ((cluster_1_tp == 0) and (cluster_2_tp == 0)):
                with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/zero_tp_both_clusters.csv", "a") as outfile_1:
                    outfile_1.write(f"{line.strip()}\n")
            
            #2
            if ((cluster_2_tp != 0) and (cluster_1_tp == 0)) or ((cluster_1_tp != 0) and (cluster_2_tp == 0)):
                if cluster_2_tp !=0:
                    with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/only_one_cluster_nonzero_tp.csv", "a") as outfile_2:
                        outfile_2.write(f"{protein_1},{fscore_cluster_2},{cluster_2_size},{cluster_2_tp},clusters:2\n")
                if cluster_1_tp !=0:
                    with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/only_one_cluster_nonzero_tp.csv", "a") as outfile_3:
                        outfile_3.write(f"{protein_1},{fscore_cluster_1},{cluster_1_size},{cluster_1_tp},clusters:1\n")
            
            #3
            if ((cluster_2_tp != 0) and (cluster_1_tp != 0) and distance <= 23):
                dynamic_cutoff = cluster_2_size + cluster_1_size
                # #sppider
                # with open("/Users/moshe/Desktop/Research_MetaDPI/MetaDPIv2-main/metadpi/output/moshe_3_fold_test/fscore_mcc_by_protein.csv") as infile_fscore:
                #     for item in infile_fscore:
                #         if str(item.strip().split(",")[0]) == str(protein_1):
                #             fscore_dynamic = item.strip().split(",")[13]
                
                with open(fscore_file) as infile_fscore:
                    for item in infile_fscore:
                        if str(item.strip().split(",")[0]) == str(protein_1):
                            fscore_dynamic = item.strip().split(",")[1]

                            with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/both_clusters_nonzero_tp_below_23A.csv", "a") as outfile_4:
                                outfile_4.write(f"{protein_1},{fscore_dynamic},{dynamic_cutoff},{(int(cluster_2_tp)+int(cluster_1_tp))},clusters:1_2\n")

                #ispred
                # with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/ispred/bound_ispred_fscores.txt") as infile_fscore:
                #     for item in infile_fscore:
                #         if str(item.strip().split(",")[0]) == str(protein_1):
                #             fscore_dynamic = item.strip().split(",")[3]
                #             with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/{predictor}/both_clusters_nonzero_tp_below_23A.csv", "a") as outfile_4:
                #                 outfile_4.write(f"{protein_1},{fscore_dynamic},{dynamic_cutoff},{(int(cluster_2_tp)+int(cluster_1_tp))},clusters:1_2\n")

            #4

            if ((cluster_2_tp != 0) and (cluster_1_tp != 0) and distance > 23):
                if cluster_2_size > cluster_1_size:
                    with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/both_clusters_nonzero_tp_above_23A.csv", "a") as outfile_5:
                        outfile_5.write(f"{protein_1},{fscore_cluster_2},{cluster_2_size},{cluster_2_tp},clusters:2\n")                
                
                if cluster_1_size > cluster_2_size:
                    with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/both_clusters_nonzero_tp_above_23A.csv", "a") as outfile_6:
                        outfile_6.write(f"{protein_1},{fscore_cluster_1},{cluster_1_size},{cluster_1_tp},clusters:1\n")                
                if cluster_1_size == cluster_2_size:
                    if cluster_1_tp > cluster_2_tp:
                        with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/both_clusters_nonzero_tp_above_23A.csv", "a") as outfile_7:
                            outfile_7.write(f"{protein_1},{fscore_cluster_1},{cluster_1_size},{cluster_1_tp},clusters:1\n")
                    if cluster_2_tp > cluster_1_tp:
                        with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/both_clusters_nonzero_tp_above_23A.csv", "a") as outfile_8:
                            outfile_8.write(f"{protein_1},{fscore_cluster_2},{cluster_2_size},{cluster_2_tp},clusters:2\n")                
                            
    
                        

    filenames = [f'/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/both_clusters_nonzero_tp_above_23A.csv', f'/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/both_clusters_nonzero_tp_below_23A.csv', f'/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/only_one_cluster_nonzero_tp.csv']
    with open(f'/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/summary_file.csv', 'w') as outfile:
        for fname in filenames:
            with open(fname) as infile:
                for line in infile:
                    outfile.write(line)
    total_tp = 0
    total_predicted = 0
    total_annotated = 0
    with open (f'/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/summary_file.csv') as infile_3:
        for line_3 in infile_3:
            protein_3 = line_3.strip().split(",")[0]
            tp = int(line_3.strip().split(",")[3])
            total_tp = total_tp + tp
            predicted = int(line_3.strip().split(",")[2])
            total_predicted = total_predicted + predicted
    with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/detailed_individual_method_data/ispred/bound_ispred_fscores.txt") as infile_4:
        for line_4 in infile_4:
            annotated = int(line_4.strip().split(",")[1])
            total_annotated = annotated + total_annotated
            
    Fn = int(total_annotated) - int(total_tp)
    Fp = int(total_predicted) - int(total_tp)
    bottom_half= float(total_tp + (.5*Fn) +(Fp*.5))
    global_fscore = round((total_tp/bottom_half),4)


    #8

    total_fscore = 0
    num_proteins = 0
    with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/summary_file.csv") as infile_1:
        for line_1 in infile_1:
            fscore_per = float(line_1.strip().split(",")[1])
            num_proteins = num_proteins + 1
            total_fscore = total_fscore + fscore_per
    try:
        with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/zero_tp_both_clusters.csv") as infile_2:
            for line_2 in infile_2:
                num_proteins = num_proteins + 1
    except:
        pass
    print("avg fscore is: " + str(round(total_fscore/num_proteins,4)) + " for " + str(num_proteins) +" proteins")

    #9

    from numpy import sqrt

    mcc_tot = 0
    i = 0
    with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/summary_file.csv") as infile_1:
        for line_1 in infile_1:
            i = i+1
            protein = line_1.strip().split(",")[0]
            total_predicted = line_1.strip().split(",")[2]
            TP = int(line_1.strip().split(",")[3])
            with open (cutoff_path) as infile_2:
                for line_2 in infile_2:
                    protein_1 = line_2.strip().split(",")[0]
                    if protein == protein_1:
                        N = int(line_2.strip().split(",")[3])
                        threshhold = int(line_2.strip().split(",")[2])
                        with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/protein_size_length/size_distribution_bound.csv") as infile_3:
                            for line_3 in infile_3:
                                protein_2 = line_3.strip().split(",")[0]
                                if protein_2 == protein_1:
                                    total_res = int(line_3.strip().split(",")[1])
                                    neg = total_res - threshhold
                                    FP = int(total_predicted) - int(TP)
                                    FN = N - TP
                                    TN = neg - FN
                        

                                    MCC_num = (TP * TN) - (FP * FN)
                                    mcc_denom = sqrt((TP + FP) * (TP + FN)  * (TN + FP) * (TN + FN))
                                    mcc = MCC_num / mcc_denom
                                    mcc_tot = mcc_tot + mcc

                                    
    #do for zero_tp...
    with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/zero_tp_both_clusters.csv", "a") as test1:
        test1.write("")
    with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/data_bound/{predictor}/zero_tp_both_clusters.csv") as infile_a:
        for line_a in infile_a:
            i = i+1
            protein_a = line_a.strip().split(",")[0]
            total_predicted_a = int(line_a.strip().split(",")[2]) + int(line_a.strip().split(",")[5])
            TP_a = 0
            with open (cutoff_path) as infile_b:
                for line_b in infile_b:
                    protein_b = line_b.strip().split(",")[0]
                    if protein_a == protein_b:
                        N_a = int(line_b.strip().split(",")[3])
                        threshhold_a = int(line_b.strip().split(",")[2])
                        with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/protein_size_length/size_distribution_bound.csv") as infile_c:
                            for line_c in infile_c:
                                protein_c = line_c.strip().split(",")[0]
                                if protein_c == protein_b:
                                    total_res_a = int(line_c.strip().split(",")[1])
                                    neg_a = total_res_a - threshhold_a
                                    FP_a = int(total_predicted_a) - int(TP_a)
                                    FN_a = N_a - TP_a
                                    TN_a = neg_a - FN_a
                        

                                    MCC_num_a = (TP_a * TN_a) - (FP_a * FN_a)
                                    mcc_denom_a = sqrt((TP_a + FP_a) * (TP_a + FN_a)  * (TN_a + FP_a) * (TN_a + FN_a))
                                    mcc_a = MCC_num_a / mcc_denom_a
                                    mcc_tot = mcc_tot + mcc_a
    mcc_final = mcc_tot/i
    with open ("/Users/moshe/Desktop/Research_MetaDPI/MetaDPIv2-main/metadpi/output/bound_test_9_7/clustering_results.txt", "a") as f1:
        f1.write(f"{predictor},{str(round(total_fscore/num_proteins,4))},{mcc_final},{num_proteins}\n")