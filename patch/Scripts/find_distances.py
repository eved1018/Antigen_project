from pathlib import Path


with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/patch/test_data/spidder_unbound_max_residues_top_4_test.txt") as infile_0:
    for attempt in infile_0:
        protein = attempt.strip().split(".")[0][-4:]
        picked_residue = attempt.strip().split("_")[0]

        folder_1 = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/patch/test_data/extracted_coordinates_averaged_spidder_2/")
        for tonka in folder_1.iterdir():
            if tonka.name[:4] == protein:
                with open (tonka) as infile:
                    for line in infile:
                        find_residue_number = line.strip().split(",")[0]
                        if str(picked_residue) == str(find_residue_number):
                            picked_xcoordinate = float(line.strip().split(",")[1])
                            picked_ycoordinate = float(line.strip().split(",")[2])
                            picked_zcoordinate = float(line.strip().split(",")[3])
                            with open (tonka) as infile_2:
                                for item in infile_2:
                                    residue_number = item.strip().split(",")[0]
                                    xcoordinate = float(item.strip().split(",")[1])
                                    ycoordinate = float(item.strip().split(",")[2])
                                    zcoordinate = float(item.strip().split(",")[3])
                                    dis_total = (((picked_xcoordinate)-(xcoordinate))**2) + (((picked_ycoordinate)-(ycoordinate))**2) + (((picked_zcoordinate)-(zcoordinate))**2)
                                    distance = round((dis_total)**.5,4)
                                    
                                    #add annotated

                                    folder_annotated = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_data/Unbound_annotated_or_not_for_residues/")
                                    for file_annotated in folder_annotated.iterdir():
                                        if file_annotated.name[:4] == protein:
                                            with open (file_annotated) as infile_3:
                                                for line2 in infile_3:
                                                    residue = str(line2.strip().split("_")[0])
                                                    if residue == residue_number:
                                                        annotated = line2.strip().split(",")[2]
                                                        with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/patch/test_data/results_division_test/{protein}.csv", "a") as outfile:
                                                            outfile.write(f"{picked_residue},{residue_number},{distance},{annotated}\n")

