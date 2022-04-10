from pathlib import Path

print(str(Path.cwd()))
print("\n\n")

vorffip_file = Path("../../Vorffip/245_reformatted/vorffip_renumbered.txt")
# ppisp_file = Path("../../Data_Files/meta-ppisp-results/meta-ppisp-240-reformatted/meta-ppisp-results-comma.csv")

cutoff_file = Path("../../Data_Files/F_score_and_MCC/All_protein_cutoffs.csv")

vlist = []
clist = []

with open(vorffip_file) as vfile, open(cutoff_file) as cfile:
    for i, line in enumerate(cfile):
        if i == 0:
            continue
        # print(line.strip().split(",")[0])
        clist.append(line.strip().split(",")[0])

    for i, line in enumerate(vfile):
        if i == 0:
            continue
        # print(line.strip().split(",")[0][-6:])
        vlist.append(line.strip().split(",")[0][-6:])

vlist = list(set(vlist))
clist = list(set(clist))
print(f"Len cutoff {len(clist)}")
print(f"Len vorffip {len(vlist)}")

both_list = []

for c in clist:
    if c not in vlist:
        print(f"{c}\t(not in meta-ppisp)")
    else:   # it's in both
        both_list.append(c)
print()
for v in vlist:
    if v not in clist:
        print(f"{v}\t(not in cutoff)")

print()
print(f"Len both-list {len(both_list)}")