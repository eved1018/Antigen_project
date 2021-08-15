from pathlib import Path

folder = Path("/Users/moshe/Desktop/Research_Antigen/eppic/boundData copy")
pdb_folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/bound_pdbs")
for folder_2 in folder.iterdir():
    for file in sorted(folder_2.iterdir()):
        protein_name_file = file.name.split("_")[0]
        for item in pdb_folder.iterdir():
            protein_name_item = item.name.split(".")[0]
            protein_chain = item.name.split(".")[1]
            if protein_name_file == protein_name_item:
                id = file.name.split("_")[1]
                chain_1 = file.name.split("_")[2]
                chain_2 = file.name.split("_")[3]
                specific_chain = file.name.split("_")[5][:1]
                if protein_chain == (chain_1 or chain_2):
                    if (protein_chain == specific_chain):
                        if ("_H" or "_L" in file.name):
                            with open('/Users/moshe/Desktop/Research_Antigen/eppic/write.txt') as infile:
                                contents = infile.read()
                                search_word = protein_name_file
                                if search_word not in contents:
                                    with open ("/Users/moshe/Desktop/Research_Antigen/eppic/write.txt", "a") as outfile:
                                        outfile.write(f"{file.name}\n") 
                                


                # if protein_chain == (chain_1 or chain_2) and (protein_chain == specific_chain) and (("H" or "L") == (chain_1 or chain_2)):
                #     print(file.name) 
                
            
