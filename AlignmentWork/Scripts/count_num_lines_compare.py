from pathlib import Path

paired_folder = Path("/Users/moshe/Desktop/Research_Antigen/Updated_PDBs_and_Data/Pairs_Updated")
for folder in paired_folder.iterdir():

    for file in folder.iterdir():
        if "annotated_results_" in str(file):
            bound_annotated_results_file = file
            with open(file) as file_bound:
                file_bound = open(file,"r")
                Counter = 0
                Content = file_bound.read()
                CoList = Content.split("\n")
  
                for i in CoList:
                    if i:
                        Counter += 1
                cookie = Counter
        if "_annotated.txt" in str(file):
            unbound_name = str(Path(file))[-23:-14]
            unbound_annotated_results_file = file
            with open(file) as file_unbound:
                file_unbound = open(file,"r")
                
                Counter = 0
                Content = file_unbound.read()
                CoList = Content.split("\n")
  
                for i in CoList:
                    if i:
                        Counter += 1
                cookie1 = Counter
    if cookie1 != cookie:
        missing = cookie - cookie1
        if missing > 3:
            print(unbound_name, missing)

        # if int(cookie1 + 3) < int(cookie):
        #     print(cookie1, cookie, unbound_name, "below 3")
        # if int(cookie1 + 3) >= int(cookie):
        #     print(cookie1, cookie, unbound_name, "at 3")
        

