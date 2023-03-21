import os 
import sys
import subprocess
import pandas as pd
from pathlib import Path
import sys

folder_chain = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_pdbs_and_annotated_residue_data/unbound_annotated_results_copy")
folder_pred = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/xgboost/kmeans_cluster_1")
folder_pred_2 = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/xgboost/kmeans_cluster_2")
folder_pred_3 = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/xgboost/kmeans_cluster_3")

folder_pdb_name = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_pdbs_and_annotated_residue_data/unbound_pdbs")

results_folder = "/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/results_images"
list_unbound_proteins = []
for file in folder_pred.iterdir():
    list_unbound_proteins.append(file.name[:4])

for item in list_unbound_proteins:
    cluster1 = []
    cluster2 = []
    cluster3 = []
    for file_1 in folder_pred.iterdir():
        if item in file_1.name:
            
            with open(file_1) as infile_1:
                for line_1 in infile_1:
                    cluster_1 = line_1.strip().split("P")[0]
                    cluster1.append(cluster_1)
    
    for file_2 in folder_pred_2.iterdir():
        if item in file_2.name:
            
            with open(file_2) as infile_2:
                for line_2 in infile_2:
                    cluster_2 = line_2.strip().split("P")[0]
                    cluster2.append(cluster_2)
    for file_3 in folder_pred_3.iterdir():
        if item in file_3.name:
            
            with open(file_3) as infile_3:
                for line_3 in infile_3:
                    cluster_3 = line_3.strip().split("P")[0]
                    cluster3.append(cluster_3)

    for file_pdb in folder_pdb_name.iterdir():
        if item in file_pdb.name:
            unbound_chain = file_pdb.name[-5:-4]
            bound_protein = file_pdb.name[-17:-13]
            unbound_protein = file_pdb.name[-10:-6]
            for file_ann in folder_chain.iterdir():
                if bound_protein in file_ann.name:
                    list_ann = []
                    with open (file_ann) as infile_ann:
                        for line_ann in infile_ann:
                            ann = line_ann.strip().split(" ")[0]
                            list_ann.append(ann)
                            
                    print(cluster3,item)
                    if len(cluster3) != 0:
                        filename = f"{results_folder}/images/{bound_protein}_{unbound_protein}_xgboost.png"
                        total_script=f"""delete all 
                        fetch {unbound_protein}.{unbound_chain}
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi {"+".join(list_ann)}
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, {"+".join(cluster3)} 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color black, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi {"+".join(cluster1)}
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi {"+".join(cluster2)}
                        indicate bycalpha pred_2
                        create pred_res_2, indicate
                        



                        show sphere, annotated
                        color pink, annotated
                        set sphere_transparency, 0.5,annotated
                        show sphere, pred_res
                        set sphere_scale,0.5,pred_res
                        color green, pred_res
                        set sphere_transparency,0,pred_res
                        set cartoon_transparency,1,pred_res


                        show sphere, pred_res_2
                        set sphere_scale,0.5,pred_res_2
                        color red, pred_res_2
                        set sphere_transparency,0,pred_res_2
                        set cartoon_transparency,1,pred_res_2

                    

                        remove resn hoh
                        hide (het)
                        zoom complete=1
                        bg_color white 
                        set ray_opaque_background, 1
                        png {filename},width=900, height=900,dpi = 350,ray=1
                        quit"""

                        filename_2 = f"{bound_protein}_xgboost"
                        file_path = f'{results_folder}/scripts/{bound_protein}_{unbound_protein}.pml'
                        with open(file_path, 'w') as f:
                            f.write(total_script)
                        cmd = f"/Applications/PyMOL.app/Contents/MacOS/PyMOL -c -q -Q {file_path}" # <- add in location to pymol ex. "~/Application/"
                        subprocess.run(cmd, shell= True)
                    if len(cluster3) ==0:
                        filename = f"{results_folder}/images/{bound_protein}_{unbound_protein}_xgboost.png"
                        total_script=f"""delete all 
                        fetch {unbound_protein}.{unbound_chain}
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi {"+".join(list_ann)}
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred, resi {"+".join(cluster1)}
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi {"+".join(cluster2)}
                        indicate bycalpha pred_2
                        create pred_res_2, indicate
                        



                        show sphere, annotated
                        color pink, annotated
                        set sphere_transparency, 0.5,annotated
                        show sphere, pred_res
                        set sphere_scale,0.5,pred_res
                        color green, pred_res
                        set sphere_transparency,0,pred_res
                        set cartoon_transparency,1,pred_res


                        show sphere, pred_res_2
                        set sphere_scale,0.5,pred_res_2
                        color red, pred_res_2
                        set sphere_transparency,0,pred_res_2
                        set cartoon_transparency,1,pred_res_2

                    

                        remove resn hoh
                        hide (het)
                        zoom complete=1
                        bg_color white 
                        set ray_opaque_background, 1
                        png {filename},width=900, height=900,dpi = 350,ray=1
                        quit"""

                        filename_2 = f"{bound_protein}_xgboost"
                        file_path = f'{results_folder}/scripts/{bound_protein}_{unbound_protein}.pml'
                        with open(file_path, 'w') as f:
                            f.write(total_script)
                        cmd = f"/Applications/PyMOL.app/Contents/MacOS/PyMOL -c -q -Q {file_path}" # <- add in location to pymol ex. "~/Application/"
                        subprocess.run(cmd, shell= True)