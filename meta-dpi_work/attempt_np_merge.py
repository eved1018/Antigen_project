import pandas as pd


df_1 = pd.DataFrame(pd.read_csv('/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/detailed_individual_method_data/discotope/ISPIP_ready_unbound_Discotope_data.txt'), columns=['residue', 'discotope', 'annotated'])
df_2 = pd.DataFrame(pd.read_csv('/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/detailed_individual_method_data/Vorffip/Unbound_work_duplicate/Data/unbound_vorffip_results.csv'), columns=['residue', 'vorffip', 'annotated'])
df_3 = pd.DataFrame(pd.read_csv('/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/detailed_individual_method_data/Meta-ppisp/finalized_unbound_metappisp_results.txt'), columns=['residue', 'metappisp', 'annotated'])


df_4 = pd.merge(df_1, df_2, on = ['residue', 'annotated'], how = 'left')
df_5 = pd.merge(df_4, df_3, on = ['residue', 'annotated'], how = 'left')
df_5.update(df_5[['residue']].applymap('"{}"'.format))
df_5.fillna(0, inplace=True)

column_to_move = df_5.pop('annotated')
df_5.insert(4, 'annotated', column_to_move)

df_5.to_csv('test1.csv', index=False, na_rep="", quotechar='~')