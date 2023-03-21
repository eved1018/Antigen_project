delete all 
                        fetch 1IK0.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 11+14+15+101+104+105+107+108+109+110
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred, resi 15+101+112+107+111+105+104+110+11+62+65+98+94+7+109+108+23+22+19
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 38+88+86+87+85
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/results_images/images/3L5X_1IK0_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit