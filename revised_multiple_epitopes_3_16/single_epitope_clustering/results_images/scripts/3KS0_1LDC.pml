delete all 
                        fetch 1LDC.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 30+63+64+65+66+67+68+69+70+72
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred, resi 43+95+97+96+45+51+87+52+91+90+20+22
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 63+77+74+65+73+67+66+72+68+69+30
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
                        color red, pred_res_2
                        set sphere_transparency,0,pred_res_2
                        set cartoon_transparency,1,pred_res_2

                    

                        remove resn hoh
                        hide (het)
                        zoom complete=1
                        bg_color white 
                        set ray_opaque_background, 1
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/images/3KS0_1LDC_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit