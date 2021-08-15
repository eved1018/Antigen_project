#COLUMN 1: FIND NUMBER OF TOTAL RESIDUES IN UNBOUND CHAIN
#THEN _UNBOUNDNAME.CHAINNAME
#COLUMN 2: ANNOTATED (0 OR 1)


#go through the lines of the files and put it in a list
import requests

from pathlib import Path
folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated PDBs and Data/antigen_complexed/annotated_results_updated")

for file in folder.iterdir():
    print(file.name)
    if str(file).endswith(".DS_Store"):
        continue
        
    list1 = []
    with open(file) as myfile:
        for line in myfile:
            print(line.strip())
            list1.append(line.strip())

    protein_name = list1[-1][-4:]
    if protein_name.strip() == "N/A":
        continue

    protein_nameBound = list1[-1][0:4]
    protein_Researcherschain = list1[-1][5:6]
    print(protein_name)
    print(protein_nameBound)
    print(protein_Researcherschain)
    print("kkkkkk")
    res = requests.get(f"https://files.rcsb.org/view/{protein_name}.pdb")
    res.raise_for_status()

    text = res.text.split("\n")


    """
    Residue Annotated Name  
    1_6WXB.A 1 ASN
    2_6WXB.A 0
    3_6WXB.A 0
    4_6WXB.A 1
    5_6WXB.A 0
    .
    .
    .
    30_6WXB.A 1 ASN
    """
    #print(text)
    ##########get total # residues########
    prev_residue = "n/a"


    for line in text:
        if line.startswith("ATOM"):

            pdb_parts = [line[:6], line[6:11],
            line[12:16], line[17:20], line[21],
            line[22:26], line[30:38],
            line[38:46], line[46:54]]

            residue = pdb_parts[5]
            chain = pdb_parts[4]

            if residue == prev_residue:
                continue
            prev_residue = residue

            print(f"{residue}_{protein_name}.{chain}")

            #print(residue, chain)



        elif line.startswith("TER"):
            break
    

print(list1)


#List 1-150 residues in UNBOUND
#match/compare to bound researchers
#find annotated

#TO DO : go through the list of unbound pdb,
#subtodo: we get the website as a document
print("kkkkkk")


new_res_num = apply_offset(offset, bound_res_num)
if is_annotated(bound_res_num, file):     # checks if the current residue number is annotated
    # then we know 'new_res_num' is also annotated
    
    bound_residue_name = line.split()[4]
    unbound_protein_name = line.split()[5]
    if does_res_match_in_rcsb(bound_residue_name, unbound_protein_name):
        pass
        # DO STUFF
    res = requests.get(f"https://files.rcsb.org/view/{unbound_protein_name}.pdb")
    res.raise_for_status()

def apply_offset(offset, bound_res_num):
    return offset + bound_res_num

def is_annotated(bound_res_num, reference_file):
    with open(reference_file, "r") as file1: # CHANGE THIS!!!!!!
        for line in file1:
            res = line.split()[3] # the 4th column, which is the bound res number
            if res == bound_res_num:
                return True
    return False

def get_pdb_parts(line):
    pdb_parts = [line[:6].strip(), line[6:11].strip(),
            line[12:16].strip(), line[17:20].strip(), line[21].strip(),
            line[22:26].strip(), line[30:38].strip(),
            line[38:46].strip(), line[46:54].strip()]
    return pdb_parts

def does_res_match_in_rcsb(bound_residue_name, unbound_protein):
    request = requests.get(f"https://files.rcsb.org/view/{unbound_protein}.pdb")
    request.raise_for_status()

    text = request.text.split("\n")
        
    for line in text:
        if line.startswith("ATOM"):
            pdb_parts = get_pdb_parts(line)
            residue_letter_name = pdb_parts[3]

            if residue_letter_name == bound_residue_name:
                return True

                    
        elif line.startswith("TER"):
            return False
    return False
