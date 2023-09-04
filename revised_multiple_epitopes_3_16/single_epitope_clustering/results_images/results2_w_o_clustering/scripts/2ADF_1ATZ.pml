delete all 
                        fetch 1ATZ.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 975+976+977+978+979+981+982+983+1009+1012+1013+1016+1017+1022+1023
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, 981+983+1022+978+1023+1009+1021+1020+977+976+974+975+1013+1017+1016+1001 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color green, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi 981+983+1022+978+1023+1009+1021+1020+977+976+974+975+1013+1017+1016+1001
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 981+983+1022+978+1023+1009+1021+1020+977+976+974+975+1013+1017+1016+1001
                        indicate bycalpha pred_2
                        create pred_res_2, indicate
                        



                        show sphere, annotated
                        color pink, annotated
                        set sphere_transparency, 0.5,annotated
                        show sphere, pred_res
                        set sphere_scale,0.5,pred_res
                        color green, pred_res
                        set sphere_transparency,0,pred_res
                        set cartoon_transparency,1,pred_res


                        show sphere, pred_res_2
                        set sphere_scale,0.5,pred_res_2
                        color green, pred_res_2
                        set sphere_transparency,0,pred_res_2
                        set cartoon_transparency,1,pred_res_2

                    

                        remove resn hoh
                        hide (het)
                        zoom complete=1
                        bg_color white 
                        set ray_opaque_background, 1
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/results2_w_o_clustering/images/2ADF_1ATZ_dockpred.png,width=900, height=900,dpi = 350,ray=1
                        quit