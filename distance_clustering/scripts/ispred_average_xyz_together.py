from pathlib import Path
from numpy import mean


folder = Path("/Users/moshe/Desktop/Research_Antigen/distance_clustering/vorffip_bound_coordinates")
for folder_inner in folder.iterdir():
    print(folder_inner.name)
    for file in sorted(folder_inner.iterdir()):
        list_x = []
        list_y = []
        list_z = []
        with open (file) as infile:
            for line in infile:
                xcoordinate = line.strip().split(",")[3]
                ycoordinate = line.strip().split(",")[4]
                zcoordinate = line.strip().split(",")[5]
                list_x.append(float(xcoordinate))
                list_y.append(float(ycoordinate))
                list_z.append(float(zcoordinate))
        x_mean = round(mean(list_x),3)
        y_mean = round(mean(list_y),3)
        z_mean = round(mean(list_z),3)
        residue = file.name.split(".")[0]
        with open (f"/Users/moshe/Desktop/Research_Antigen/distance_clustering/vorffip_bound_averaged_results/{folder_inner.name}_avg_results_vorffip.txt", "a") as outfile:
            outfile.write(f"{residue}P.txt,{x_mean},{y_mean},{z_mean}\n")