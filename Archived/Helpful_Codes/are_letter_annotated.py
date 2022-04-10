from pathlib import Path

folder= Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_annotated_results copy")


for file in folder.iterdir():
    with open (file) as annotated_results:
        for line in annotated_results:
            new_line = line.split(" ")
            
            for char in new_line[0]:
                if char.isalpha() == True:
                    print(file.name, new_line)