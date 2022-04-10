from pathlib import Path
folder = Path("/Users/moshe/Desktop/Research_Antigen/Helpful_Codes/Unbound_pdbs_old")
for file in folder.iterdir():
    input_file = file
    with open(input_file, "r") as fp:
        lines = fp.readlines()
        new_lines = []
        for line in lines:
            #- Strip white spaces
            line = line.strip()
            if line.startswith("ATOM"):
                new_lines.append(line)
            if line.startswith("TER"):
                new_lines.append(line)

    output_file = f"/Users/moshe/Desktop/Research_Antigen/Helpful_Codes/unbound_pdbs/{file.name}"
    with open(output_file, "w") as fp:
        fp.write("\n".join(new_lines))