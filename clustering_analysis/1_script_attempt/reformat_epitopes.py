from pathlib import Path
import pandas as pd
from functools import reduce
folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt_bound/epitopes")
proteins = []
for file1 in folder.iterdir():
    proteins.append(file1.name[8:12])

protein_list = set(proteins)
for protein in protein_list:
    list1 = []
    list2 = []
    list3 = []
    list4 = []
    list5 = []
    list6 = []
    list7 = []
    list8 = []
    list9 = []



    for file in folder.iterdir():
        if protein == file.name[8:12]:
            print(protein, file.name)
            if (protein == file.name[8:12]) and "_1.txt" in file.name:
                with open (file) as infile1:
                    print(file.name)
                    for line1 in infile1:
                        
                        list1.append(line1.strip().split("+"))
                print(list1)

            if protein in file.name and "_2.txt" in file.name:
                with open (file) as infile2:
                    for line2 in infile2:
                        
                        list2.append(line2.strip().split("+"))            
            if protein in file.name and "_3.txt" in file.name:
                with open (file) as infile3:
                    for line3 in infile3:
                        
                        list3.append(line3.strip().split("+"))
            if protein in file.name and "_4.txt" in file.name:
                with open (file) as infile4:
                    for line4 in infile4:
                        
                        list4.append(line4.strip().split("+"))
            if protein in file.name and "_5.txt" in file.name:
                with open (file) as infile5:
                    for line5 in infile5:
                        
                        list5.append(line5.strip().split("+"))
            if protein in file.name and "_6.txt" in file.name:
                with open (file) as infile6:
                    for line6 in infile6:
                        
                        list6.append(line6.strip().split("+"))
            if protein in file.name and "_7.txt" in file.name:
                with open (file) as infile7:
                    for line7 in infile7:
                        
                        list7.append(line7.strip().split("+"))
            if protein in file.name and "_8.txt" in file.name:
                with open (file) as infile8:
                    for line8 in infile8:
                        
                        list8.append(line8.strip().split("+"))
            if protein in file.name and "_9.txt" in file.name:
                with open (file) as infile9:
                    for line9 in infile9:
                        
                        list9.append(line9.strip().split("+"))
            print(file.name)
            print(list1[0])
            df1 = pd.DataFrame(list1[0], columns = ['residues'])
            if len(list2) > 2:
                df2 = pd.DataFrame(list2[0], columns = ['residues'])
            if len(list3) > 2:
                df3 = pd.DataFrame(list3[0], columns = ['residues'])
            if len(list4) > 2:
                df4 = pd.DataFrame(list4[0], columns = ['residues'])
            if len(list5) > 2:
                df5 = pd.DataFrame(list5[0], columns = ['residues'])
            if len(list6) > 2:
                df6 = pd.DataFrame(list6[0], columns = ['residues'])
            if len(list7) > 2:
                df7 = pd.DataFrame(list7[0], columns = ['residues'])
            if len(list8) > 2:
                df8 = pd.DataFrame(list8[0], columns = ['residues'])
            if len(list9) > 2:
                df9 = pd.DataFrame(list9[0], columns = ['residues'])


    # df_4 = pd.merge(df_1, df_2, on = ['residue', 'annotated'], how = 'left')
    # df_5 = pd.merge(df_4, df_3, on = ['residue', 'annotated'], how = 'left')
    # df_5.update(df_5[['residue']].applymap('"{}"'.format))
    # df_5.fillna(0, inplace=True)

    # column_to_move = df_5.pop('annotated')
    # df_5.insert(4, 'annotated', column_to_move)

    # df_5.to_csv('test.csv', index=False, na_rep="", quotechar='~')

