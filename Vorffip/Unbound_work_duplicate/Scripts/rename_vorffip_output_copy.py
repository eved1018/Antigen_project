"""
Renames the output of Vorffip according to the input pdb file names
"""

from pathlib import Path
import shutil
 


# change, in/outfolder, 
# add _ before final .txt, ex: 1A2Y.A.txt_1_.txt
# change prot_name[:6]



infolder = Path("/Users/moshe/Desktop/Research_Antigen/Vorffip/Unbound_work/Data/Galaxy-History-Unnamed-history_(2)/datasets")
outfolder = Path("/Users/moshe/Desktop/Research_Antigen/Vorffip/Unbound_work/Data/Galaxy-History-Unnamed-history_(2)/datasets_new")

reference_list = []  # the names of the input files
data_list = [] # [[1a0f.A, 658], [1T6B.X, 785]]

# Go through all the inputs and make a reference list. 
for file in infolder.iterdir():
    if str(file.name).startswith("unbound_pdb_"): # id's the input files
        reference_list.append((file.name))

prot_name = ""

# Now go through all the files than need to be renamed
for file in infolder.iterdir():
    prot_name = ""
    if not str(file).endswith(".pdb") and not "unbound_pdb_" in str(file.name):
        continue
    # e.g. file.name is 'VORFFIP_on_data_658_878.pdb'
    num = str(file.name).split("_")[3] # the num that vorfipp assigned to the input file
    for item in reference_list: # e.g. item = '1a0f.A_658.txt'
        if num == str(item).split("_")[4]:
            prot_name = item[12:23]
            print(prot_name)   # e.g. prot_name = '1a0f.A' 
    
    if prot_name == "":   # if the protein wasn't found then prot_name will be ""
        #print(f"{file.name} NOT FOUND!")
        continue
    # 1A2Y.A_VORFFIP.pdb
    print(f"OLD: {file}\tNEW: {outfolder/prot_name.upper()}_VORFFIP.pdb") # print the change
    shutil.copy(file, f"{outfolder/prot_name.upper()}_VORFFIP.pdb") # perform the change
    
    
    # file.rename(f"{prot_name}_VORFFIP.pdb") # I don't think this is used

