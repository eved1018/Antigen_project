delete all 
                        fetch 1ERN.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 33+59+60+62+88+91+92+93+94+95+114+117+149+150+152+153+200+202+203+204+205
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred, resi 114+28+117+116+62+61+60+59+94+95+92+93+87+46+91+34
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 202+149+203+204+199+211+205+208+209+150+153+152
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/results_images/images/4Y5Y_1ERN_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit