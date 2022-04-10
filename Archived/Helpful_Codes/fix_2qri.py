def split_pdb_line_vorffip(line):
    pdb_parts = [line[:21],
                line[22:28], line[30:66]
                ]
    pdb_parts = list(map(lambda x: x.strip(), pdb_parts))
    return pdb_parts
from pathlib import Path

file = Path("/Users/moshe/Desktop/Research_Antigen/Helpful_Codes/unbound_pdb_3CVH.A_2QRI.A copy.txt")
with open (file) as original_pdb:
    res_num_old = ""
    for i, line in enumerate(original_pdb):
            line_data = split_pdb_line_vorffip(line)
            res_num = line_data[1]
            
            print(f"{str(line_data[0])}  {i}  {line_data[2]}")
            with open("/Users/moshe/Desktop/Research_Antigen/Helpful_Codes/new_2qri.txt", "a") as fp:
                fp.write(f"{str(line_data[0])}  {i} {line_data[2]}\n")
    
        