
with open("/Users/moshe/Desktop/Research_Antigen/AlignmentWork/PerlScripts/3.68_map.csv") as map_file:
    map_text = str(map_file.read()).split("\n")
    one_letter_residue = ""
    out_str = ""
    list_fasta = []
    for line in map_text:
        try:
            parts = line.split(",")
            one_letter_residue = parts[2] 
            list_fasta.append(one_letter_residue)
        except IndexError:
            pass
    print(out_str.join(list_fasta))