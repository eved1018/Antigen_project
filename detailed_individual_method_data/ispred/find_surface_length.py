from pathlib import Path

ispred_file = Path("/Users/moshe/Downloads/5ed3a1eb-509f-477e-b5bd-5f9edf7684d6.txt")

def get_surface_length(ispred_file):
    with open(ispred_file) as ispred_text:
        for line in ispred_text:
            if line.startswith(" Surface length:"):
                surface_length_unadapted = line.split(":")[1]
                surfance_length = surface_length_unadapted.strip()
                return(surfance_length)
                
print(get_surface_length(ispred_file))
