from pathlib import Path
folder = Path("/Users/moshe/Desktop/Research_Antigen/clustering/vorffip_fixed_lines/")

for file in folder.iterdir():


    input_file = file
    with open(input_file, "r") as fp:
        lines = fp.readlines()
        new_lines = []
        for line in lines:
            #- Strip white spaces
            line = line.strip()
            if line not in new_lines:
                new_lines.append(line)

    output_file = f"/Users/moshe/Desktop/Research_Antigen/clustering/vorffip_fixed_lines/{file.name}"
    with open(output_file, "w") as fp:
        fp.write("\n".join(new_lines))
    with open(file) as file_bound:
        file_bound = open(file,"r")
        Counter = 0
        Content = file_bound.read()
        CoList = Content.split("\n")

        for i in CoList:
            if i:
                Counter += 1
        cookie = Counter
        if cookie != 20:
            print(cookie, file.name)
    # with open (file) as file_bound:
    #     for line in file_bound:
    #         residue_name = line.split(",")[1]
    #         if residue_name.startswith("B"):
    #             print(file.name[:4])

