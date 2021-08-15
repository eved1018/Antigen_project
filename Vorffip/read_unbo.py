from pathlib import Path

with open("/Users/moshe/Desktop/Research_Antigen/Vorffip/unbound_vorffip_resultscopy.txt") as unbound_results:
    for line in unbound_results:
        new_line = line.split(".")
        first_half = new_line[0]
        #print(line)
        new_line_2 = line.split("_")
        #rest = new_line_2[2]
        rest_2 = new_line_2[3]
        print(f"{first_half}_{rest_2}")
        with open(f"/Users/moshe/Desktop/Research_Antigen/Vorffip/adapted_pymol_vorffip_results_unbound.csv", 'a') as f:
            f.write(f"{first_half}_{rest_2}")



