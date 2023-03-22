delete all 
                        fetch 6MEV.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 53+55+57+58+61+62+65+158+291+319+320+322+326
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, 249+271+215+212+211+43+255+250+252 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color black, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi 303+314+305+307+158+65+167+341+56+168+108+320+334+335+333
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 95+96+34+36+32+33+125+30
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/images/3LD8_6MEV_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit