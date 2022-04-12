import pandas as pd


df_1 = pd.DataFrame(pd.read_csv('/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Unbound_predictor_results/unbound_ispred_results.txt'), columns=['residue', 'ispred', 'annotated'])
df_2 = pd.DataFrame(pd.read_csv('/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Unbound_predictor_results/dockpred_unbound_results.txt'), columns=['residue', 'dockpred', 'annotated'])
df_3 = pd.DataFrame(pd.read_csv('/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Unbound_predictor_results/sppider_unbound.txt'), columns=['residue', 'sppider', 'annotated'])


df_4 = pd.merge(df_1, df_2, on = ['residue', 'annotated'], how = 'left')
df_5 = pd.merge(df_4, df_3, on = ['residue', 'annotated'], how = 'left')
df_5.update(df_5[['residue']].applymap('"{}"'.format))
df_5.fillna(0, inplace=True)

column_to_move = df_5.pop('annotated')
df_5.insert(4, 'annotated', column_to_move)

df_5.to_csv('test.csv', index=False, na_rep="", quotechar='~')