delete all 
                        fetch 5OMZ.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 7+21+22+23+24+25+26+27+28+33+35+68+70+72+73+78+79+80+81+83
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred, resi 28+88+60+58+9+57+56+4+55+2+90+1+53
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 15+16+13+74+48+64+80+81+68+97+41+46
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/results_images/images/5KVD_5OMZ_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit