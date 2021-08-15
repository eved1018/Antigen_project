from pathlib import Path
annotated_unbound_folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/annotated_data/unbound_annotated_results") 
vorffip_folder = Path("/Users/moshe/Desktop/Research_Antigen/Meta-ppisp_copy/unbound_metappisp_annotated")
for file in vorffip_folder.iterdir():
    
    with open(file, "r") as file1:
        data = file1.read()

        #get number of occurrences of the substring in the string
        occurrences = data.count(",1")
        protein_name = file.name[:9]
        #print('Number of occurrences of the word :', occurrences, protein_name)
        for annotated_file in annotated_unbound_folder.iterdir():
            if protein_name in str(annotated_file.name):
                unbound_annotated_results_file = annotated_file
                with open(unbound_annotated_results_file) as file_unbound:
                    file_unbound = open(unbound_annotated_results_file,"r")
                
                    Counter = 0
                    Content = file_unbound.read()
                    CoList = Content.split("\n")

                    for i in CoList:
                        if i:
                            Counter += 1
                    mapped = Counter

                
                if mapped != occurrences:
                    print(str(mapped) + " are mapped, but " + str(occurrences) +" are actually there for "+ protein_name)
                # if mapped == occurrences:
                #     print(str(protein_name))