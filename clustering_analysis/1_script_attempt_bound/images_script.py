from genericpath import exists
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import math 
from pathlib import Path
from sklearn.cluster import AgglomerativeClustering
import scipy.cluster.hierarchy as shc
from scipy.cluster.hierarchy import dendrogram, linkage
from sklearn.cluster import KMeans
import os, sys
from numpy import mean
import subprocess
import pandas as pd
from pathlib import Path
import sys
import os.path 




folder_check = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/predicted_residues")
folder_proteins = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_pdbs_and_annotated_residue_data/unbound_pdbs")
#vorffip, dockpred, meta-ppisp/metappisp...
df = pd.read_csv("/Users/moshe/Desktop/Research_MetaDPI/MetaDPIv2-main/metadpi/output/duplicated_output/xgboost_residue_results.csv")
# fscore_file = "/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/detailed_individual_method_data/discotope/fscore_bound_disco.csv"
predictors = ['xgboost']

folder_predicted = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/predicted_residues")
folder_annotated = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/epitopes")


def test():
    predictors = ['xgboost']
    df = pd.read_csv("/Users/moshe/Desktop/Research_MetaDPI/MetaDPIv2-main/metadpi/output/duplicated_output/xgboost_residue_results.csv")
    #df.set_index('residue', inplace= True )
    results_path = "/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/xgboost"
    code = 1
    Main(predictors,df,results_path,code)










def Main(predictors,df,results_path,code):
    try:
        cmd = f"pymol -c -q -Q " # <- add in location to pymol ex. "~/Application/"
        #subprocess.run(cmd, shell= True)

    except:
        print("pymol is not available, it can be downloaded from homebrew using: brew install brewsci/bio/pymol")
        return

    path = Path(__file__).parents[2]
    results_folder = "/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/protein_images"
    # results_folder = f"{results_path}/"
    folder = "Images"
    # df = Df_maker(path)
    #df = df.reset_index().rename({'index':'residue'}, axis = 'columns')
    df["protein"] = [x.split('_')[1] for x in df.residue]
    proteins = df["protein"].unique()
    #cutoff_path = f"{path}/Meta_DPI/Data/Test_data/All_protein_cutoffs.csv"
    cutoff_path = "/Users/moshe/Desktop/Research_MetaDPI/MetaDPIv2-main/metadpi/input/duplicated_unbound_test/unbound_cutoff_copy.csv"
    cutoff_csv = pd.read_csv(cutoff_path)

    # proteins= ["1ACB.I","1AT3.A","1DE4.E","1BUH.A","1FC2.D"]
    # proteins= ["7CEI.A","1QOR.A","1B34.A"]
    # proteins= ["4XXH.A","2UTG.A","1KXP.D"]
    # os.mkdir(f"{results_folder}")
    # os.mkdir(f"{results_folder}/{folder}")
    # os.mkdir(f"{results_folder}/scripts")
    for protein in proteins:
        pml_maker(protein,df,cutoff_csv,folder,path,predictors,results_folder)


def image_wrapper(args):
    (path, protein,predictor,folder,chain_name,epitope1,epitope2,epitope3,epitope4,epitope5,epitope6,epitope7,epitope8,epitope9,pred_res_list,results_folder) = args
    # load_file = f"{path}/Code/PDB_Files/Predus_241_for_real/predus_{protein_name}_{chain_name}.pdb"
    for file_check in folder_check.iterdir():
        if protein in file_check.name: 
            try:
                os.mkdir(f"{results_folder}/{folder}/{protein}")
            except:
                pass
            filename = f"{results_folder}/{folder}/{protein}/{protein}_{predictor}.png"
            check = os.path.exists(filename)

            if check  == True:
                total_script=f"""delete all 
                fetch {protein}.{chain_name}

                color blue 
                set cartoon_transparency,0.75


                select ann1, resi {epitope1}
                indicate bycalpha ann1
                create annotated1, indicate
                select ann2, resi {epitope2}
                indicate bycalpha ann2
                create annotated2, indicate
                select ann3, resi {epitope3}
                indicate bycalpha ann3
                create annotated3, indicate
                select ann4, resi {epitope4}
                indicate bycalpha ann4
                create annotated4, indicate
                select ann5, resi {epitope5}
                indicate bycalpha ann5
                create annotated5, indicate
                select ann6, resi {epitope6}
                indicate bycalpha ann6
                create annotated6, indicate
                select ann7, resi {epitope7}
                indicate bycalpha ann7
                create annotated7, indicate
                select ann8, resi {epitope8}
                indicate bycalpha ann8
                create annotated8, indicate
                select ann9, resi {epitope9}
                indicate bycalpha ann9
                create annotated9, indicate


                select pred, resi {pred_res_list}
                indicate bycalpha pred
                create pred_res, indicate



                show sphere, annotated1
                color pink, annotated1
                set sphere_transparency, 0.3,annotated1
                show sphere, annotated2
                color blue, annotated2
                set sphere_transparency, 0.3,annotated2
                show sphere, annotated3
                color aquamarine, annotated3
                set sphere_transparency, 0.3,annotated3
                show sphere, annotated4
                color br3, annotated4
                set sphere_transparency, 0.3,annotated4
                show sphere, annotated5
                color br6, annotated5
                set sphere_transparency, 0.3,annotated5
                show sphere, annotated6
                color br9, annotated6
                set sphere_transparency, 0.3,annotated6
                show sphere, annotated7
                color brightorange, annotated7
                set sphere_transparency, 0.3,annotated7
                show sphere, annotated8
                color deepsalmon, annotated8
                set sphere_transparency, 0.3,annotated8
                show sphere, annotated9
                color violet, annotated9
                set sphere_transparency, 0.3,annotated9








                show sphere, pred_res
                set sphere_scale,0.5,pred_res
                color green, pred_res
                set sphere_transparency,0,pred_res
                set cartoon_transparency,1,pred_res





                remove resn hoh
                hide (het)
                zoom complete=1
                bg_color white 
                set ray_opaque_background, 1
                png {filename},width=900, height=900,dpi = 350,ray=1
                quit"""

                filename_2 = f"{protein}_{protein}_{predictor}"
                file_path = f'{results_folder}/scripts/{filename_2}.pml'
                with open(file_path, 'w') as f:
                    f.write(total_script)
                cmd = f"/Applications/PyMOL.app/Contents/MacOS/PyMOL -c -q -Q {file_path}" # <- add in location to pymol ex. "~/Application/"
                subprocess.run(cmd, shell= True)









def pml_maker(protein,df,cutoff_csv,folder,path,predictors,results_folder):
    for fire_medic in folder_proteins.iterdir():
        i = 0
        protein = fire_medic.name[-10:-6]
        chain_name = fire_medic.name[-5:-4]
        epitope1 = ""
        epitope2 = ""
        epitope3 = ""
        epitope4 = ""
        epitope5 = ""
        epitope6 = ""
        epitope7 = ""
        epitope8 = ""
        epitope9 = ""
        # watch out for this
        # predictors = ['predus', "ispred","dockpred","rfscore","logreg","vorffip","meta-ppisp"]
        list_pred = []
        pred_res_list = ""
        for file_predicted in folder_predicted.iterdir():
            if protein in file_predicted.name:
                with open (file_predicted) as infile_predicted:
                    for line_predicted in infile_predicted:
                        list_pred.append(line_predicted.strip())
                pred_res_list = "+".join(list_pred)
                # print(pred_res_list, protein)
        for file_ann in folder_annotated.iterdir():
            if protein in file_ann.name:

                if "_1" in file_ann.name:
                    with open (file_ann) as infile_ann1:
                        annotated_list1 = []
                        for line_ann1 in infile_ann1:
                            annotated_list1.append(line_ann1.strip())
                    epitope1 = "+".join(annotated_list1)
                    # print(epitope1)
                if "_2" in file_ann.name:
                    with open (file_ann) as infile_ann2:
                        annotated_list2 = []
                        for line_ann2 in infile_ann2:
                            annotated_list2.append(line_ann2.strip())
                    print(annotated_list2, "hh")
                    epitope2 = "+".join(annotated_list2)
                    print(epitope2, "hhhh")
                if "_3" in file_ann.name:
                    with open (file_ann) as infile_ann3:
                        annotated_list3 = []
                        for line_ann3 in infile_ann3:
                            annotated_list3.append(line_ann3.strip())
                    epitope3 = "+".join(annotated_list3)
                if "_4" in file_ann.name:
                    with open (file_ann) as infile_ann4:
                        annotated_list4 = []
                        for line_ann4 in infile_ann4:
                            annotated_list4.append(line_ann4.strip())
                    epitope4 = "+".join(annotated_list4)
                if "_5" in file_ann.name:
                    with open (file_ann) as infile_ann5:
                        annotated_list5 = []
                        for line_ann5 in infile_ann5:
                            annotated_list5.append(line_ann5.strip())
                    epitope5 = "+".join(annotated_list5)
                if "_6" in file_ann.name:
                    with open (file_ann) as infile_ann6:
                        annotated_list6 = []
                        for line_ann6 in infile_ann6:
                            annotated_list6.append(line_ann6.strip())
                    epitope6 = "+".join(annotated_list6)
                if "_7" in file_ann.name:
                    with open (file_ann) as infile_ann7:
                        annotated_list7 = []
                        for line_ann7 in infile_ann7:
                            annotated_list7.append(line_ann7.strip())
                            annotated_list7.append("10000000000")
                    epitope7 = "+".join(annotated_list7)
                    
                if "_8" in file_ann.name:
                    with open (file_ann) as infile_ann8:
                        annotated_list8 = []
                        for line_ann8 in infile_ann8:
                            annotated_list8.append(line_ann8.strip())
                            annotated_list8.append("10000000000")
                    epitope8 = "+".join(annotated_list8)
                if "_9" in file_ann.name:
                    with open (file_ann) as infile_ann9:
                        annotated_list9 = []
                        for line_ann9 in infile_ann9:
                            annotated_list9.append(line_ann9.strip())
                            annotated_list9.append("10000000000")
                    epitope9 = "+".join(annotated_list9)
        
 
        predictor = "xgboost"
        args = (path, protein,predictor,folder,chain_name,epitope1,epitope2,epitope3,epitope4,epitope5,epitope6,epitope7,epitope8,epitope9,pred_res_list,results_folder)
        image_wrapper(args)


test()





# folder2 = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/predicted_residues")
# folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_pdbs_and_annotated_residue_data/unbound_annotated_results_copy")
# listpro = []
# for file2 in folder2.iterdir():
#     listpro.append(file2.name[:4])
# print(listpro)
# for item in listpro:
#     i = 0
#     for file in folder.iterdir():
#         if item == str(file.name[5:9]):
#             list = []
#             i = i+1
#             print(i, item)

    
#             with open (file) as infile:
#                 for line in infile:
#                     residue = (line.split(" ")[0])
#                     list.append(residue)
#                 outfile = "+".join(list)
#                 protein = (file.name[5:9])
#                 with open(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/epitopes/epitope_{protein}_{i}.txt", "a") as f:
#                     f.write(outfile)
