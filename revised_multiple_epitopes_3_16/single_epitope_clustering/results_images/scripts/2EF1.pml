delete all 
                        fetch 2EF1.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 120+121+135+139+141+142+202+203+205+236+237+239+241+272+273+274+275+276
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred, resi 76+163+176+189+49+61+75+74+64+165+170+164+81+83+69+45+46+47
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 289+275+249+274+139+138+212+283+250+290+284
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/images/2EF1_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit