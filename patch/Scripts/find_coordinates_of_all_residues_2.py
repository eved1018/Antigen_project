from pathlib import Path
import os, sys
def split_pdb_line(line):
    pdb_parts = [line[:6], line[6:11],
                line[12:16], line[16:20], line[21],
                line[22:28], line[30:38],
                line[38:46], line[46:54],
                line[54:60], line[60:66]]
    pdb_parts = list(map(lambda x: x.strip(), pdb_parts))
    return pdb_parts



pdb_folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_data/unbound_pdbs")

#on github -- bound/unbound

for file in pdb_folder.iterdir():
    with open(file) as pdb_file:
        protein_name = file.name[12:25]
        print(protein_name)
        os.mkdir(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/patch/test_data/extracted_coordinates_spidder/{protein_name}")

        for line in pdb_file:
            if line.startswith("ATOM"):
                line_data = split_pdb_line(line)
                res_num = line_data[5]
                res_name = line_data[3]
                atom_name = line_data[2]
                xcoordinated = line_data[6]
                ycoordinated = line_data[7]
                zcoordinated = line_data[8]

            
                with open(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/patch/test_data/extracted_coordinates_spidder/{protein_name}/{res_num}.txt", 'a') as f:
                    f.write(f"{atom_name},{res_name},{res_num},{xcoordinated},{ycoordinated},{zcoordinated}\n")
