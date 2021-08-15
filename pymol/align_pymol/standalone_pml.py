import os 
import sys
import subprocess
import pandas as pd
from pathlib import Path
import sys    







def image_wrapper():
    protein_name = "4KXI"
    chain_name = "A"
    protein_name_2 = "1A2Y"
    chain_name_2 = "C"
    # load_file = f"{path}/Code/PDB_Files/Predus_241_for_real/predus_{protein_name}_{chain_name}.pdb"
    filename = f"/Users/moshe/Desktop/Research_Antigen/pymol/{protein_name}.png"
    total_script=f"""delete all 
    fetch 1A2Y.C


    set cartoon_transparency,0.75


    select ann, resi 1+2+3+4+13+11+1
    indicate bycalpha ann
    create annotated, indicate


    select pred, resi 12+13+14
    indicate bycalpha pred
    create pred_res, indicate


    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated


    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    fetch 4KXI.A
    align 4KXI.A, 1A2Y.C
    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    
    png {filename},width=900, height=900,dpi = 350,ray=1
    quit"""

    filename_2 = f"{protein_name}"
    file_path = f"/Users/moshe/Desktop/Research_Antigen/pymol/{filename_2}.pml"
    with open(file_path, 'w') as f:
        f.write(total_script)
    cmd = f"/Applications/PyMOL.app/Contents/MacOS/PyMOL -c -q -Q {file_path}" # <- add in location to pymol ex. "~/Application/"
    subprocess.run(cmd, shell= True)

image_wrapper()