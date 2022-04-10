from pathlib import Path

folder = Path("/Users/moshe/Desktop/Research_Antigen/clustering/alpha_carbon_coordinates")
for file in folder.iterdir():
    with open (file, "r+") as file_coordinated:
        for line in file_coordinated:
            for i in range(100):
                print(i, next(file_coordinated))
            if StopIteration:
                break
    break
    

            
        
            

            






dis_total = float(((x1-x2)**2) + ((y1-y2)**2) +((z1-z2)**2))
distance = float((dis_total)**.5)
print(distance)             
