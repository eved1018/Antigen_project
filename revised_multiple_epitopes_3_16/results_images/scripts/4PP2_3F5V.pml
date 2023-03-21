delete all 
                        fetch 3F5V.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 12+13+15+17+18+20+155+156+157+178+179+180+181+182+184+185+187+198+199+203
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, 15+13+199+198+156+157+180+154 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color black, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi 112+51+93+84+53+20+109+108
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 215+216+212+167+208+209+141+1+218+120+122+118
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/results_images/images/4PP2_3F5V_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit