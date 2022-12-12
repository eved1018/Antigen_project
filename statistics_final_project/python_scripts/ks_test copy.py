import pandas as pd
from scipy.stats import ks_2samp
import scipy.stats as stats

df = pd.read_csv('/Users/moshe/Desktop/Research_MetaDPI/MetaDPIv2-main/metadpi/output/10_20_CV_unbound_test_bound/fscore_mcc_by_protein.csv')

data1 = df.iloc[:,3]
data2 = df.iloc[:,13]
test_k = ks_2samp(data1,data2, alternative= 'greater')
test_w = stats.wilcoxon(data1,data2, alternative= 'less')
#print(data1, data2)
print(test_k)
print(test_w)
