from pathlib import Path
folder = Path("/Users/moshe/Desktop/Research_Antigen/ispred/ispred_annotated_results")
for input_file in folder.iterdir():
    with open(input_file, "r") as fp:
        lines = fp.readlines()
        new_lines = []
        for line in lines:
            #- Strip white spaces
            line = line.strip()
            
            if (line not in new_lines) and (len((line.split("_")[2].split(",")[0])) == 3):
                new_lines.append(line)
    print(input_file)
    with open(f"/Users/moshe/Desktop/Research_Antigen/ispred/ispred_formatted_results/{input_file.name}", "w") as fp:
        fp.write("\n".join(new_lines))