
# checking the lengths
def check(name, proteinName, chainName):
    if len(name) != 6:
        print("The name of the file did not have a length of four")    
    if len(proteinName) != 4:
        print("The protein name did not have a length of four")
    if len(chainName) != 1:
        print("The chain name did not have a length of one")

def makeFile(name):
    proteinName = name[:4] 
    chainName = name[-1]
    
    print(proteinName, chainName)
    check(name, proteinName, chainName)
    # Now, we have the protein name and the chain name we are looking for.
    
    # NEW file to write things out to called proteinName.chainName in the folder Annotated_chain
    f = open("/Users/avigayilroffe/Downloads/annotated_chain/" + str(proteinName) + "." + str(chainName) + ".txt", "w+")
    
    # open the protein's name's pdb file. 
    proteinPdb = "/Users/avigayilroffe/Downloads/antigen_complexed_pdbs/" + name + ".pdb"
    
    # go through the complex list
    for line in open(proteinPdb):
        # get one line. 
        row = line.split()
        # if there is something there and the first word is "ATOM"
        if row:
            if row[0] == 'ATOM':
                # check if the chain is the chainName that we are looking for
                chain = row[4]
                if chain == chainName:
                    # insert the entire line in the pdf to the new file
                    f.writelines(line)
    
    print("done")

def main():
    name = "1A14.A"
    makeFile(name)

main()