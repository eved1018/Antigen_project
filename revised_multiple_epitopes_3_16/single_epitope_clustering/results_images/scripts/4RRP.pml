delete all 
                        fetch 4RRP.1
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 17+18+19+20+21+22+23+24+27+28+30+32+35+67+68+69+70+73+77+78+79+80+82
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, 103+94+55+150+52+119 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color black, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi 15+17+70+71+73+80+68+69+79+32
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 38+9+8+5+156+157+4+6+155+3+2
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/images/4RRP_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit