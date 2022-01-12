from pathlib import Path

folder_infile_pred_res = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/test_data_ispred_unbound/predicted_residues")
folder_unbound_pdb = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_data/unbound_pdbs")

#geometric centers?

def split_pdb_line(line):
    pdb_parts = [line[:6], line[6:11],
                line[12:16], line[16:20], line[21],
                line[22:28], line[30:38],
                line[38:46], line[46:54],
                line[54:60], line[60:66]]
    pdb_parts = list(map(lambda x: x.strip(), pdb_parts))
    return pdb_parts




# for pdb_2 in folder_unbound_pdb.iterdir():
#     pdb_2_protein_name = (pdb_2.name[-17:-13])

#     with open (pdb_2) as infile_pdb_2:
#         for item in infile_pdb_2:
#             if item.startswith("ATOM"):
#                 item_data = split_pdb_line(item)
#                 item_res_num = item_data[5]
#                 with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/geometric_center_unbound/{pdb_2_protein_name}_unbound_res_{item_res_num}_geometric_center.txt", "a") as outfile:
#                     outfile.write("")
                
                

#now have each residue -- so go through each pdb and add coordinates to that res file
# 




folder_2 = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/geometric_center_unbound/")
for file in folder_2.iterdir():
    protein = (file.name.strip().split("_")[0])
    print(protein)
    res_number = file.name.strip().split("_")[3]
    for pdb_2 in folder_unbound_pdb.iterdir():
        pdb_2_protein_name = (pdb_2.name[-17:-13])
        if protein == pdb_2_protein_name:
            with open (pdb_2) as infile_pdb_2:
                for item in infile_pdb_2:
                    if item.startswith("ATOM"):
                        item_data = split_pdb_line(item)
                        item_res_num = item_data[5]
                        if item_res_num == res_number:
                            
                            xcoordinated = item_data[6]
                            ycoordinated = item_data[7]
                            zcoordinated = item_data[8]
                            
                            with open (file, "a") as outfile:
                                outfile.write(f"{xcoordinated,ycoordinated,zcoordinated}\n")
