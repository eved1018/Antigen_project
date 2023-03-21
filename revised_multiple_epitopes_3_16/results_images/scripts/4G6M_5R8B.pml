delete all 
                        fetch 5R8B.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 72+73+74+75+81+83+84+86+89+90+92+94+96+97+98+115+116+117+118
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred, resi 129+74+73+120+21+35+22+32+25+131+24
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 103+63+149+64+65+5+4+6+7+86+92+150+151+46+53
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/results_images/images/4G6M_5R8B_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit