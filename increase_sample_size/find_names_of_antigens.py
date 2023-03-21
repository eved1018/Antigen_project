# import urllib.request

# list_prot = []
# with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/increase_sample_size/all_new_names.csv") as infile:

#     for line in infile:
        
#         protein = line.strip()
#         list_prot.append(protein)
# new_list = set(list_prot)

# for item in new_list:
#     try:
#         link = f"https://www.rcsb.org/fasta/entry/{item}/display"

#         f = urllib.request.urlopen(link)
#         html_bytes = f.read()
#         html = html_bytes.decode("utf-8")
#         if html.count(">") ==3:
#             if "light" and "heavy" in html:
# #                 with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/increase_sample_size/fasta.txt", "a") as f:
# #                     f.write(str(html))
                    
# #     except:
# #         pass
# from pathlib import Path
with open('fixedfasta.txt') as f:
    f_out = None
    for line in f:
        if line.startswith('>'):      # we need a new output file
            title = line[:20]
            if f_out:
                f_out.close()
            f_out = open(f'{title}.txt', 'w')
        if f_out:
            f_out.write(line)
    if f_out:
        f_out.close()
# from pathlib import Path
# import os 
# all_files = Path("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/increase_sample_size/fasta/")
# for file in all_files.iterdir():
#     with open(file) as f1:
#         for line in f1:
#             if ("heavy") or ("Heavy") or ("light") or ("Light") or ("Antibody") or ("antibody") in line:
#                 try:
#                     os.remove(file)
#                 except:
#                     pass