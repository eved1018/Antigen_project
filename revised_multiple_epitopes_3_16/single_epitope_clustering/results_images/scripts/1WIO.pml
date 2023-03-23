delete all 
                        fetch 1WIO.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 3+94+96+120+122+123+124+125+126+127+140+141+142+162+163+164+165+166
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred, resi 275+261+248+304+299+201+200+202+203+207+204+205+181+142+143+180+197+178+352+151+224+337+336+134+295+297+137+278
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 60+48+59+43+40+45
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/images/1WIO_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit