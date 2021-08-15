from pathlib import Path
import os, sys

def split_pdb_line(line):
    pdb_parts = [line[:6], line[6:11],
                line[12:16], line[17:20], line[21],
                line[22:26], line[30:38],
                line[38:46], line[46:54],
                line[54:60], line[60:66]]
    pdb_parts = list(map(lambda x: x.strip(), pdb_parts))
    return pdb_parts


unbound_pdb_folder = Path("/Users/moshe/Desktop/Research_Antigen/Helpful_Codes/Unbound_pdbs_try_rename")
for file in unbound_pdb_folder.iterdir():
    print(file.name)
    # with open(file) as unbound_file:
    #     for line in unbound_file:
    #         if line.startswith("ATOM"):
    #             break
    #     line_data = split_pdb_line(line)
    #     chain_name = line_data[4]
    #     #print(str(Path(file.name[:-3])))
    #     src = "/Users/moshe/Desktop/Research_Antigen/Helpful_Codes/Unbound_pdbs_try_rename/"+ file.name 
    #     print(src)
    #     dst ="/Users/moshe/Desktop/Research_Antigen/Helpful_Codes/Unbound_pdbs_try_rename/" + f"{Path(file.name[:-4])}.{chain_name}.txt"
    #     print(src, dst)
    #     os.rename(src, dst)
