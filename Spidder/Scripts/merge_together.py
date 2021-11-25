from pathlib import Path

#put file in here: format: "1_1A2Y.A_4KXI_LYS,0.1453"

unbound_folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Spidder/unboundData")



for file in unbound_folder.iterdir():
    with open(file) as unbound_file:
        
        #fix

        protein_name1 = file.name[12:16]
        protein_name2 = file.name[19:23]


        protein_name = f"{protein_name1}_{protein_name2}"
        print(protein_name)
        for line in unbound_file:
            unbound_res = line.split("_")[0]
            #fix path

            annotated_folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_data/Unbound_annotated_or_not_for_residues")
            
            for item in annotated_folder.iterdir():
                ann_protein_name = item.name[:9]
                if ann_protein_name == protein_name:
                    with open(item) as annotated_file:
                        for line1 in annotated_file:
                         
                            annotated_res_num = line1.split("_")[0]
                            if_annotated = line1.split(",")[2]
                            if annotated_res_num == unbound_res:


                                #fix path

                                with open(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Spidder/unbound_data_with_annotated/{protein_name}.txt", "a") as f:
                                    f.write(f"{line.strip()},{if_annotated.strip()}\n")



#fix path

next_folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Spidder/unbound_data_with_annotated/")
for input_file in next_folder.iterdir():

    with open(input_file, "r") as fp:
        lines = fp.readlines()
        new_lines = []
        for line in lines:
            #- Strip white spaces
            line = line.strip()
            first_half = line.strip().split(",")[0].split("_")[0]
            first_halfa = line.strip().split(",")[0].split("_")[1]
            first_half_complete = f"{first_half}_{first_halfa}"
            #print(first_half_complete)
            # first_half_2b = first_half_2.split(",")[0].split("_")[1]
            # first_half_2_complete = f"{first_half_2a}_{first_half_2b}"
            # print(first_half_2_complete)
            
            if line not in new_lines:
                str1 = ""
                if first_half_complete not in "\n".join(new_lines):
                    new_lines.append(line)
    #print("\n".join(new_lines))
    #fix path
    with open("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Spidder/unbound_data_with_annotated_and_duplicates_eliminated/", "w") as fp:
        fp.write("\n".join(new_lines))




from pathlib import Path
#fix paths
folder_2 = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Spidder/unbound_data_with_annotated/")
with open("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Spidder/unbound_data_complete.txt", "w") as outfile:

    for file in folder_2.iterdir():
    
        with open(file) as infile:
            contents = infile.read()
            outfile.write(f"{contents}")

            







annotated_unbound_folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/antigen_complexed/annotated_results_updated") 
results_folder = folder_2
for file in results_folder.iterdir():
    
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