delete all 
                    fetch 7KNA.A
                    color blue 
                    set cartoon_transparency,0.75
                    select ann, resi 122+123+124+125+128+130+131+173+175+262
                    indicate bycalpha ann
                    create annotated, indicate
                    select pred, resi 538+316+539+277+300+529+313+548+552+553+547+551+550+554+555+557+542+525+531+296+318+508+284
                    indicate bycalpha pred
                    create pred_res, indicate

                    select pred_2, resi 106+110+215+216+217+173+209+222+252+131
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
                    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/multiple_epitope_work/v2/results/4F15/4F15_xgboost.png,width=900, height=900,dpi = 350,ray=1
                   