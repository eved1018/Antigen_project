import matplotlib.pyplot as plt
import pandas as pd
from matplotlib import pyplot as plt
 
# Read CSV into pandas
data = pd.read_csv(r"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/manuscript_results/figures/scatterplotdata.txt")
data.head()
df = pd.DataFrame(data)
 
before = df['before']
after = df['clustering']
plt.scatter(before, after)

plt.xlabel("F1 Score Before Clustering")
plt.ylabel("F1 Score After Clustering")

# x axis values
x = [0,.76]
# corresponding y axis values
y = [0,.76]
plt.plot(x, y, color='red')

plt.show()