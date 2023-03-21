delete all 
                        fetch 1ALU.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 21+22+23+26+27+30+73+74+75+78+80+129+179+182+183+184
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred, resi 128+76+75+175+74+80+182+68+183+78+34+23+27+31+24+30
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 49+161+48+158+156+157+155+154+46+153
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/results_images/images/4O9H_1ALU_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit