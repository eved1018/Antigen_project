delete all 
                        fetch 1BMW.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 32+34+39+40+41+43+65+67+68+75+76+77+78+79+80
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, 76+77+75+67+40+41+34 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color black, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi 10+62+49+9+80+79+87+85
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 74+71+72+5+3+91+1+22
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/images/2VXQ_1BMW_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit