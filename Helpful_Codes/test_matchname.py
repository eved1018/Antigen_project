import pandas as pd 
match_df = pd.read_csv("/Users/moshe/Desktop/Research Antigen/Resources/chain_mapping.txt", sep=" ", names = ["complex_protein","reserach_chain","match_chain"])
protein_row = match_df.loc[match_df.complex_protein == "5UGY"]
match_chain = protein_row.match_chain.tolist()[0]
print(match_chain)