from pathlib import Path

folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/antigen_complexed/annotated_results_updated")
for file in folder.iterdir():
    #print(file.name)
    protein_name = file.name[:4]
    print(protein_name)
    with open(file) as file_bound:
        file_bound = open(file,"r")
        Counter = 0
        Content = file_bound.read()
        CoList = Content.split("\n")

        for i in CoList:
            if i:
                Counter += 1
        cookie = Counter
        #print(f"{protein_name},170,15,{cookie}")
        with open(f"/Users/moshe/Desktop/Research_Antigen/clustering/fake_cutoffs_complete_bound.csv", 'a') as f:
            f.write(f"{protein_name},170,20,{cookie} \n")