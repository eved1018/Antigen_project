from pathlib import Path
folder = Path("/Users/moshe/Desktop/Research_Antigen/Vorffip/Unbound_work/Data/unbound_pdbs_formatted_and_renumbered")
for input_file in folder.iterdir():
    with open(input_file, "r") as fp:
        lines = fp.readlines()
        new_lines = []
        for line in lines:
            #- Strip white spaces
            line = line.strip()
            if line not in new_lines:
                new_lines.append(line)
    print(input_file)
    with open(f"/Users/moshe/Desktop/Research_Antigen/Vorffip/Unbound_work/Data/unbound_pdbs_reformatted/{input_file.name}", "w") as fp:
        fp.write("\n".join(new_lines))