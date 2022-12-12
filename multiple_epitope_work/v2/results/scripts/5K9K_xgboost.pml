delete all 
                    fetch 6WXB.A
                    color blue 
                    set cartoon_transparency,0.75
                    select ann, resi 18+38+318+344+345+347+348+349+350+363+364+367+370+371+374+375+377
                    indicate bycalpha ann
                    create annotated, indicate
                    select pred, resi 106+413+412+405+217+213+415+59+416+402+173+394+395+409+219+225+393+122+269
                    indicate bycalpha pred
                    create pred_res, indicate

                    select pred_2, resi 313+348+363+427+431+424+420+421+347+384+345+423+445+21+22+318+291
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
                    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/multiple_epitope_work/v2/results/5K9K/5K9K_xgboost.png,width=900, height=900,dpi = 350,ray=1
                   