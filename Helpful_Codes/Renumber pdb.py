n=1
with open("/Users/moshe/Desktop/Research_Antigen/Helpful_Codes/unbound_pdb_3CVH.A_2QRI.A copy.txt") as file:
    for line in file:
        if int(line[22:28])==n: #if the residue number is the same as n...
            continue #move to the next line of the file
        else:
            n+=1
            line.replace(line[24:27],str(n))