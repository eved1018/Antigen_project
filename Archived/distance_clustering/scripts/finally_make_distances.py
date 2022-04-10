from pathlib import Path

folder = Path("/Users/moshe/Desktop/Research_Antigen/distance_clustering/compiled_distances_k_2")

for folder_inner in folder.iterdir():
    for file in folder_inner.iterdir():
        protein_name = folder_inner.name
        with open (file) as infile:
            for line in infile:
                xcoordinate_1 = float(line.strip().split(",")[0])
                ycoordinate_1 = float(line.strip().split(",")[1])
                zcoordinate_1 = float(line.strip().split(",")[2])
                xcoordinate_2 = float(line.strip().split(",")[3])
                ycoordinate_2 = float(line.strip().split(",")[4])
                zcoordinate_2 = float(line.strip().split(",")[5])
                # xcoordinate_3 = float(line.strip().split(",")[6])
                # ycoordinate_3 = float(line.strip().split(",")[7])
                # zcoordinate_3 = float(line.strip().split(",")[8])
            
            dis_total_1_2 = round((((((xcoordinate_1)-(xcoordinate_2))**2) + (((ycoordinate_1)-(ycoordinate_2))**2) +(((zcoordinate_1)-(zcoordinate_2))**2))**.5),4)
            # dis_total_2_3 = round((((((xcoordinate_2)-(xcoordinate_3))**2) + (((ycoordinate_2)-(ycoordinate_3))**2) +(((zcoordinate_2)-(zcoordinate_3))**2))**.5),4)
            # dis_total_1_3 = round((((((xcoordinate_1)-(xcoordinate_3))**2) + (((ycoordinate_1)-(ycoordinate_3))**2) +(((zcoordinate_1)-(zcoordinate_3))**2))**.5),4)
            print(protein_name)
            with open("/Users/moshe/Desktop/Research_Antigen/distance_clustering/clustering_percentages_k_2.csv") as outfile:
                for item in outfile:
                    protein = item.strip().split(",")[0]
                    if protein_name == protein:
                        with open("/Users/moshe/Desktop/Research_Antigen/distance_clustering/finalized_cluster_k_2.csv", "a") as outfile_final:
                            outfile_final.write(f"{item.strip()},{dis_total_1_2}\n")
