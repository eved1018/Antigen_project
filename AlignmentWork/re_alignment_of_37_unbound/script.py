from pathlib import Path
folder_enter = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/AlignmentWork/Pairs_Updated")

with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/AlignmentWork/37_proteins_start_end_residues.txt") as infile_1:
    for line_1 in infile_1:
        protein = line_1.strip().split(",")[0]
        start_pos = line_1.strip().split(",")[1]
        end_pos = line_1.strip().split(",")[2]
        for folder_inner in folder_enter.iterdir():
            if folder_inner.name[:4] == protein:
                for file in folder_inner.iterdir():
                    if "_unbound_map.csv" in str(file):
                        with open (file) as infile_2:
                            for line_2 in infile_2:
                                pos_num = line_2.strip().split(",")[0]
                                if int(start_pos) == int(pos_num):
                                    res_start = line_2.strip().split(",")[1]
                                if int(end_pos) == int(pos_num):
                                    res_end = line_2.strip().split(",")[1]
                                    print(f"{protein},{res_start},{res_end}")
                        
