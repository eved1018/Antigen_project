from pathlib import Path
folder = Path("/Users/moshe/Desktop/Research_Antigen/ispred/ispred_unbound_annotated_results")
for input_file in folder.iterdir():

    with open(input_file, "r") as fp:
        lines = fp.readlines()
        new_lines = []
        for line in lines:
            #- Strip white spaces
            line = line.strip()
            first_half = line.strip().split(",")[0].split("_")[0]
            first_halfa = line.strip().split(",")[0].split("_")[1]
            first_half_complete = f"{first_half}_{first_halfa}"
            #print(first_half_complete)
            # first_half_2b = first_half_2.split(",")[0].split("_")[1]
            # first_half_2_complete = f"{first_half_2a}_{first_half_2b}"
            # print(first_half_2_complete)
            
            if line not in new_lines:
                str1 = ""
                if first_half_complete not in "\n".join(new_lines):
                    new_lines.append(line)
    #print("\n".join(new_lines))
    with open(f"//Users/moshe/Desktop/Research_Antigen/ispred/ispred_unbound_reformatted/{input_file.name}", "w") as fp:
        fp.write("\n".join(new_lines))