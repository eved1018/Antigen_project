delete all 
                        fetch 3TGT.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 97+98+99+102+122+123+124+276+278+279+280+281+282+365+366+367+368+371+427+430+431+432+455+456+457+458+460+461+465+466+467+469+474+476+480
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, 276+458+459+277+275+461+96+280+281+282+279+480+457+278 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color black, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi 473+429+367+366+365+371+432+368+369+425+122+124+455
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 107+75+73+53+246
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/results_images/images/3U7Y_3TGT_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit