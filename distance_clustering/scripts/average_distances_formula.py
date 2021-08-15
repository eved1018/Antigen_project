from pathlib import Path
import os,sys
folder = Path("/Users/moshe/Desktop/Research_Antigen/distance_clustering/distances_folder_k_2")



def file_1(file):
    if "clust1_lines" == file.name:
        with open(file) as infile:
            xcoordinate_1 = 0
            ycoordinate_1 = 0
            zcoordinate_1 = 0
            line_count = 0
            for line in infile:
                xcoordinate_individual_1 = line.strip().split(",")[1]
                ycoordinate_individual_1 = line.strip().split(",")[2]
                zcoordinate_individual_1 = line.strip().split(",")[3]
                xcoordinate_1 += float(xcoordinate_individual_1)
                ycoordinate_1 += float(ycoordinate_individual_1)
                zcoordinate_1 += float(zcoordinate_individual_1)
                line_count += 1
        return float(xcoordinate_1/line_count), float(ycoordinate_1/line_count), float(zcoordinate_1/line_count)
    
    else:
        pass
        
    


def file_2(file):
    if "clust2_lines" == file.name:
        with open(file) as infile_2:
            xcoordinate_2 = 0
            ycoordinate_2 = 0
            zcoordinate_2 = 0
            line_count = 0
            for item in infile_2:
                xcoordinate_individual_2 = item.strip().split(",")[1]
                ycoordinate_individual_2 = item.strip().split(",")[2]
                zcoordinate_individual_2 = item.strip().split(",")[3]
                xcoordinate_2 += float(xcoordinate_individual_2)
                ycoordinate_2 += float(ycoordinate_individual_2)
                zcoordinate_2 += float(zcoordinate_individual_2)
                line_count += 1
        return float(xcoordinate_2/line_count), float(ycoordinate_2/line_count), float(zcoordinate_2/line_count)
    else:
        pass
        


def file_3(file):
    if "clust3_lines" == file.name:
        with open(file) as infile_3:
            line_count = 0
            xcoordinate_3 = 0
            ycoordinate_3 = 0
            zcoordinate_3 = 0
            for tonka in infile_3:
                xcoordinate_individual_3 = tonka.strip().split(",")[1]
                ycoordinate_individual_3 = tonka.strip().split(",")[2]
                zcoordinate_individual_3 = tonka.strip().split(",")[3]
                xcoordinate_3 += float(xcoordinate_individual_3)
                ycoordinate_3 += float(ycoordinate_individual_3)
                zcoordinate_3 += float(zcoordinate_individual_3)
                line_count += 1
        return float(xcoordinate_3/line_count), float(ycoordinate_3/line_count), float(zcoordinate_3/line_count)
    else:
        pass



for folder_inner in sorted(folder.iterdir()):
    protein_name = folder_inner.name
    os.mkdir(f"/Users/moshe/Desktop/Research_Antigen/distance_clustering/compiled_distances_k_2/{protein_name}")
    for file in sorted(folder_inner.iterdir()):
        if file_1(file) != None:
            x_coordinate_1 = file_1(file)[0]
            y_coordinate_1 = file_1(file)[1]
            z_coordinate_1 = file_1(file)[2]
            with open (f"/Users/moshe/Desktop/Research_Antigen/distance_clustering/compiled_distances_k_2/{protein_name}/coordinates.txt", "a") as outfile_1:
                outfile_1.write(f"{x_coordinate_1},{y_coordinate_1},{z_coordinate_1},")
        if file_2(file) != None:
            x_coordinate_2 = file_2(file)[0]
            y_coordinate_2 = file_2(file)[1]
            z_coordinate_2 = file_2(file)[2]
            with open (f"/Users/moshe/Desktop/Research_Antigen/distance_clustering/compiled_distances_k_2/{protein_name}/coordinates.txt", "a") as outfile_2:
                outfile_2.write(f"{x_coordinate_2},{y_coordinate_2},{z_coordinate_2}")
        # if file_3(file) != None:
        #     x_coordinate_3 = file_3(file)[0]
        #     y_coordinate_3 = file_3(file)[1]
        #     z_coordinate_3 = file_3(file)[2]
        #     with open (f"/Users/moshe/Desktop/Research_Antigen/distance_clustering/compiled_distances_k_2/{protein_name}/coordinates.txt", "a") as outfile_3:
        #         outfile_3.write(f"{x_coordinate_3},{y_coordinate_3},{z_coordinate_3}")
            


        # file_2(file)
        #file_3(file)

                    