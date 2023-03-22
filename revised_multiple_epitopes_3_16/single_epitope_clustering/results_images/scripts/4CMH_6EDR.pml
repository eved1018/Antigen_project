delete all 
                        fetch 6EDR.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 75+76+79+107+108+110+111+112+113+114+115+116+117+118+119+148+150+194+195+196+198+199+201+233+234
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred, resi 114+115+112+62+163+176+189+49+61+165+164+167+56+182+54+97+45+50+44+46
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 249+248+212+211+141+280+241+127+252+284
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/images/4CMH_6EDR_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit