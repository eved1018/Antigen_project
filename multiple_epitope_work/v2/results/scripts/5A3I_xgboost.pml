delete all 
                    fetch 6PCX.A
                    color blue 
                    set cartoon_transparency,0.75
                    select ann, resi 81+82+123+124+125+126+128+130+131+147+155+172+173+174+175+262
                    indicate bycalpha ann
                    create annotated, indicate
                    select pred, resi 114+128+261+148+175+171+172+166+173+80+81+95+155+169+96+82+92+78+147+230+120+268
                    indicate bycalpha pred
                    create pred_res, indicate

                    select pred_2, resi 29+301+314+48+56+55+21+281+283+32
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
                    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/multiple_epitope_work/v2/results/5A3I/5A3I_xgboost.png,width=900, height=900,dpi = 350,ray=1
                   