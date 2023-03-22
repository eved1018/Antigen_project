delete all 
                        fetch 5WTR.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 1+2+5+6+9+55+57+59+62+107+110+111+113+114+115+164+168+169+172+173+176
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred, resi 128+113+62+63+165+9+167+173+57+5+6+54+169+2+52+1+119
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 139+149+143+194+155+197+150+152+136+33
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/images/5H35_5WTR_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit