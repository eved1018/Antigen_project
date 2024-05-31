import pandas as pd
from matplotlib import pyplot as plt
 
# Read CSV into pandas
data = pd.read_csv(r"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/manuscript_results/figures/fig13.txt")
data.head()
df = pd.DataFrame(data)
 
name = df['complex']
price = df['fscore']
 
# Figure Size
fig = plt.figure
 
# Horizontal Bar Plot
plt.bar(name, price)
plt.xticks(fontsize=6)
plt.yticks(fontsize=6)

plt.xlabel("Complex ID")
plt.ylabel("F1 Score")
# Show Plot
plt.show()