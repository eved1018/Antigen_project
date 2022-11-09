delete all 
                    fetch 6CHX.A
                    color blue 
                    set cartoon_transparency,0.75
                    select ann, resi 134+135+136+137+153+155+158+159+160+187+189+190+192+193+194+196+219+225+226
                    indicate bycalpha ann
                    create annotated, indicate
                    select pred, resi 248+201+163+160+217+212+198+205+220+196+222+187+193+145+192+190
                    indicate bycalpha pred
                    create pred_res, indicate

                    select pred_2, resi 263+107+265+104+74+208+81+209+82+236+79+52
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
                    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/multiple_epitope_work/results/4HKX/4HKX_xgboost.png,width=900, height=900,dpi = 350,ray=1
                    quit