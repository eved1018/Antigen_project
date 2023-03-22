delete all 
                        fetch 2K3G.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 43+60+62+64+67+74+77+78+79+80+81+84+86+90+91+92+93+94+95+96+97
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred, resi 105+104+110+88+49+60+80+81+79+86+50+44+46+84+35+37+31
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 114+112+70+95+97+96+93
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/images/3NH7_2K3G_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit