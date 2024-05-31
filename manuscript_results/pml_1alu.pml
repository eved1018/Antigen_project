delete all 
                        fetch 1ALU.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 47+48+103+104+106+152+153+154+155+156+157+158+159+160
                        indicate bycalpha ann
                        create annotated, indicate


                        show sphere, annotated
                        color violet, annotated
                        set sphere_transparency, 0.5,annotated
                        show sphere, pred_res
                        set sphere_scale,0.5,pred_res
                        color green, pred_res
                        set sphere_transparency,0,pred_res
                        set cartoon_transparency,1,pred_res

                    

                        remove resn hoh
                        hide (het)
                        zoom complete=1
                        bg_color white 
                        set ray_opaque_background, 1
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/manuscript_results/4O9H_1ALU_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        