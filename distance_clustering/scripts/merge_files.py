import glob
from pathlib import Path
import shutil


ann_results = Path("/Users/moshe/Desktop/Research_Antigen/distance_clustering/averaged_results_annotated")
predicted_folder = Path("/Users/moshe/Desktop/Research_Antigen/distance_clustering/vorffip_bound_averaged_results")
for file in predicted_folder.iterdir():
    protein_name_dock = file.name[:4]
    for item in ann_results.iterdir():
        protein_name_ann = item.name[:4]
        if protein_name_ann == protein_name_dock:
            
            firstfile = str(file)
            secondfile = str(item) 
            with open(f"/Users/moshe/Desktop/Research_Antigen/distance_clustering/combined_vorffip_annotated_results/{protein_name_ann}_vorffip_ann_combined.txt", "wb") as wfd:
  
                for f in [firstfile, secondfile]:
                    with open(f, "rb") as fd:
                        shutil.copyfileobj(fd, wfd, 1024 * 1024 * 10)