delete all 
                        fetch 4OIE.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 232+235+236+237+239+240+253+256+257+258+260+261+262+264+265+289+293+294+314+315+351
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred, resi 201+229+188+189+228+206+238+210+234+181+235+232+192+186+233+190+191+254
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 288+315+352+344+350+294+292+290
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/images/4OII_4OIE_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit