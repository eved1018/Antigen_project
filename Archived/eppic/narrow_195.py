from pathlib import Path
import shutil
folder_id = Path("/Users/moshe/Desktop/Research_Antigen/eppic/selenium_eppic_195_job_id_unbound")
folder_pdb = Path("/Users/moshe/Desktop/Research_Antigen/eppic/195_complexed_2VIR_pdbs_copy")
for file in folder_pdb.iterdir():
    for item in folder_id.iterdir():
        if file.name == item.name[:29]:
            print(file.name, item.name[:25])
            shutil.move(str(file), str("/Users/moshe/Desktop/Research_Antigen/eppic/removed_pdbs/"))

        