delete all 
                        fetch 1BOY.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 152+154+156+164+165+166+167+168+169+170+171+190+192+194+197+198+199+200+201+203+204
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred, resi 201+200+149+171+172+166+167+156+194+196+169+168+154+197+190+184+118+119
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 76+43+94+96+45+51+78+44+91+47+37
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/results_images/images/1JPS_1BOY_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit