predictor = "ispred"


from numpy import sqrt

mcc_tot = 0
i = 0
with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/{predictor}/summary_file.csv") as infile_1:
    for line_1 in infile_1:
        i = i+1
        protein = line_1.strip().split(",")[0]
        total_predicted = line_1.strip().split(",")[2]
        TP = int(line_1.strip().split(",")[3])
        with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cutoffs/unbound_cutoff.csv") as infile_2:
            for line_2 in infile_2:
                protein_1 = line_2.strip().split(",")[0]
                if protein == protein_1:
                    N = int(line_2.strip().split(",")[3])
                    threshhold = int(line_2.strip().split(",")[2])
                    with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/protein_size_length/size_distribution_unbound.csv") as infile_3:
                        for line_3 in infile_3:
                            protein_2 = line_3.strip().split(",")[0]
                            if protein_2 == protein_1:
                                total_res = int(line_3.strip().split(",")[1])
                                neg = total_res - threshhold
                                FP = int(total_predicted) - int(TP)
                                FN = N - TP
                                TN = neg - FN
                    

                                MCC_num = (TP * TN) - (FP * FN)
                                mcc_denom = sqrt((TP + FP) * (TP + FN)  * (TN + FP) * (TN + FN))
                                mcc = MCC_num / mcc_denom
                                mcc_tot = mcc_tot + mcc

                                
#do for zero_tp...

with open (f"/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/{predictor}/zero_tp_both_clusters.csv") as infile_a:
    for line_a in infile_a:
        i = i+1
        protein_a = line_a.strip().split(",")[0]
        total_predicted_a = int(line_a.strip().split(",")[2]) + int(line_a.strip().split(",")[5])
        TP_a = 0
        with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cutoffs/unbound_cutoff.csv") as infile_b:
            for line_b in infile_b:
                protein_b = line_b.strip().split(",")[0]
                if protein_a == protein_b:
                    N_a = int(line_b.strip().split(",")[3])
                    threshhold_a = int(line_b.strip().split(",")[2])
                    with open ("/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/protein_size_length/size_distribution_unbound.csv") as infile_c:
                        for line_c in infile_c:
                            protein_c = line_c.strip().split(",")[0]
                            if protein_c == protein_b:
                                total_res_a = int(line_c.strip().split(",")[1])
                                neg_a = total_res_a - threshhold_a
                                FP_a = int(total_predicted_a) - int(TP_a)
                                FN_a = N_a - TP_a
                                TN_a = neg_a - FN_a
                    

                                MCC_num_a = (TP_a * TN_a) - (FP_a * FN_a)
                                mcc_denom_a = sqrt((TP_a + FP_a) * (TP_a + FN_a)  * (TN_a + FP_a) * (TN_a + FN_a))
                                mcc_a = MCC_num_a / mcc_denom_a
                                mcc_tot = mcc_tot + mcc_a
print(mcc_tot/i)