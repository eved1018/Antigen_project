import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import math 

from sklearn.cluster import AgglomerativeClustering
import scipy.cluster.hierarchy as shc
from scipy.cluster.hierarchy import dendrogram, linkage
from sklearn.cluster import KMeans

from yellowbrick.cluster import KElbowVisualizer

file = "/Users/moshe/Desktop/Research_Antigen/distance_clustering/predicted_annotated_5FB8.txt"




#loading the dataset
dataset = pd.read_csv(file, header=None)
data = dataset.iloc[:, 1:4].values

Z = linkage(data, method='ward')

model = KMeans()
# k is range of number of clusters.
visualizer = KElbowVisualizer(model, k=(2,20),metric='silhouette', timings= True)
visualizer.fit(data)        # Fit the data to the visualizer
visualizer.show()        # Finalize and render the figure

    # Finalize and render figure


















