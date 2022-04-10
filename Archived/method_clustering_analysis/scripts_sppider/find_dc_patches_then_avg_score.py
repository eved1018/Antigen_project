from pathlib import Path

folder_infile_pred_res = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/test_data_sppider_unbound/predicted_residues")
folder_unbound_pdb = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_data/unbound_pdbs")
folder_averaged = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/geometric_center_unbound_averaged_results")
#geometric centers?

def split_pdb_line(line):
    pdb_parts = [line[:6], line[6:11],
                line[12:16], line[16:20], line[21],
                line[22:28], line[30:38],
                line[38:46], line[46:54],
                line[54:60], line[60:66]]
    pdb_parts = list(map(lambda x: x.strip(), pdb_parts))
    return pdb_parts


for file in folder_infile_pred_res.iterdir():
    with open (file) as infile_file:
        file_protein_name = file.name[:4]
        print(file_protein_name)
        for line in infile_file:
            predicted_res = line.strip()
            tot_score = 0
            list_residues = []
            for file_2 in folder_averaged.iterdir():
        
                file_2_protein_name = (file_2.name.strip().split("_")[0])
                if file_protein_name == file_2_protein_name:
                    with open (file_2) as infile_pdb:
                        for testing in infile_pdb:
                            if testing.strip().split(",")[1] == predicted_res:
                                pred_xcoordinated = float(testing.strip().split(",")[2])
                                pred_ycoordinated = float(testing.strip().split(",")[3])
                                pred_zcoordinated = float(testing.strip().split(",")[4])
                                with open (file_2) as infile_2:
                                                
                                    for item in infile_2:
                                        res_number = item.strip().split(",")[1]
                                        xcoordinated = float(item.strip().split(",")[2])
                                        ycoordinated = float(item.strip().split(",")[3])
                                        zcoordinated = float(item.strip().split(",")[4])
                                        distance = ((((pred_xcoordinated - xcoordinated )**2) + ((pred_ycoordinated - ycoordinated)**2) + ((pred_zcoordinated - zcoordinated)**2))**0.5)
                                        if distance <= 10:
                                            list_residues.append(res_number)
            
                                            with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/test_data_sppider_unbound/unbound_data_complete_sppider_copy.txt") as infile_3:
                                                for tonka in infile_3:
                                                    if ((res_number) == (str(tonka.strip().split("_")[0]))) and ((str(file_protein_name)) == (str(tonka.strip().split(",")[0][-4:]))):
                                                        #print(res_number, file_2_protein_name)
                                                        score = float(tonka.strip().split(",")[1])                                                    
                                                        tot_score = score + tot_score
               
            calc = float(tot_score/len(list_residues))
            with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/test_data_sppider_unbound/patches/{file_protein_name}_patches_sppider_unbound.txt", "a") as outfile:                                                        
                outfile.write(f"{file_protein_name},{list_residues},{calc}\n")
                                                            
#tally scores up
                                                        