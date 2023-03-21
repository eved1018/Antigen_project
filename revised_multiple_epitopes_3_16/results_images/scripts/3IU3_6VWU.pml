delete all 
                        fetch 6VWU.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 139+140+142+143+144+160+161+163+165+167+176+179+180+181+183+185+186+194+195+258
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, 289+287+291+290 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color black, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi 274+270+280+281+268+282+279+278
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 258+200+165+181+180+183
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/results_images/images/3IU3_6VWU_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit