from pathlib import Path

def split_pdb_line(line):
    pdb_parts = [line[:6], line[6:11],
                line[12:16], line[16:20], line[21],
                line[22:28], line[30:38],
                line[38:46], line[46:54],
                line[54:60], line[60:66]]
    pdb_parts = list(map(lambda x: x.strip(), pdb_parts))
    return pdb_parts



pdb_folder = Path("/Users/moshe/Desktop/Research_Antigen/clustering/antigen_pdbs copy")
#on github -- bound/unbound
annotated_folder = Path("/Users/moshe/Desktop/Research_Antigen/clustering/vorffip_annotated_or_not")

#on github -- bound/unbound

for file in pdb_folder.iterdir():
    with open(file) as pdb_file:
        protein_name = file.name[:4]
        #print(protein_name)
        for line in pdb_file:
            if line.startswith("ATOM"):
                line_data = split_pdb_line(line)
                res_num = line_data[5]
                res_name = line_data[3]
                atom_name = line_data[2]
                xcoordinated = line_data[6]
                ycoordinated = line_data[7]
                zcoordinated = line_data[8]
                for item in annotated_folder.iterdir():
                    ann_protein_name = item.name[:4]
                    if ann_protein_name == protein_name:
                        with open(item) as annotated_file:
                            for line1 in annotated_file:
                                annotated_res_num = line1.split("_")[0]
                                if_annotated = line1.split(",")[2]
                                if (annotated_res_num == res_num) and ("1" in if_annotated): #change between pred and annotated
                                    if atom_name == "CA":
                                        #print(line_data, protein_name)
                                        with open(f"/Users/moshe/Desktop/Research_Antigen/clustering/vorffip_alpha_carbon_coordinates/{ann_protein_name}_alpha_carbon_annotated_coordinates.txt", 'a') as f:
                                            f.write(f"{atom_name},{res_name},{res_num},{xcoordinated},{ycoordinated},{zcoordinated}\n")

