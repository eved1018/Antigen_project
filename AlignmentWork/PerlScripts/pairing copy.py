from pathlib import Path
import os
import shutil
#can rename in front... for annotated_results, uncomplexed, antigen_pdbs
folder_annotated = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/antigen_complexed/annotated_results_updated_move_it")

for file in folder_annotated.iterdir():
    list1 = []
    if str(file).endswith(".DS_Store"):
        continue
    with open(file) as myfile:
        for line in myfile:
            list1.append(line.strip())
    bound_name = list1[-1][0:4]
    unbound_name = list1[-1][-4:]
    if unbound_name.strip() == "N/A":
        continue
    folder_unbound = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/antigen_uncomplexed_pdbs_copy_move_it")
    for file_unbound in folder_unbound.iterdir():
        if bound_name in str(file_unbound):
            folder_bound = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/antigen_complexed/antigen_pdbs_copy_move_it")
            for file_bound in folder_bound.iterdir():
                if bound_name in str(file_bound):
                    folder_unbound_map = Path("/Users/moshe/Desktop/Research_Antigen/AlignmentWork/unbound_map_files_move_it")
                    for file_unbound_map in folder_unbound_map.iterdir():
                        if bound_name in str(file_unbound_map):
                            folder_bound_map = Path("/Users/moshe/Desktop/Research_Antigen/AlignmentWork/Bound_map_files_move_it")
                            for file_bound_map in folder_bound_map.iterdir():
                                if bound_name in str(file_bound_map):
                                    os.mkdir(f"/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/Pairs_Updated/{bound_name}_{unbound_name}")
                                    source_file = file_unbound
                                    source_file1 = file_bound
                                    source_file2 = file
                                    source_file3 = file_bound_map
                                    source_file4 = file_unbound_map
                                    destination = Path(f"/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/Pairs_Updated/{bound_name}_{unbound_name}")
                                    shutil.move(str(source_file), str(destination))
                                    shutil.move(str(source_file1), str(destination))
                                    shutil.move(str(source_file2), str(destination))
                                    shutil.move(str(source_file3), str(destination))
                                    shutil.move(str(source_file4), str(destination))

                