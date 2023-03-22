delete all 
                        fetch 1YG9.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 199+200+201+232+233+234+235+236+237+248+250+251+253+254+256+257+270+272
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, 266+201+239+195+283+241+292 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color black, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi 315+177+162+160+174+148+159+164+158+172+173+156+-1+157+-2+178+0+326
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 71+67+54+83+51+130
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/images/3LIZ_1YG9_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit