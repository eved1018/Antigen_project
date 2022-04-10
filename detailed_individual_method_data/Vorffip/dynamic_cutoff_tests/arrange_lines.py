from pathlib import Path
file = Path("/Users/moshe/Desktop/Research_Antigen/Vorffip/compiled_f_score.txt")
file2 = Path("/Users/moshe/Desktop/Research_Antigen/Vorffip/unbound_compiled_f_score.txt")
with open (file) as bound_compiled:
    for line in bound_compiled:
        protein = line[:4]
        with open (file2) as unbound_compiled:
            for item in unbound_compiled:
                protein2 = item[:4]
                if protein2 == protein:
                    print(f"bound {line} \n unbound {item} \n")
                    with open("/Users/moshe/Desktop/Research_Antigen/Vorffip/arranged_lines_f_score_cutoff_22.txt", 'a') as f:
                        f.write(f"bound:   {line}\nunbound: {item} \n\n")
                            
                
            