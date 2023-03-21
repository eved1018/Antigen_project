from pathlib import Path
folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cv_unbound_sets/bound_pdbs")

for file in folder.iterdir():
    with open (file) as infile:
        for line in infile:
            if line.startswith("COMPND") and "CHAIN:" in line:
                    print(line.strip().split(":")[1][1:2], file.name)
for file in folder.iterdir():
    with open (file) as in2:
        for line2 in in2:
            if line2.startswith("ATOM"):
                with open(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cv_unbound_sets/outbound_pdbs/{file.name}", "a") as f:
                    f.write(f"{line2.strip()}\n")
        with open(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cv_unbound_sets/outbound_pdbs/{file.name}", "a") as f1:
            f1.write("TER")
