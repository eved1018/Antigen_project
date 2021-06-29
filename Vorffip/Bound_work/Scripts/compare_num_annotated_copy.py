from pathlib import Path
annotated_unbound_folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/antigen_complexed/annotated_results_updated") 
vorffip_folder = Path("/Users/moshe/Desktop/Research_Antigen/Vorffip/Bound_work/Data/bound_vorffip_with_annotated_results")
for file in vorffip_folder.iterdir():
    
    with open(file, "r") as file1:
        data = file1.read()

        #get number of occurrences of the substring in the string
        occurrences = data.count(",1")
        protein_name = file.name[:4]
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
                    counter1 = Counter

                
                if counter1 != occurrences:
                    print(counter1, occurrences, protein_name)
                if counter1 == occurrences:
                    print("yessir")