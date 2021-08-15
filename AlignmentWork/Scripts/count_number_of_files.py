import os
from pathlib import Path

paired_folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/Pairs_Updated_copy")
for folder in paired_folder.iterdir():
    #with open(folder):
    list = os.listdir(folder) # dir is your directory path
    number_files = len(list)
    #print(number_files)
    if number_files != 10:
        print("no" + str(folder))
    if number_files == 10:
        #print(str(folder) +" has " + str(number_files) +" files")
        pass

    