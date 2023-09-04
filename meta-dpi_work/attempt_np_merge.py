import pandas as pd


df_1 = pd.DataFrame(pd.read_csv('/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cv_unbound_sets/results_dockpred/metappisp_data_all.txt'), columns=['residue', 'metappisp', 'annotated'])
df_2 = pd.DataFrame(pd.read_csv('/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cv_unbound_sets/results_dockpred/vorffip_data_all.txt'), columns=['residue', 'vorffip', 'annotated'])
df_3 = pd.DataFrame(pd.read_csv('/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cv_unbound_sets/results_dockpred/ISPIPreadydiscotope3.0.txt'), columns=['residue', 'discotope3', 'annotated'])


df_4 = pd.merge(df_1, df_2, on = ['residue', 'annotated'], how = 'left')
df_5 = pd.merge(df_4, df_3, on = ['residue', 'annotated'], how = 'left')
df_5.update(df_5[['residue']].applymap('"{}"'.format))
df_5.fillna(0, inplace=True)

column_to_move = df_5.pop('annotated')
df_5.insert(4, 'annotated', column_to_move)

df_5.to_csv('merged_meta_methods.csv', index=False, na_rep="", quotechar='~')