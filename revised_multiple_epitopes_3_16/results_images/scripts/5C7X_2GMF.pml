delete all 
                        fetch 2GMF.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 11+12+13+15+16+17+19+20+21+23+24+83+86+87+89+112+114+115+116+117+119+120+123
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, 20+21+23+19+24 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color black, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi 115+117+116+48+87+50+121+120+123+124+119
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 16+17+13+10+11+4+6+7
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/results_images/images/5C7X_2GMF_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit