#interate over links

link = "http://polyview.cchmc.org/cgi-bin/get_data.cgi?FN=595253&FT=3"
import os, sys
import requests

url_txt = f"{link}"
r_txt = requests.get(url_txt, allow_redirects=True)

open(f"#insert file path here, rename each file to correlate with the pdb name", 'wb').write(r_txt.content) #fix path
