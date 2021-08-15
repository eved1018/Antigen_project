def file_to_array(filename):
	with open(filename) as f:
		lines = [line.rstrip() for line in f]
	lines = [i.split(',') for i in lines]
	lines = [i[-3:] for i in lines]
	return lines
	
from pathlib import Path

folder = Path("/Users/moshe/Desktop/Research_Antigen/distance_clustering/averaged_results_annotated/")
for file in folder.iterdir():
	protein_name = file.name[:4]
	array = file_to_array(file)

	for i, r in enumerate(array):
		array[i] = [float(s) for s in r]
	sum = 0
	for i in range(len(array)):
		for j in range(i + 1,len(array)):
			dis_total = ((array[i][0]-array[j][0])**2) + ((array[i][1]-array[j][1])**2) +((array[i][2]-array[j][2])**2)
			# print(f'{i = }, {j = }')
			distance = float((dis_total)**.5)
			# with open (f"/Users/moshe/Desktop/Research_Antigen/distance_clustering/annotated_pairwise_distances/{protein_name}.txt", "a") as outfile:
			# 	outfile.write(f'{i = },{j = },{round(distance, 4)}\n')
	# N_original = len(array)
	# N_removed = len(array) -1 
	# N_pairs = int((N_original * N_removed) /2)
	
	# print(f'{sum = }, {protein_name}')


