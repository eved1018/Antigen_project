delete all 
                    fetch 6WXB.A
                    color blue 
                    set cartoon_transparency,0.75
                    select ann, resi 98+131+133+134+135+136+137+145+153+155+156+186+189+190+192+193+194+226+228
                    indicate bycalpha ann
                    create annotated, indicate
                    select pred, resi 201+77+75+175+156+80+157+223+155+169+96+193+192+135+137+255+132+126+124+131
                    indicate bycalpha pred
                    create pred_res, indicate

                    select pred_2, resi 276+277+273+62+48+59+55+50+47+278
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
                    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/multiple_epitope_work/v2/results/4FP8/4FP8_xgboost.png,width=900, height=900,dpi = 350,ray=1
                   