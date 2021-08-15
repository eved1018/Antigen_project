import pandas as pd

file_name = "/Users/moshe/Desktop/Research_Antigen/Updated PDBs and Data/Researcher-RCSB Correlating Chains/chain_mapping.txt"

df = pd.read_csv(file_name, sep= " ")

df = df.columns = ["protein_name" , "researchers_chain", "RCSB_chain"] 