import requests
import urllib.request 
list1 = []
with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/increase_sample_size/new_list_of_unbound_added.txt") as infile:
    for line in infile:
        list1.append(line.strip())
print(len(list1))        

with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/increase_sample_size/outfile_unbound.txt") as infile2:
    for line2 in infile2:
        protein_name = line2.strip().split(",")[0]
        protein_unbound = line2.strip().split(",")[1]
        for item in list1:
            if protein_unbound == item:
                res = requests.get(f"https://files.rcsb.org/view/{protein_name}.pdb")
                res.raise_for_status()
                new_name = f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cv_unbound_sets/bound_pdbs/bound_{protein_name}.pdb"
                playFile = open(new_name, 'wb')
                for chunk in res.iter_content(100000):
                    playFile.write(chunk)
        try:
            list1.remove(protein_unbound)
        except:
            pass