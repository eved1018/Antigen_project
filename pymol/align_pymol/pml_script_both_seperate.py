import os 
import sys
import subprocess
import pandas as pd
from pathlib import Path
import sys    




# #FIRST IS GREEN, SECOND BLUE


def image_wrapper(protein_name_bound,chain_name_bound,protein_name_unbound,chain_name_unbound,predicted_res_list_bound,predicted_res_list_unbound,annotated_res_list_unbound,annotated_res_list_bound):
    # load_file = f"{path}/Code/PDB_Files/Predus_241_for_real/predus_{protein_name}_{chain_name}.pdb"
    filename = f"/Users/moshe/Desktop/Research_Antigen/pymol/results/images/{protein_name_bound}_{protein_name_unbound}.png"
    total_script=f"""delete all 
    fetch {protein_name_bound}.{chain_name_bound}


    set cartoon_transparency,0.75


    select ann2, resi {annotated_res_list_bound}
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi {predicted_res_list_bound}
    indicate bycalpha pred
    create pred_res, indicate


    show sphere, annotated2
    color pink, annotated2
    set sphere_transparency, 0.5,annotated2


    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    




    fetch {protein_name_unbound}.{chain_name_unbound}
    set cartoon_transparency,0.75


    select ann, resi {annotated_res_list_unbound}
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi {predicted_res_list_unbound}
    indicate bycalpha pres
    create pres_res, indicate


    show sphere, annotated
    color red, annotated
    set sphere_transparency, 0.5,annotated


    show sphere, pres_res
    set sphere_scale,0.5,pres_res
    color blue, pres_res
    set sphere_transparency,0,pres_res
    set cartoon_transparency,1,pres_res
    




    align {protein_name_bound}.{chain_name_bound}, {protein_name_unbound}.{chain_name_unbound}





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png {filename},width=900, height=900,dpi = 350,ray=1
    quit"""

    filename_2 = f"{protein_name_bound}"
    file_path = f"/Users/moshe/Desktop/Research_Antigen/pymol/results/scripts/{filename_2}.pml"
    with open(file_path, 'w') as f:
        f.write(total_script)
    cmd = f"/Applications/PyMOL.app/Contents/MacOS/PyMOL -c -q -Q {file_path}" # <- add in location to pymol ex. "~/Application/"
    subprocess.run(cmd, shell= True)














folder_bound_annotated_list = Path("/Users/moshe/Desktop/Research_Antigen/pymol/bound_annotated_list")
folder_bound_predicted_list = Path("/Users/moshe/Desktop/Research_Antigen/pymol/bound_pred_list")
folder_unbound_annotated_list = Path("/Users/moshe/Desktop/Research_Antigen/pymol/unbound_annotated_list_renamed")
folder_unbound_predicted_list = Path("/Users/moshe/Desktop/Research_Antigen/pymol/unbound_pred_list_renamed")


for file_bound_ann in folder_bound_annotated_list.iterdir():
    with open (file_bound_ann, "r") as bound_ann:
        protein_name_bound = file_bound_ann.name[:4]
        chain_name_bound = file_bound_ann.name[5:6]
        annotated_res_list_bound = bound_ann.read()


        for file_bound_pred in folder_bound_predicted_list.iterdir():
            protein_bound_name_2 = file_bound_pred.name[:4]
            if protein_name_bound == protein_bound_name_2:
                with open (file_bound_pred, "r") as bound_pred:
                    predicted_res_list_bound = bound_pred.read()


                    for file_unbound_ann in folder_unbound_annotated_list.iterdir():
                        bound_name_3 = file_unbound_ann.name[:4]
                        if bound_name_3 == protein_bound_name_2:
                            protein_name_unbound = file_unbound_ann.name[5:9]
                            chain_name_unbound = file_unbound_ann.name[10:11]
                            with open (file_unbound_ann, "r") as unbound_ann:
                                annotated_res_list_unbound = unbound_ann.read()

                                
                                
                                
                                for file_unbound_pred in folder_unbound_predicted_list.iterdir():
                                    bound_name_4 = file_unbound_pred.name[:4]
                                    unbound_name_2 = file_unbound_pred.name[5:9]
                                    if bound_name_4 == bound_name_3 and unbound_name_2 == protein_name_unbound:
                                        with open (file_unbound_pred, "r") as unbound_pred:
                                            predicted_res_list_unbound = unbound_pred.read()
                                            image_wrapper(protein_name_bound,chain_name_bound,protein_name_unbound,chain_name_unbound,predicted_res_list_bound,predicted_res_list_unbound,annotated_res_list_unbound,annotated_res_list_bound)






    

