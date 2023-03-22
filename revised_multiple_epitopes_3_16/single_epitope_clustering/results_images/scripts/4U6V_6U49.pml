delete all 
                        fetch 6U49.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 173+179+181+182+183+185+186+187+188+189+190+191+200+263+264+266
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred, resi 128+117+116+189+148+143+180+182+168+140+179+219+191+108+118+124
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 102+39+11+161+58+164+8+239+237+6+7+236+227+47+22
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/images/4U6V_6U49_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit