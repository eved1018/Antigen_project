from pathlib import Path


def split_pdb_line_vorffip(line):
    pdb_parts = [line[:6], line[6:11],
                line[12:16], line[17:20], line[21],
                line[22:28], line[30:38],
                line[38:46], line[46:54],
                line[54:60], line[60:66]]
    pdb_parts = list(map(lambda x: x.strip(), pdb_parts))
    return pdb_parts

def split_pdb_line_original_pdb(item_line):
    pdb_parts = [item_line[:6], item_line[6:11],
                item_line[12:16], item_line[17:20], item_line[21],
                item_line[22:28], item_line[30:38],
                item_line[38:46], item_line[46:54],
                item_line[54:60], item_line[60:66]]
    pdb_parts = list(map(lambda x: x.strip(), pdb_parts))
    return pdb_parts



vorffip_folder = Path("/Users/moshe/Desktop/Research_Antigen/Vorffip/Unbound_work/Data/Galaxy-History-Unnamed-history_(2)/datasets_new")
original_pdbs_folder = Path("/Users/moshe/Desktop/Research_Antigen/Vorffip/Unbound_work/Data/Unbound_pdbs")


for file in vorffip_folder.iterdir():
    with open(file) as vorffip_file:
        vorffip_protein_name = file.name[:11]
        print(vorffip_protein_name)
        for line in vorffip_file:
            if line.startswith("ATOM"):
                line_data = split_pdb_line_vorffip(line)
                res_num = line_data[5]
                res_name = line_data[3]
                coordinated = line_data[6:9]
                score = float(line_data[-1])/100
                for item in original_pdbs_folder.iterdir():
                    if vorffip_protein_name == item.name[-15:-4]:
                        with open(item) as original_pdb_file:
                            for item_line in original_pdb_file:
                                if item_line.startswith("ATOM"):
                                    line_data_original = split_pdb_line_original_pdb(item_line)
                                    coordinated_original = line_data_original[6:9]
                                    if coordinated_original == coordinated:
                                        res_num_original = line_data_original[5]
                                        with open(f"/Users/moshe/Desktop/Research_Antigen/Vorffip/Unbound_work/Data/unbound_pdbs_formatted_and_renumbered/{vorffip_protein_name}_vorffip_results_renumbered.txt", 'a') as f:
                                            f.write(f"{res_num_original}_{vorffip_protein_name}_{res_name},{score} \n")
                                        if res_num_original != res_num:
                                            print(vorffip_protein_name, res_num_original, res_num)
    



        