import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import scipy.cluster.hierarchy as shc
from sklearn.cluster import AgglomerativeClustering

protein_data = pd.read_csv("/Users/moshe/Desktop/Research_Antigen/distance_clustering/1A2Y_avg_results copy.txt")

print(protein_data.shape)
print(protein_data.head())

data = protein_data.iloc[:, 1:4].values

plt.figure(figsize=(10, 7))
plt.title("1A2Y")
dend = shc.dendrogram(shc.linkage(data, method='ward'))
plt.show()