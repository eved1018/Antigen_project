import numpy as np 
import matplotlib.pyplot as plt 
import pandas as pd
from matplotlib import pyplot as plt


# set width of bar 
barWidth = 0.25
fig = plt.subplots(figsize =(12, 8)) 



data = pd.read_csv(r"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/manuscript_results/figures/fig_number_in_each_cluster.txt")
data.head()
df = pd.DataFrame(data)
 

# set height of bar 
IT = df['Cluster_1']
ECE = df['Cluster_2']
CSE = df['Cluster_3']
test = df['antigen']
# Set position of bar on X axis 
br1 = np.arange(len(IT)) 
br2 = [x + barWidth for x in br1] 
br3 = [x + barWidth for x in br2] 
 
# Make the plot
plt.bar(br1, IT, color ='r', width = barWidth, 
        edgecolor ='grey', label ='Cluster 1') 
plt.bar(br2, ECE, color ='g', width = barWidth, 
        edgecolor ='grey', label ='Cluster 2') 
plt.bar(br3, CSE, color ='b', width = barWidth, 
        edgecolor ='grey', label ='Cluster 3') 
plt.xticks([r + barWidth for r in range(len(IT))], 
        test)

plt.xticks(fontsize=8)
plt.yticks(fontsize=8)
plt.xlabel("Complex ID")
plt.ylabel("Number of Residues")
# Adding Xticks 
# plt.xlabel('Antigen ', fontweight ='bold', fontsize = 15) 
# plt.ylabel('Students passed', fontweight ='bold', fontsize = 15) 
# plt.xticks([r + barWidth for r in range(len(IT))], 
#         ['2015', '2016', '2017', '2018', '2019'])
 
plt.legend()
plt.show() 