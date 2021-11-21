file = "http://polyview.cchmc.org/cgi-bin/get_data.cgi?FN=595253&FT=3"
import os, sys
import requests

url_txt = f"{file}"
r_txt = requests.get(url_txt, allow_redirects=True)
open(f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/Spidder/output_pdb/pdb_file_download_test.txt", 'wb').write(r_txt.content) #fix path
