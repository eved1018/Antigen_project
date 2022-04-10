from pathlib import Path
import requests
import urllib.request 

folder = Path("/Users/moshe/Desktop/Research Antigen/antigen_uncomplexed_pdbs/Resources/335_annotated_results")

for file in folder.iterdir():
    print(file.name)

    list1 = []
    with open(file) as myfile:
        for line in myfile: 
            print(line.strip())
            list1.append(line.strip())
            protein_name = list1[0][-4:]
            protein_nameI = list1[0][0:4]
            protein_Researcherschain = list1[0][5:6]
            
            try:
                res = requests.get(f"https://files.rcsb.org/view/{protein_name}.pdb")
                res.raise_for_status()
                new_name = f"{protein_nameI}.{protein_Researcherschain}_{protein_name}"
                playFile = open(new_name, 'wb')
                for chunk in res.iter_content(100000):
                    playFile.write(chunk)
                print(list1)
                print(protein_name)
                break
                print("hello")
            except:
                print("hello")