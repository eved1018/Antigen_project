import requests

url='https://ispred4.biocomp.unibo.it/ispred'
file = open('/Users/moshe/Desktop/Research_Antigen/AlignmentWork/PerlScripts/antigen_pdbs_copy/1A2Y.A.pdb','rb')
files={'files': open('/Users/moshe/Desktop/Research_Antigen/AlignmentWork/PerlScripts/antigen_pdbs_copy/1A2Y.A.pdb','rb')}
values={'Input PDB file' : '/Users/moshe/Desktop/Research_Antigen/AlignmentWork/PerlScripts/antigen_pdbs_copy/1A2Y.A.pdb' , 'PDB chain' : 'A'}
r=requests.post(url,files=files,data=values)



print(r.text)