from pathlib import Path

folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/antigen_complexed/annotated_results_updated")

for file in folder.iterdir():
    with open (file) as file_annotated:
        protein_name = file.name[:4]
        for line in file_annotated:
            res_num = line.split(" ")[3]
            res_name = line.split(" ")[4]
            with open(f"/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/bound_annotated_results/{protein_name}.txt", 'a') as f:
                f.write(f"{res_num} {res_name}\n")


            
