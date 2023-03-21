delete all 
                        fetch 4DVV.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 51+52+53+58+60+69+71+72+73+74+75+76+77+78+79+103+106+107+114
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred, resi 458+459+367+208+432+368+425+437+423+436+281+122+279+457+278+326
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 107+76+77+75+74+58+71+73+72+220+221+51+78+52+53+491
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/results_images/images/4H8W_4DVV_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit