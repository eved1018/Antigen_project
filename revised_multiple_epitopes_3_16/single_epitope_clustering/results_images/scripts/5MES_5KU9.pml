delete all 
                        fetch 5KU9.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 174+205+208+308+309+310+311+313+317+318+320+322
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, 317+215+205+320+319+318 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color black, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi 262+302+263+260+304+310+305+259+257+256+308+309+255
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 249+229+222+193+230+224
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/images/5MES_5KU9_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit