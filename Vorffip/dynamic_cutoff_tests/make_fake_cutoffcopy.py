from pathlib import Path
paired_folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/Pairs_Updated")
for folder in paired_folder.iterdir():

    for file in folder.iterdir():
        if str(file).endswith("_unbound_map.csv"):
            unbound_name = str(file.name)[:11]
            # print(unbound_name)
            # print(unbound_name)
        if str(file).endswith("_annotated.txt"):
            bound_annotated_results_file = file
        
            with open(file) as file_bound:
                file_bound = open(file,"r")
                Counter = 0
                Content = file_bound.read()
                CoList = Content.split("\n")
  
                for i in CoList:
                    if i:
                        Counter += 1
                cookie = Counter
                print(f"{file.name[-23:-19]},170,20,{cookie}")
                print(file.name[-23:-19], file.name)
                # with open(f"/Users/moshe/Desktop/Research_Antigen/Vorffip/pymol_fake_cutoffs_unbound.csv", 'a') as f:
                #     f.write(f"{file.name[-23:-19]},170,20,{cookie} \n")