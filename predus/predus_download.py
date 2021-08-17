from pathlib import Path
import requests


#fix output file link !!!!!!!!!!!!!!!
"PD2.1l3w_A."
folder_ids = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/predus/bound_job_ids")
for file in folder_ids.iterdir():
    protein_name = file.name.strip().split("_")[0]
    with open (file) as infile:
        job_id = infile.read()
        url_txt = f"https://bhapp.c2b2.columbia.edu/PredUs/data/job_data/{job_id}/PD2.1l3w_A.comb.pdb"
        r_txt = requests.get(url_txt, allow_redirects=True)
        open(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/predus/bound_result_pdbs/{protein_name}_predus_pdb", 'wb').write(r_txt.content)
