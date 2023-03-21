delete all 
                        fetch 5DUT.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 68+110+112+113+115+119+137+138+145+167+168+169+252+255+257+258
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, 262+263+259+49+48+78 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color black, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi 139+138+215+60+66+94+221+68+145+53+137
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 115+116+113+162+75+74+206+121+120+123+252
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/results_images/images/5DUR_5DUT_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit