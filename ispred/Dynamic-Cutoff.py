from pathlib import Path
for file in Path("/home/aibodzin00/RajiResearch/ISPRED RSA test 2.0/ISPRED results").iterdir():
    with open(file, "r") as f:
        RSA=[]
        surface=[]
        for line in f.readlines()[17:]:
            fields=line.split("\t")
            RSA.append(fields[3])
    for residue in RSA:
        if float(residue)>0.04:
            surface.append(residue)
    dyn_cut=6.1*((len(surface))**0.3)
    print(str(file)[65:71],":", len(surface),dyn_cut)