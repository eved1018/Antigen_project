import xml.etree.ElementTree as ET
tree = ET.parse('/Users/avigayilroffe/Desktop/1a2y_dataDownload.xml')
root = tree.getroot()

f = open("/Users/avigayilroffe/Downloads/Antigen_project-carroll_antigen/Eppic/boundData/" + "1A2Y" + ".txt", 'w')

for residue in root.findall("./eppicAnalysis/interfaceClusters/interfaceCluster/interfaces/interface"):
    # get chain 1 and 2
    if residue[4].tag != "chain1":
        print("did not find chain1")
    if residue[5].tag != "chain2":
        print("did not find chain2")        
    
    chain1 = residue[4].text
    chain2 = residue[5].text
    #print("chain1 is", chain1, "chain2 is", chain2)
    
    for k in residue:
        #print(k.tag)
        if k.tag == 'residues':
            for i in k:
                #print(i[1].text)
                
                if i[7].tag == "pdbResidueNumber":
                    resNum = i[7].text
                else:
                    resNum = i[6].text
                    
                if i[1].tag == "side":
                    if i[1].text == 'false':
                        chain = chain1
                    else:
                        chain = chain2  
                        
                if i[8].tag == "residueType":
                    resTy = i[8].text
                else:
                    resTy = "notsure" 
                
                if i[4].tag == "bsaPercentage":
                    bsaP = i[4].text
                else:
                    bsaP = "nan"
                    # move the other variables up one
                    resNum = i[6].text
                    resTy = i[7].text                
                
                print(chain, resNum, resTy, bsaP)
    
                f.write(chain)
                f.write(",")
                f.write(resNum)
                f.write(",")
                f.write(resTy)
                f.write(",")
                f.write(bsaP)    
                f.write("\n")
