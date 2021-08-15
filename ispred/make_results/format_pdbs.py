from pathlib import Path


"""
This script gets the residue number and score from the vorffip output pdb file
"""

from pathlib import Path


def split_pdb_line(line):
    pdb_parts = [line[:6], line[6:11],
                line[12:16], line[16:20], line[21],
                line[22:28], line[30:38],
                line[38:46], line[46:54],
                line[54:60], line[60:66]]
    pdb_parts = list(map(lambda x: x.strip(), pdb_parts))
    return pdb_parts


#fix ispred folder
folder = Path("/Users/moshe/Desktop/Research_Antigen/ispred/ispred_returned_pdbs/Unbound_Results") # designate the folder with all the files
for folder_11 in folder.iterdir():
    for file in folder_11.iterdir():
        if file.name.endswith("_pdb_download.pdb"):
            
                    
            with open(file) as file_annotated:
                unbound_protein_name = file.name[7:11]
                bound_protein_name = file.name[:4] #check
                protein_name = f"{bound_protein_name}_{unbound_protein_name}"
                print(protein_name)
                for line in file_annotated:
                    if line.startswith("ATOM"):
                        line_data = split_pdb_line(line)
                        res_num = line_data[5]
                        res_name = line_data[3]
                        score_1 = float(line_data[-1])/100
                        #print(f"{res_num}_{protein_name}_{res_name},{score}")
                        score = round(score_1, 4)
                        with open(f"/Users/moshe/Desktop/Research_Antigen/ispred/ispred_unbound_results_pdb/{protein_name}_ispred_results.txt", 'a') as f:
                            f.write(f"{res_num}_{protein_name}_{res_name},{score} \n")
                                    

# str1 = """
# HEADER    DEFAULT CLASSIFICATION                  24-JAN-70   stru              \n
# REMARK   1                                                                      \n
# ATOM      2  CA  SER A   1      13.781   5.819  -3.336  1.00 70.00           C  \n
# ATOM      3  C   SER A   1      13.894   4.890  -2.125  1.00 70.00           C  \n
# ATOM      4  O   SER A   1      14.895   4.186  -1.978  1.00 70.00           O  \n
# ATOM      5  CB  SER A   1      13.275   7.200  -2.886  1.00 70.00           C"""





"""
38_1A27.A, .99, 1

38_1A27.A, .99

"""