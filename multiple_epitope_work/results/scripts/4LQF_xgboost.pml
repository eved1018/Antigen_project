delete all 
                    fetch 3K7B.A
                    color blue 
                    set cartoon_transparency,0.75
                    select ann, resi 116+118+119+155+156+157+170+172+173+174+175
                    indicate bycalpha ann
                    create annotated, indicate
                    select pred, resi 114+116+112+175+118
                    indicate bycalpha pred
                    create pred_res, indicate

                    select pred_2, resi 101+103+102+106+107+111+105+104+98+99+143+141+183+147+146+185+132
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
                    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/multiple_epitope_work/results/4LQF/4LQF_xgboost.png,width=900, height=900,dpi = 350,ray=1
                    quit