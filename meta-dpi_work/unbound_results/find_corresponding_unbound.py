from pathlib import Path
folder = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/unbound_pdbs_and_annotated_residue_data/Unbound_annotated_or_not_for_residues")
with open ("/Users/moshe/Desktop/Research_MetaDPI/MetaDPIv2-main/metadpi/input/unbound_cv/train_all_prot_CV_3.csv") as infile:
    for line in infile:
        protein = line.strip().split(",")[1]
        for file in folder.iterdir():
            if protein in file.name:
                print(protein)