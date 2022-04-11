from pathlib import Path
folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/AlignmentWork/unbound_map_files")
for file in folder.iterdir():
    protein = (file.name[:4])
    with open(file, 'r') as f:
        last_line = f.readlines()[-1].strip().split(",")[0]
        
        with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/protein_size_length/size_distribution_unbound.csv", "a") as outfile:
            outfile.write(f"{protein},{last_line}\n")
        